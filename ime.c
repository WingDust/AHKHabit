
#include <windows.h>
#include <imm.h>

int main() {
    HWND hwnd = GetForegroundWindow();
    HIMC himc = ImmGetContext(hwnd);
    if (himc) {
        if (ImmGetOpenStatus(himc)) {
            ImmSetOpenStatus(himc, FALSE);
        } else {
            ImmSetOpenStatus(himc, TRUE);
        }
        ImmReleaseContext(hwnd, himc);
    }
    return 0;
}
