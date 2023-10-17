#include "zookeeperutil.h"

// 全局的watcher监视器  zkserver给zkclient的通知
void GlobalWatcher(zhandle_t *zh, int type, 
        int state, const char *path,void *watcherCtx)
{
    if (type == ZOO_SESSION_EVENT)
    {
        // 回调消息类型是和会话相关的消息类型
        if (state == ZOO_CONNECTED_STATE)
        {
            // zkclient和zkserver连接成功
            sem_t *m_sem = (sem_t*)zoo_get_context(zh);
            sem_post(m_sem);
        }
    }
}

ZkClient::ZkClient() : m_zhandle(nullptr)
{ }

ZkClient::~ZkClient()
{
    if (m_zhandle != nullptr)
    {
        zookeeper_close(m_zhandle); // 关闭句柄，释放资源
    }
}

// zkclient启动连接zkserver
void ZkClient::Start()
{
    std::string ip = McrpcApplication::GetInstance().GetConfig().Load("zookeeperip");
    std::string port = McrpcApplication::GetInstance().GetConfig().Load("zookeeperport");
    std::string str = ip + ":" + port;

    m_zhandle = zookeeper_init(str.c_str(), GlobalWatcher, 30000, nullptr, nullptr, 0);
    if (m_zhandle == nullptr)
    {
        std::cerr << "zookeeper_init error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    sem_t m_sem;
    sem_init(&m_sem, 0, 0);
    zoo_set_context(m_zhandle, &m_sem);

    sem_wait(&m_sem);
    std::cout << "zookeeper_init success!" << std::endl;
}

// 在zkserver上根据指定的路径创建znode节点
void ZkClient::Create(const char* path, const char* data, int dataLen, int state)
{
    char path_buf[128] = {0};
    int bufLen = sizeof(path_buf);
    int flag;

    // 先判断path表示的znode节点是否存在，如果存在，就不用重复创建
    flag = zoo_exists(m_zhandle, path, 0, nullptr);
    if (flag == ZNONODE)
    {
        // 表示这个节点不存在，则创建这个节点
        flag = zoo_create(m_zhandle, path, data, dataLen, &ZOO_OPEN_ACL_UNSAFE, state, path_buf, bufLen);
        if (flag == ZOK)
        {
            std::cout << "znode create success... path:" << path << std::endl;
        }
        else 
        {
            std::cout << "flag:" << flag << std::endl;
            std::cout << "znode create failed... path:" << path << std::endl;
            exit(EXIT_FAILURE);
        }
    }
}

// 获取节点的值
std::string ZkClient::GetDate(const char* path)
{
    char buf[64] = {0};
    int bufLen = sizeof(buf);
    int flag = zoo_get(m_zhandle, path, 0, buf, &bufLen, nullptr);
    if (flag == ZOK)
    {
        return std::string(buf);
    }
    return "";
}   