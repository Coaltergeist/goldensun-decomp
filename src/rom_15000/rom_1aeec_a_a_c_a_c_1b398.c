typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e98;
extern volatile unsigned int gKeyPress;
extern volatile unsigned int gKeyRepeat;
extern void Func_801b9ec(u8 *state, int arg);
extern void WaitFrames(int frames);
extern void Func_801b664(u8 *state);
extern void Func_801b810(u8 *state);
extern int Func_801be80(u8 *state);

int Func_801b398(int allowCancel)
{
    u8 *state = iwram_3001e98;

    Func_801b9ec(state, 0);
    for (;;) {
        do {
            WaitFrames(1);
            __asm__ ("" : "+r" (state));
        } while (*(u16 *)(state + 0x3a0) != 0);

        if (allowCancel != 0x3e7) {
            if ((gKeyRepeat & 0x10) != 0) {
                Func_801b664(state);
            } else if ((gKeyRepeat & 0x20) != 0) {
                Func_801b810(state);
            } else if ((gKeyPress & 1) != 0) {
                return Func_801be80(state);
            }
        }

        if (allowCancel != 0 && (gKeyPress & 2) != 0)
            return -1;
    }
}
