#include "dma.h"

extern void *galloc_ewram(int slot, unsigned int size);
extern void Func_80907b0(int a);
extern void StartTask(void (*task)(void), int priority);
extern void WaitFrames(int frames);
extern void Task_Transition300(void);

void Func_8090824(int param_1)
{
    unsigned char *memory = (unsigned char *)galloc_ewram(0x1f, 0xa8 << 3);

    DMA3_CLEAR(memory, 0xa8 << 3);
    Func_80907b0(0);

    *(unsigned short *)(memory + (0xa5 << 3)) = param_1;
    *(unsigned short *)(memory + 0x52a) = 0;

    StartTask(Task_Transition300, 0xc8 << 4);
    WaitFrames(0x78);
}
