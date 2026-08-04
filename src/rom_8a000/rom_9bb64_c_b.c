/* Cluster Func_809c3a4..Func_809c3a4 extracted from goldensun/asm/rom_8a000/rom_9bb64_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9bb64_c_a.o and asm/rom_8a000/rom_9bb64_c_c.o in
 * goldensun/stage1.ld.
 */
typedef struct { unsigned char _bytes[4]; } KeyState32;
extern KeyState32 gKeyHeld;
extern void *galloc_ewram(int index, unsigned int size);
extern void Func_800430c(void);
extern void Func_809c314(void);
extern void ResetPlayerSpeed(void);
extern void Func_80936a0(int a, int b);
extern void WaitFrames(unsigned int nframes);
extern void Func_80043e0(void);

void Func_809c3a4(void)
{
    void *base;

    base = galloc_ewram(0x1b, 0xccc);
    if (*(short *)((char *)base + 0x19e) == 3) {
        Func_800430c();
        Func_809c314();
        ResetPlayerSpeed();
        Func_80936a0(0x9d89, 6);
        while ((*(unsigned int *)&gKeyHeld & 0x200) != 0) {
            WaitFrames(1);
        }
        Func_80936a0(0x10000, 6);
        Func_80043e0();
    }
}
