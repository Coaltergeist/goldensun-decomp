/* Cluster Func_80b28d4..Func_80b28d4 extracted from goldensun/asm/rom_b0000/rom_b0070_c_c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_c_c_a_a.o and asm/rom_b0000/rom_b0070_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];
extern unsigned int _GetSpriteVoice(unsigned short id);
extern void _Func_8019a54(void);
extern unsigned int Func_80b2884(unsigned int arg0);
extern void _Func_8017658(unsigned int a, int b, int c, unsigned int d);
extern void WaitFrames(unsigned int nframes);
extern int _Func_8017364(void);

void Func_80b28d4(unsigned int arg0)
{
    unsigned char *r5 = *(unsigned char **)iwram_3001f2c;
    unsigned int voice;

    voice = _GetSpriteVoice(*(unsigned short *)(r5 + (0xe9 << 2)));
    _Func_8019a54();
    arg0 = Func_80b2884(arg0);
    _Func_8017658(arg0, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
}
