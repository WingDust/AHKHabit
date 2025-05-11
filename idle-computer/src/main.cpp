// #include <windows.h>
// #include <iostream>

// int main(int argc, char *argv[])
// {
//   LASTINPUTINFO * lastInputInfo = new LASTINPUTINFO();
//   lastInputInfo->cbSize = sizeof(*lastInputInfo);
//   GetLastInputInfo(lastInputInfo);
//   std::cout << GetTickCount() - lastInputInfo->dwTime << std::endl;
//   return 0;
// }


#include <windows.h>

// 导出 idle-time 函数
extern "C" __declspec(dllexport) DWORD idle_time()
{
    LASTINPUTINFO lastInputInfo;
    lastInputInfo.cbSize = sizeof(lastInputInfo);

    // 获取最后一次输入的时间
    if (GetLastInputInfo(&lastInputInfo))
    {
        // 计算空闲时间（当前时间 - 最后一次输入时间）
        return GetTickCount() - lastInputInfo.dwTime;
    }

    // 如果获取失败，返回 0
    return 0;
}

