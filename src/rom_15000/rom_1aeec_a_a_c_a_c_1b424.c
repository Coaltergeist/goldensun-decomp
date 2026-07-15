typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *iwram_3001e98;
extern volatile unsigned int gKeyPress;
extern volatile unsigned int gKeyRepeat;
extern void WaitFrames(int frames);
extern void Func_801b664(u8 *state);
extern void Func_801b810(u8 *state);
extern void _PlaySound(int sound);

int Func_801b424(int param_1)
{
    u8 *state = iwram_3001e98;

    for (;;) {
        do {
            WaitFrames(1);
            __asm__ ("" : "+r" (state));
        } while (*(u16 *)(state + 0x3a0) != 0);

        if (param_1 != 0x3e7) {
            if ((gKeyRepeat & 0x10) != 0) {
                _PlaySound(0x6f);
                Func_801b664(state);
            } else if ((gKeyRepeat & 0x20) != 0) {
                _PlaySound(0x6f);
                Func_801b810(state);
            }
            if ((gKeyPress & 1) != 0) {
                param_1 = *(u16 *)(state + 0x39c) + *(u16 *)(state + 0x39e);
                if (*(u16 *)(*(u8 **)(state + 0x348) + 0xa) == 6) {
                    if (param_1 == 0) {
                        _PlaySound(0x70);
                    } else {
                        _PlaySound(0x71);
                    }
                } else {
                    _PlaySound(0x70);
                }
                return param_1;
            }
        }

        if (param_1 != 0 && (gKeyPress & 2) != 0) {
            _PlaySound(0x71);
            return -1;
        }
    }
}
