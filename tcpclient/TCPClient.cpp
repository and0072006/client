#include "TCPClient.h"

TCPClient::TCPClient(int port, std::string addr):
                m_addr(addr)
              , m_port(port)
              , m_run(true)
              , m_sock(-1)
{}

TCPClient::~TCPClient()
{
    StopClient();
}

void TCPClient::StopClient()
{
    if (m_run)
    {
        m_run = false;
        close(m_sock);
        LOGI("Client has been stoped.") << "\n";
    }
}

void TCPClient::StartClient(std::promise<void> promise)
{
    promise.set_value();
    struct sockaddr_in serv_addr;
    if((m_sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        LOGE("Could not create socket ") << "\n";
        return;
    }

    memset(&serv_addr, '0', sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(m_port);
    serv_addr.sin_addr.s_addr = inet_addr(m_addr.c_str());

    if( connect(m_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
    {
       printf("\n Error : Connect Failed \n");
       return;
    }

    LOGI("Session has been established: id ") << m_sock
        << ", ip addres " << m_addr
        << ", port " << m_port << "\n";

    handle();
}

void TCPClient::handle()
{
    T_MSG msg;
    char sVal[11];
    while (std::cin.getline(sVal, 10))
    {
        try{
            msg.value = std::stoi(sVal);
            msg.msg[0] = '\0';
            send(m_sock, (void*)&msg, sizeof(T_MSG), 0);

            read(m_sock, (void*)&msg, sizeof(T_MSG));

            printf("\n %d \n", msg.value);
        }
        catch(std::invalid_argument ex)
        {
            if(std::string(sVal) == "bye")
            {
                msg.value = 0;
                strcpy(msg.msg, sVal);
                send(m_sock, (void*)&msg, sizeof(T_MSG), 0);
                StopClient();
                break;
            }
        }
    }
}
