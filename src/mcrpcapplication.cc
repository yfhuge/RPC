#include "mcrpcapplication.h"
#include <iostream>
#include <unistd.h>

McrpcConfig McrpcApplication::m_config;

void ShowArgsHelp()
{
    std::cout << "format: command -i <config_file>" << std::endl;
}

// 单例模式
McrpcApplication& McrpcApplication::GetInstance()
{
    static McrpcApplication instance;
    return instance;
}

// 初始化
void McrpcApplication::init(int argc, char** argv)
{
    if (argc < 2)
    {
        ShowArgsHelp();
        exit(EXIT_FAILURE);
    }

    int c = 0;
    std::string config_file;
    while ((c = getopt(argc, argv, "i:")) != -1)
    {
        switch (c)
        {
        case 'i':
            config_file = optarg;
            break;
        case '?':   // 当前输入了无法识别的字符
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        case ':':   // 缺少参数
            ShowArgsHelp();
            exit(EXIT_FAILURE);
        default:
            break;
        }
    }

    // 识别配置文件
    m_config.LoadConfig(config_file.c_str());
}


McrpcConfig& McrpcApplication::GetConfig()
{
    return m_config;
}