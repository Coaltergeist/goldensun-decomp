typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 iwram_3001e68;

extern void *galloc_iwram(int tag, int size);
extern void gfree(int tag);
extern void WaitFrames(u32 nframes);
extern int _Func_80170f8(int a, int b, int c, int d);
extern void Func_80a1090(int a);
extern int _Func_80796c4(u16 *party);
extern void Func_80a8034(int a, int b, int c, int d);
extern void *_CreateUIBox(int x, int y, int arg2, int arg3, int flags);
extern void _Func_80164ac(void *object);
extern void Func_80a34c0(void);
extern int Func_80a7440(void);

int Func_80a7380(void)
{
    u8 *state = galloc_iwram(0x37, 0xa70);
    u16 *flagPtr = (u16 *)(iwram_3001e68 + 4);
    int result;
    int i;
    int one = 1;
    int three = 3;

    *flagPtr = one;
    _Func_80170f8(0, 0, 0x1e, 0x14);
    WaitFrames(1);
    Func_80a1090(0);
    state[0x219] = _Func_80796c4((u16 *)(state + 0x208));
    Func_80a8034(0, 3, 0, 7);
    *(void **)(state + 0x10c) = _CreateUIBox(0xd, 0, 0x11, 5, 2);
    for (i = 7; i >= 0; i--)
        *(u16 *)(state + 0x144 + i * 2) = 0x1e;
    *(u16 *)(state + 0x220) = three;
    result = Func_80a7440();
    _Func_80164ac(*(void **)(state + 0x24));
    Func_80a34c0();
    *(u16 *)(iwram_3001e68 + 4) = 0;
    WaitFrames(1);
    gfree(0x37);
    return result;
}
