extern unsigned int gKeyHeld;
void __PlaySound(unsigned int);

extern const unsigned short D_020094d4[] __asm__(".L14d4");
extern const unsigned short D_020094dc[] __asm__(".L14dc");

extern short D_020096b2 __asm__(".L16b2");
extern short D_020096b4 __asm__(".L16b4");
extern short D_020096b6 __asm__(".L16b6");
extern short gScript_930__020096b8;
extern short D_020096ba __asm__(".L16ba");
extern short D_020096bc __asm__(".L16bc");

void OvlFunc_880_20081fc(void) {
    if (!D_020096b2) {
        if (D_020096ba) {
            if (gKeyHeld == 0) {
                D_020096ba = 0;
            }
        } else if (gKeyHeld != 0) {
            if (gKeyHeld == D_020094d4[D_020096b6]) {
                D_020096b6++;
                D_020096ba = 1;
                if (D_020094d4[D_020096b6] == 0) {
                    D_020096b2 = 1;
                    __PlaySound(0x6e);
                }
            } else {
                D_020096b6 = 0;
            }
        }
    }

    if (!D_020096b4) {
        if (D_020096bc) {
            if (gKeyHeld == 0) {
                D_020096bc = 0;
            }
        } else if (gKeyHeld != 0) {
            if (gKeyHeld == D_020094dc[gScript_930__020096b8]) {
                gScript_930__020096b8++;
                D_020096bc = 1;
                if (D_020094dc[gScript_930__020096b8] == 0) {
                    D_020096b4 = 1;
                    __PlaySound(0x6e);
                }
            } else {
                gScript_930__020096b8 = 0;
            }
        }
    }
}
