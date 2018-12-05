#pragma once

#include <memory>
#include <vector>
#include <condition_variable>
#include "Util.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <thread>
#include <unistd.h>
#include "../log/Logger.h"
#include <netdb.h>
#include <stdio.h>
#include <string>
#include <stdlib.h>
#include <errno.h>
#include <arpa/inet.h>
#include <iostream>
#include <stdexcept>
#include <future>

class TCPClient
{
public:
    TCPClient(int port, std::string addr);
    ~TCPClient();
    void handle();
    void StartClient(std::promise<void> promise);
    void StopClient();
private:
    std::string m_addr;
    int m_port;
    bool m_run;
    int m_sock;
};

typedef shared_ptr<TCPClient> TCPClientPtr;
