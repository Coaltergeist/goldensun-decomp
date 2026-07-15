typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u8 ewram_2002240[];

u32 Func_8005fcc(void)
{
    register u8 *state asm("r7") = ewram_2002240;
    register u32 *reg asm("r6") = (u32 *)0x04000128;
    register u32 siocnt asm("r5");
    register u32 masked asm("r4");
    register u32 flag asm("r3");
    register u32 value asm("r2");
    register u32 result asm("r0");
    u32 four;

    siocnt = *(volatile u32 *)reg;
    if (state[1] == 0) {
        masked = siocnt & 0x88;
        if (masked == 8) {
            four = 4;
            flag = siocnt;
            asm volatile("" : "+r"(flag));
            flag &= four;
            if ((u8)flag == 0 && *(s32 *)(state + 0x14) == -1) {
                register u16 *pIme asm("r0");
                register u16 *pIe asm("r1");
                register u32 v2 asm("r2");

                pIme = (u16 *)0x04000208;
                *pIme = 0;
                asm volatile("" : "+r"(pIme));
                pIe = (u16 *)0x04000200;
                v2 = *pIe;
                asm volatile("" : "+r"(v2));
                flag = 0x81;
                flag = -flag;
                flag &= v2;
                v2 = 0x40;
                flag |= v2;
                *pIe = flag;
                flag = 1;
                *pIme = flag;
                v2 = *((volatile u8 *)reg + 1);
                flag -= 0x42;
                flag &= v2;
                *((volatile u8 *)reg + 1) = flag;
                *(volatile u16 *)0x04000202 = 0xc0;
                *(volatile u32 *)0x0400010c = 0xc963;
                state[0] = masked;
            }
            state[1] = 1;
        }
        state[0xb]++;
    }

    value = state[3] | (state[2] << 8);
    if (state[0] == 8) value |= 0x80;
    asm volatile("" : "+r"(value));
    result = value;
    if (state[9] != 0) result |= 0x1000;
    {
        register u32 mplayer asm("r3");
        mplayer = (siocnt << 26) >> 30;
        if (mplayer > 1) result |= 0x2000;
    }
    return result;
}
