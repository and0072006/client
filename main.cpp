#include "TCPClient.h"
#include <future>
#include "../conf/ConfigReader.h"
#include "../log/Logger.h"

int Logger::m_logLevel = 1;
int Logger::m_allowLogging = 0;
ILoggerImpl* Logger::m_pLImpl = NULL;

int main(int argc, char** argv) 
{
    LoggerPtr pLog = std::make_shared<Logger>();
    ConfigReaderPtr pConf = std::make_shared<ConfigReader>(new TxtConfigReader());
    Parameters param;
    if (!pConf->ReadConfig("/home/anvecher/client/conf/config.txt",&param))
    {
        LOGE("Couldn't read config file\n");
        return 0;
    }
    Logger::init(&param);

    std::promise<void> promiseClient;
    auto pClient = std::make_shared<TCPClient>( param.port, param.ipAddr);
    auto TCPClientThread = std::async(launch::async,
                                      &TCPClient::StartClient,
                                      pClient,
                                      std::move(promiseClient)); 
    TCPClientThread.wait();
    TCPClientThread.get();

    return 0;
}

