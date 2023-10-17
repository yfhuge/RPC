#pragma once

#include "mcrpcconfig.h"
#include "mcrpcchannel.h"
#include "mcrpcprovide.h"
#include "mcrpccontroller.h"

// 基础架构
class McrpcApplication
{
public:
    // 单例模式
    static McrpcApplication& GetInstance();
    // 初始化
    static void init(int argc, char** argv);
    McrpcConfig& GetConfig();
private:
    static McrpcConfig m_config;
    McrpcApplication() {}
    McrpcApplication(const McrpcApplication&) = delete;
    McrpcApplication(McrpcApplication&&) = delete;
    ~McrpcApplication() {}
};