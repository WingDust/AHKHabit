#include <iostream>
#include <windows.h>
// #include <imm


#include <imm.h>
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "imm32.lib")

using namespace std;

int main()
{
    HIMC hIMC = ImmGetContext(GetForegroundWindow());
    if (hIMC)
    {
        ImmSetOpenStatus(hIMC, !ImmGetOpenStatus(hIMC));
        ImmReleaseContext(GetForegroundWindow(), hIMC);
    }
    return 0;
}
// int main(int argc, char** argv)
// {
//     cout << "hello world!" << endl;
//     return 0;
// }
