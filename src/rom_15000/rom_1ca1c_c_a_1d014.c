#include "dma.h"

extern unsigned char gState[];
extern unsigned char *galloc_ewram(int slot, unsigned int size);
extern void StartTask(void (*task)(void), int priority);
extern void Func_801cf48(void);

void Func_801d014(void)
{
    unsigned char *memory = galloc_ewram(0x14, 0xc5 << 3);
    register unsigned char *state asm("r1");
    register unsigned offset asm("r0");
    register unsigned char *address asm("r3");
    register unsigned char value asm("r2");
    register unsigned char *destination asm("r2");
    register unsigned destinationOffset asm("r3");
    register void (*task)(void) asm("r0");
    register int priority asm("r1");

    DMA3_CLEAR(memory, 0xc5 << 3);
    state = gState;
    asm volatile("" : "+r"(state));
    offset = 0x205;
    address = state + offset;
    offset = 0x594;
    value = *address;
    address = memory + offset;
    *address = value;
    memory[0x599] = 0x18;
    offset = 0x206;
    address = state + offset;
    offset = 0x595;
    value = *address;
    address = memory + offset;
    *address = value;
    destinationOffset = 0x59a;
    asm volatile("" : "+r"(destinationOffset));
    offset = 0x83;
    asm volatile("" : "+r"(offset));
    destination = memory + destinationOffset;
    asm volatile("" : "+r"(destination));
    offset <<= 2;
    asm volatile("" : "+r"(offset));
    *destination = 0xf;
    address = state + offset;
    offset = 0x596;
    value = *address;
    address = memory + offset;
    *address = value;
    memory[0x59b] = 3;
    offset = 0x20a;
    address = state + offset;
    offset = 0x597;
    value = *address;
    address = memory + offset;
    *address = value;
    memory[0x59c] = 2;
    state += 0x22a;
    value = *state;
    memory[0x598] = value;
    memory[0x59d] = 2;
    priority = 0xc8;
    priority <<= 4;
    asm volatile("" : "+r"(priority));
    task = Func_801cf48;
    StartTask(task, priority);
}
