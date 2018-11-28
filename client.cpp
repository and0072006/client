#include <sys/socket.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdio.h>
#include <string.h>
#include <string>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <arpa/inet.h>
#include <iostream>
#include <stdexcept>

struct T_MSG
{
    int value;
    char msg[5];
};

 
int main(int argc, char *argv[]) {
    int sockfd = 0;
    T_MSG msg;
    struct sockaddr_in serv_addr;
 
    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        printf("\n Error : Could not create socket \n");
        return 1;
    }
 
    memset(&serv_addr, '0', sizeof(serv_addr));
 
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(4400);
    std::string str = "127.0.0.1";
    serv_addr.sin_addr.s_addr = inet_addr(str.c_str());
 
    if( connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
    {
       printf("\n Error : Connect Failed \n");
       return 1;
    }

    char sVal[11];
    while (std::cin.getline(sVal, 10))
    {
        try{
            msg.value = std::stoi(sVal);
            msg.msg[0] = '\0'; 
            send(sockfd, (void*)&msg, sizeof(T_MSG), 0);

            read(sockfd, (void*)&msg, sizeof(T_MSG));

            printf("\n %d \n", msg.value);
        }
        catch(std::invalid_argument ex)
        {
            if(std::string(sVal) == "bye")
            {
                msg.value = 0;
                strcpy(msg.msg, sVal);
                send(sockfd, (void*)&msg, sizeof(T_MSG), 0);
                break;
            }
        }
    }    
    close(sockfd);
    return 0;
}

