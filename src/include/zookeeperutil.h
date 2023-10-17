#pragma once

#include <zookeeper/zookeeper.h>
#include <semaphore.h>
#include <string>
#include "mcrpcapplication.h"

// 封装ZK的客户端
class ZkClient
{
public:
    ZkClient();
    ~ZkClient();
    // zkclient启动连接zkserver
    void Start();
    // 在zkserver上根据指定的路径创建znode节点
    void Create(const char* path, const char* data, int dataLen, int state = 0);
    // 获取节点的值
    std::string GetDate(const char* path);
private:
    // zk的客户端句柄
    zhandle_t *m_zhandle;
};