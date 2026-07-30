/* Cluster Func_8090824..Func_8090824 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
#include "dma.h"
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_80907b0(int a0);
extern void StartTask(void (*task)(void), unsigned int priority);
extern void WaitFrames(unsigned int nframes);
extern void Task_Transition300(void);

void Func_8090824(unsigned int arg0)
{
    void *p;

    p = galloc_ewram(0x1f, 0xa8 << 3);
    DMA3_CLEAR(p, 0xa8 << 3);
    Func_80907b0(0);
    *(unsigned short *)((unsigned int)p + (0xa5 << 3)) = arg0;
    *(unsigned short *)((unsigned int)p + 0x52a) = 0;
    StartTask(Task_Transition300, 0xc8 << 4);
    WaitFrames(0x78);
}
