typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int);
extern void __Func_80921c4(int, int, int);
extern void __Func_8092adc(int, int, int);

void OvlFunc_926_2008f80(void)
{
    register u32 x asm("r2");
    register u32 temp asm("r3");
    register u32 work asm("r0");
    register u32 limit asm("r1");
    register int effect asm("r1");
    register int arg0 asm("r0");
    u8 *actor;

    actor = __MapActor_GetActor(0);
    x = *(u16 *)(actor + 6);
    work = 0xffffe000;
    asm volatile("" : "+r"(x), "+r"(work));
    temp = x + work;
    work = 0x3fff0000;
    asm volatile("" : "+r"(x), "+r"(temp), "+r"(work));
    temp <<= 16;
    limit = 0x3fff;
    asm volatile("" : "+r"(x), "+r"(temp), "+r"(work), "+r"(limit));

    if (temp <= work) {
        __Func_80921c4(0xf, 0xd8, 0xa8);
        __Func_80921c4(0xf, 0xe0, 0xa8);
        effect = 0x80;
        arg0 = 0xf;
        asm volatile("" : "+r"(effect), "+r"(arg0));
        effect <<= 6;
        goto common_effect;
    }
    work = 0xffffa000;
    temp = (u16)(x + work);
    if (temp <= limit) {
        __Func_80921c4(0xf, 0xe8, 0xa0);
        effect = 0xa0;
        arg0 = 0xf;
        asm volatile("" : "+r"(effect), "+r"(arg0));
        effect <<= 7;
        goto common_effect;
    }
    work = 0xc0;
    work <<= 7;
    temp = (u16)(x + work);
    if (temp <= limit) {
        __Func_80921c4(0xf, 0xd8, 0xa8);
        __Func_80921c4(0xf, 0xe0, 0xac);
        effect = 0xe0;
        arg0 = 0xf;
        asm volatile("" : "+r"(effect), "+r"(arg0));
        effect <<= 8;
common_effect:
        __Func_8092adc(arg0, effect, 0x14);
    } else {
        __Func_80921c4(0xf, 0xe8, 0xa0);
        effect = 0x80;
        arg0 = 0xf;
        asm volatile("" : "+r"(effect), "+r"(arg0));
        effect <<= 6;
        __Func_8092adc(arg0, effect, 0x14);
    }
}
