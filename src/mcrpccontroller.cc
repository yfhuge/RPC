#include "mcrpccontroller.h"

McrpcController::McrpcController()
{
    m_failed = false;
    errtext = "";
}

void McrpcController::Reset()
{
    m_failed = false;
    errtext = "";
}

bool McrpcController::Failed() const
{
    return m_failed;
}

std::string McrpcController::ErrorText() const
{
    return errtext;
}

void McrpcController::SetFailed(const std::string& reason)
{
    m_failed = true;
    errtext = reason;
}

void McrpcController::StartCancel() { }
bool McrpcController::IsCanceled() const { return false; }
void McrpcController::NotifyOnCancel(google::protobuf::Closure* callback) {}