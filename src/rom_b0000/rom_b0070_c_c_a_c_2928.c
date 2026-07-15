typedef unsigned char u8;
typedef unsigned short u16;

extern u8 iwram_3001f2c[];
extern int _GetSpriteVoice(int sprite);
extern int Func_80b2884(int position);
extern void _Func_8019a54(void);
extern void _Func_8017658(int box, int x, int y, int flags);
extern int _Func_8017364(void);
extern void WaitFrames(int frames);

void Func_80b2928(int position)
{
    register u8 *base asm("r8") = *(u8 **)iwram_3001f2c;
    register u8 **spriteSlot asm("r6") = (u8 **)(base + 0x380);
    register int saved asm("r10") = (*spriteSlot)[5];
    register int box asm("r7") = position;
    int voice = _GetSpriteVoice(*(u16 *)(base + 0x3a4));

    box = Func_80b2884(box);

    (*spriteSlot)[5] = 0xd;
    _Func_8019a54();
    _Func_8017658(box, 5, 0, (voice << 16) | 0x22);
    while (!_Func_8017364()) {
        WaitFrames(1);
    }
    WaitFrames(1);
    (*(u8 **)(base + 0x380))[5] = saved;
}
