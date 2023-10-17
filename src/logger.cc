#include "logger.h"
#include <time.h>
#include <iostream>

Logger::Logger()
{
    std::thread WriteLog([&](){
        while (1)
        {
            time_t now = time(nullptr);
            tm *nowtm = localtime(&now);
            char file_name[128] = {0};
            sprintf(file_name, "%d-%d-%d-log.txt", nowtm->tm_year + 1900, nowtm->tm_mon + 1, nowtm->tm_mday);
            FILE *fp = fopen(file_name, "a+");
            if (fp == nullptr)
            {
                std::cout << file_name << " open error!" << std::endl;
                exit(EXIT_FAILURE);
            }

            std::string msg = m_queue.pop();
            char format[128] = {0};
            sprintf(format, "%d-%d-%d %02d:%02d:%02d [%s] => ", nowtm->tm_year + 1900, nowtm->tm_mon + 1, nowtm->tm_mday, 
                                                nowtm->tm_hour, nowtm->tm_min, nowtm->tm_sec, (m_level == INFO?"INFO":"ERROR"));
            msg.insert(0, format);
            msg.append("\n");
            fputs(msg.c_str(), fp);
            fclose(fp);
        }
    });
    WriteLog.detach();
}

Logger& Logger::GetInstance()
{
    static Logger instance;
    return instance;
}

void Logger::SetLevel(LogLevel level)
{
    m_level = level;
}
void Logger::Log(const std::string& msg)
{
    m_queue.push(msg);
}
