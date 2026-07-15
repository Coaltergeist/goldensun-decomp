typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 ewram_20023a0;
extern u8 ewram_2002220[];
extern u32 ewram_2002080;
extern u16 ewram_2002008;
extern u32 ewram_20023ac;
extern u16 ewram_2002238;
extern int __GetFlag(int);
extern void __WaitFrames(int);
extern int OvlFunc_971_2008580(void);
extern int OvlFunc_971_2008398(void);
extern void __SetFlagByte(int, int);

int OvlFunc_971_20087b0(void)
{
    register int result asm("r6") = 0;
    register int linkResult asm("r5");
    register int connectedFlag asm("r0");

    asm volatile("" : "+r"(result));
    connectedFlag = __GetFlag(0x302);
    ewram_20023a0 = result;
    if (connectedFlag == 0) {
        __WaitFrames(5);
        result = OvlFunc_971_2008580();
        if (result >= 0) {
            __WaitFrames(5);
            result = OvlFunc_971_2008398();
            linkResult = result;
            if (result >= 0)
                goto connected;
            asm volatile("");
            goto afterConnection;
        }
    } else {
        result = OvlFunc_971_2008398();
        linkResult = result;
        if (result >= 0) {
            __WaitFrames(10);
            result = OvlFunc_971_2008580();
            if (result >= 0)
                goto connected;
        }
    }
    goto reset;

connected:
    __SetFlagByte(0x3f0, linkResult);
    result = linkResult;
afterConnection:
    if (linkResult >= 0)
        goto done;
reset:
    {
        register u8 *state asm("r1") = ewram_2002220;
        asm volatile("" : "+r"(state));
        {
            register volatile u16 *ime asm("r0") = (volatile u16 *)0x4000208;
            register u16 saved asm("r4") = *ime;
            asm volatile("" : "+r"(saved));
            *ime = (u16)(u32)ime;
            asm volatile("" : "+r"(ime));
            {
                register u32 zero asm("r2") = 0;
                register u32 marker asm("r3") = 0x80;
                asm volatile("" : "+r"(zero));
                state[1] = marker;
                ewram_2002080 = zero;
                ewram_2002008 = zero;
                ewram_20023ac = zero;
                state[3] = zero;
                state[2] = zero;
                ewram_2002238 = zero;
                *ime = saved;
            }
        }
    }
done:
    return result;
}
