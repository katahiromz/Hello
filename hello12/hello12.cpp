#include <windows.h>
#include <imm.h>
#include <stdio.h>

int main(void)
{
    HIMC hIMC;
    BOOL ret;
    DebugBreak();
    hIMC = ImmCreateContext();
    printf("hIMC: %p\n", hIMC);
    ret = ImmDestroyContext(hIMC);
    printf("ret: %d\n", ret);
    return 0;
}
