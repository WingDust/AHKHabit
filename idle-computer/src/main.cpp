#include <windows.h>
#include <iostream>

int main(int argc, char *argv[])
{
  LASTINPUTINFO * lastInputInfo = new LASTINPUTINFO();
  lastInputInfo->cbSize = sizeof(*lastInputInfo);
  GetLastInputInfo(lastInputInfo);
  std::cout << GetTickCount() - lastInputInfo->dwTime << std::endl;
  return 0;
}
