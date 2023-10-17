#include "mcrpcconfig.h"
#include <iostream>

void RemoveBlank(std::string& s)
{
    int idx = s.find_first_not_of(' ');
    if (idx != -1)
    {
        s = s.substr(idx);
    }
    idx = s.find_last_not_of(' ');
    if (idx != -1)
    {
        s = s.substr(0, idx + 1);
    }
}

void McrpcConfig::LoadConfig(const char* config_file)
{
    FILE* fp = fopen(config_file, "r");
    while (!feof(fp))
    {
        char buf[512] = {0};
        fgets(buf, 512, fp);
        std::string str_buf(buf);
        
        // 如果该行为注释或都是空格
        if (str_buf[0] == '#' || str_buf.empty())
        {
            continue;
        }

        RemoveBlank(str_buf);
        int idx = str_buf.find('=');
        if (idx == -1)
        {
            std::cout << config_file << " is note invaild" << std::endl;
            exit(EXIT_FAILURE);
        }
        std::string key = str_buf.substr(0, idx);
        std::string value;
        int endIdx = str_buf.find('\n');
        if (endIdx == -1)
        {
            value = str_buf.substr(idx + 1);
        }
        else 
        {
            value = str_buf.substr(idx + 1, endIdx - idx - 1);
        }
        RemoveBlank(key);
        RemoveBlank(value);
        m_config.insert({key, value});
    }
}

std::string McrpcConfig::Load(const std::string& key)
{
    if (!m_config.count(key))
    {
        return "";
    }
    return m_config[key];
}