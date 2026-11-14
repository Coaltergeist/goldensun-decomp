/*
 * Remaining compiler/RTL diffs vs asm/maps/link_lobby/OvlFunc_971_20087b0.s:
 * - In `03.cse`, storing constant `0` to `p[3]` / `p[2]` (`QImode` at non-zero offset) widens
 *   `QImode` via `GET_MODE_WIDER_MODE(QImode) == HImode` and forces an `HImode` minipool reload
 *   (`ldrh rX, =0`) in `reload` unless `0` is already pinned in a register (`Func_800651c` in
 *   `src/core/runtime/serial.c` has the identical serial-abort macro and uses a `register` pin).
 * - In `23.sched2`, `mov r6, #0` is scheduled after `__GetFlag(0x302)` instead of before.
 */
extern int __GetFlag(int);
extern void __WaitFrames(int);
extern int OvlFunc_971_2008580(void);
extern int OvlFunc_971_2008398(void);
extern void __SetFlagByte(int, int);

extern unsigned char ewram_20023a0;
extern unsigned char ewram_2002220[];
extern unsigned int ewram_2002080;
extern unsigned short ewram_2002008;
extern unsigned int ewram_20023ac;
extern unsigned short ewram_2002238;

int OvlFunc_971_20087b0(void)
{
    int r6 = 0;
    int r5;
    int flag;

    flag = __GetFlag(0x302);
    ewram_20023a0 = r6;
    if (flag == 0) {
        __WaitFrames(5);
        r6 = OvlFunc_971_2008580();
        if (r6 < 0)
            goto fail;
        __WaitFrames(5);
        r5 = r6 = OvlFunc_971_2008398();
        if (r6 < 0)
            goto check;
    } else {
        r5 = r6 = OvlFunc_971_2008398();
        if (r6 < 0)
            goto fail;
        __WaitFrames(10);
        r6 = OvlFunc_971_2008580();
        if (r6 < 0)
            goto fail;
    }

    __SetFlagByte(0xfc << 2, r5);
    r6 = r5;

check:
    if (r5 < 0) {
    fail:
        {
            unsigned char *p = ewram_2002220;
            unsigned short *ime = (unsigned short *)0x04000208;
            unsigned int saved_ime = *ime;
            *ime = (unsigned short)(unsigned int)ime;
            p[1] = 0x80;
            ewram_2002080 = 0;
            ewram_2002008 = 0;
            ewram_20023ac = 0;
            p[3] = 0;
            p[2] = 0;
            ewram_2002238 = 0;
            *ime = saved_ime;
        }
    }
    return r6;
}
