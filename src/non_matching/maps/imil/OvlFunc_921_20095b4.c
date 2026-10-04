extern int __sin(int);
extern int Func_8000888(int, int) __attribute__((long_call));
extern int Lm921_31f0 __asm__(".Lm921_31f0");
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern unsigned char iwram_3001e40[];
extern int __Random(void);
extern void __vec3_translate(int, int, void *);
extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Actor_SetAnim(void *, int);
extern void __Func_80929d8(void *, int);
extern void __Actor_SetScript(void *, void *);
extern unsigned char gScript_921__0200a64c[];

void OvlFunc_921_20095b4(void *actor)
{
    struct Actor {
        char pad1[8];
        int f8;
        int fc;
        int f10;
        char pad2[4];
        int f18;
        int f1c;
        char pad3[0x44];
        short f64;
    } *a = (struct Actor *)actor;
    int pos[3];
    int r1;
    int r2;
    void *spawn;
    unsigned char *sub;

    a->f8 = Lm921_31f0 + Func_8000888(0xc0 << 11, __sin((int)a->f64 << 10));
    a->f64++;
    a->f64 = (a->f64 + 64) % 64;

    if (_umodsi3_RAM(*(unsigned int *)iwram_3001e40, 3) == 0) {
        pos[0] = a->f8;
        pos[1] = a->fc + (0x80 << 10);
        pos[2] = a->f10;

        r1 = __Random();
        r2 = __Random();
        __vec3_translate(r1 * 6, r2, pos);

        spawn = __CreateActor(0x11d, pos[0], pos[1], pos[2]);
        if (spawn != 0) {
            sub = *(unsigned char **)((char *)spawn + 0x50);
            sub[9] &= ~0xc;
            __Actor_SetSpriteFlags(spawn, 0);
            __Actor_SetAnim(spawn, 1);
            *(int *)((char *)spawn + 0x18) = 0x9999;
            *(int *)((char *)spawn + 0x1c) = 0x9999;
            ((unsigned char *)spawn)[0x23] = 2;
            ((unsigned char *)spawn)[0x55] = 0;
            __Func_80929d8(spawn, 9);
            __Actor_SetScript(spawn, gScript_921__0200a64c);
        }
    }
}
