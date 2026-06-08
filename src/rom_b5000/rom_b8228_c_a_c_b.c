/* Cluster Func_80b8ec4..Func_80b8ec4 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_a.o and asm/rom_b5000/rom_b8228_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_GetUnit(unsigned int);
extern unsigned char *Func_80b7dd0(unsigned int);
extern void _Sprite_SetAnim(unsigned char *, unsigned int);
extern void WaitFrames(unsigned int);
extern void _Func_800befc(unsigned char *);
extern void Func_80b7e60(unsigned int);

void Func_80b8ec4(unsigned int arg0) {
    unsigned char *p;
    short *s;
    unsigned char **q;
    unsigned char *r5;
    unsigned char *r2;
    int idx;

    p = _GetUnit(arg0);
    s = (short *)p;
    idx = 0x38 / 2;
    if (s[idx] <= 0) {
        q = (unsigned char **)Func_80b7dd0(arg0);
        r5 = *(unsigned char **)(*q + 0x50);
        _Sprite_SetAnim(r5, 5);
        r2 = *(unsigned char **)(r5 + 0x28);
        r2[5] = 6;
        r2[0x16] = 0xff;
        WaitFrames(4);
        _Func_800befc(r5);
        Func_80b7e60(arg0);
    }
}
