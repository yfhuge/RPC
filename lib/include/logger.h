#pragma once

#include "lockQueue.h"
#include <string>
#include <thread>

enum LogLevel
{
    INFO,
    ERR,
};

class Logger
{
public:
    static Logger& GetInstance();
    void SetLevel(LogLevel level);
    void Log(const std::string& msg);
private:
    Logger();
    Logger(const Logger&) = delete;
    Logger(Logger&&) = delete;
    LogLevel m_level;
    LockQueue<std::string> m_queue;
};


#define LOG_INFO(logmsgformat, ...)   \
    do {    \
        Logger &logger = Logger::GetInstance();  \
        logger.SetLevel(INFO);  \
        char c[1024] = {0}; \
        sprintf(c, logmsgformat, ##__VA_ARGS__);  \
        logger.Log(c);   \
    } while(0)


#define LOG_ERR(logmsgformat, ...)   \
    do {    \
        Logger &logger = Logger::GetInstance();  \
        logger.SetLevel(ERR);  \
        char c[1024] = {0}; \
        sprintf(c, logmsgformat, ##__VA_ARGS__);  \
        logger.Log(c);   \
    } while(0)