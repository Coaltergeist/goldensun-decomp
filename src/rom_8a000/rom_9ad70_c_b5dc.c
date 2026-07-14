typedef signed short s16;
typedef unsigned short u16;
typedef unsigned char u8;
typedef unsigned int u32;

extern u8 gState[];
extern void Func_809b450(u8 *actor);
extern int __modsi3(int value, int divisor);

void Func_809b5dc(u8 *argument)
{
    register u8 *actor asm("r5") = argument;
    register u8 *mode_ptr asm("r3") = actor + 0x64;
    register int zero asm("r1") = 0;
    register int mode asm("r6") = *(s16 *)(mode_ptr + zero);
    register u16 *counter asm("r1") = (u16 *)(actor + 0x66);
    register u32 raw_counter asm("r3") = *counter;
    register int old_counter asm("r0");
    register u8 *state asm("r3");
    register int state_offset asm("r2");
    register int state_value asm("r2");
    register int one asm("r3");

    *counter = raw_counter + 1;
    raw_counter <<= 16;
    old_counter = (int)raw_counter >> 16;
    state_offset = 0xed;
    state = gState;
    state_offset <<= 1;
    state += state_offset;
    zero = 0;
    state_value = *(s16 *)(state + zero);
    __asm__ volatile ("ldr %0, .Lfunc_809b5dc_one" : "=r" (one));
    if (state_value == one) {
        if (__modsi3(old_counter, 7) == 0)
            Func_809b450(actor);
    } else {
        if (__modsi3(old_counter, 5) == 0)
            Func_809b450(actor);
    }
    if (mode == 1)
        *(u16 *)(actor + 6) += 0xc00;
}

__asm__(".align 2, 0\n.Lfunc_809b5dc_one:\n.word 1");
