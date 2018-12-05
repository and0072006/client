#pragma once

#include <string>
#include "Util.h"


using namespace std;

class IConfigReader
{
public:
    virtual ~IConfigReader() = default;

    virtual bool ReadConfig(const string& file, Parameters* pParam) = 0;
};
