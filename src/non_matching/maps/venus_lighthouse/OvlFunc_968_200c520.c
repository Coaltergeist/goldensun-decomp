/*
 * Non-matching: single `global_alloc` (`allocno_compare`) register swap between `arg0` (`r7` vs `r8`)
 * and `&sp10` (`r8` vs `r7`).
 * All control flow, stack frame (`sub sp, #0x38`), `flag` (`r6`), `coin` (`r5`), `arg1` (`r10`), and
 * `gcse` zero-propagation match; however `arg0` has 4 refs across 47 insns (`pri = 1702`) while
 * `&sp10` (`sfp - 40`) has 6 refs across 58 insns (`pri = 2068`), so `global_alloc` assigns `&sp10`
 * to `r7` (`LO_REGS`) and `arg0` to `r8` (`HI_REGS`) instead of the target's `arg0` in `r7` and
 * `&sp10` in `r8`.
 */
struct Struct_968_200c520 {
    int priority, animation, scaleX, scaleY, targetX, targetY;
    short sprite, unused;
    void *script;
    unsigned short rotation, angularSpeed;
    void *update;
};

extern u32 __Random(void);
extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);

void OvlFunc_968_200c520(int arg0, int arg1)
{
    extern unsigned char iwram_3001e40[];
    struct Struct_968_200c520 sp10;

    sp10.scaleX = 0xb333;
    sp10.scaleY = 0xb333;
    sp10.angularSpeed = (((__Random() << 12) >> 16) + 0xf800);

    if ((*(u32 *)iwram_3001e40 & 3) == 0) {
        if (((__Random() << 1) >> 16) != 0) {
            u32 rnd = __Random();
            OvlFunc_968_2008118(
                (arg0 + (((rnd << 1) >> 16) << 4)) << 16,
                0,
                arg1 << 19,
                0,
                0,
                (int)(((((__Random() * 5) >> 16) << 16) + 0x70000)) / 10,
                0x88 << 16,
                &sp10
            );
        } else {
            OvlFunc_968_2008118(
                (arg0 + ((__Random() * 17) >> 16)) << 16,
                0,
                (arg0 << 19) + 0xfffc0000,
                0,
                0,
                0,
                0x88 << 16,
                &sp10
            );
        }
    }
}
