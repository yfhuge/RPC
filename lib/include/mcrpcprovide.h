#pragma once

#include "user.pb.h"
#include <memory>
#include <muduo/net/TcpServer.h>
#include <muduo/net/EventLoop.h>
#include <muduo/net/InetAddress.h>
#include "mcrpcapplication.h"
#include <functional>
#include <string>
#include <unordered_map>
#include "mcrpcheader.pb.h"

// 网络服务提供者
class McrpcProvide
{
public:
    // 发布一个节点
    void NotifyService(::google::protobuf::Service *);
    // 启动一个节点
    void Run();
private:
    // Service服务类型信息
    struct ServiceInfo
    {
        google::protobuf::Service* m_service;   // 保存的服务对象
        std::unordered_map<std::string, const google::protobuf::MethodDescriptor*> m_methodMap;  // 保存服务方法和name的映射
    };

    // 存储注册成功的服务对象和服务的所有信息
    std::unordered_map<std::string, ServiceInfo> m_serviceMap;

    // 组合了EventLoop
    muduo::net::EventLoop m_eventLoop;
    // 连接回调函数
    void OnConnection(const muduo::net::TcpConnectionPtr&);
    // 读写消息回调函数
    void OnMessage(const muduo::net::TcpConnectionPtr&, muduo::net::Buffer*, muduo::Timestamp);
    // Clorse的回调，用于序列化rpc和网络发送
    void SendRpcResponse(const muduo::net::TcpConnectionPtr&, google::protobuf::Message*);
};