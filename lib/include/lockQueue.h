#pragma once

#include <queue>
#include <mutex>
#include <condition_variable>

template<typename T>
class LockQueue
{
public:
    void push(const T& val)
    {
        std::lock_guard<std::mutex> lock(m_mutex);
        m_queue.push(val);
    }
    T pop()
    {
        std::unique_lock<std::mutex> lock(m_mutex);
        while (m_queue.empty())
        {
            m_condvariable.wait(lock);
        }
        T data = m_queue.front();
        m_queue.pop();
        return data;
    }
private:
    std::queue<T> m_queue;
    std::mutex m_mutex;
    std::condition_variable m_condvariable;
};