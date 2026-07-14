typedef unsigned char u8;

extern void __CutsceneStart(void);
extern void __Func_80925cc(int actor, int mode);
extern void __CutsceneWait(int frames);
extern u8 *iwram_3001ebc;
extern void __Func_8091f90(int arg0, int arg1);
extern u8 gState[];
extern void __Func_8091eb0(int arg0, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_923_20091b4(void)
{
    __CutsceneStart();
    __Func_80925cc(8, 2);
    __CutsceneWait(0x14);
    {
        register u8 *state asm("r3");
        register int offset asm("r2") = 0xe0;

        state = iwram_3001ebc;
        asm volatile("" : "+r"(state), "+r"(offset));
        offset <<= 1;
        state += offset;
        offset += 0x40;
        *(int *)state = offset;
    }
    {
        register int message asm("r0");

        asm volatile("ldr %0, =0x35" : "=r"(message));
        __Func_8091f90(message, 0x1f);
    }
    {
        register u8 *state asm("r3");
        register int offset asm("r2");

        asm volatile("ldr %0, =gState" : "=r"(state));
        asm volatile("ldr %0, =0x22b" : "=r"(offset));
        state += offset;
        asm volatile("" : "+r"(state));
        *state = 3;
    }
    __Func_8091eb0(0x24, 1);
    __CutsceneEnd();
}
