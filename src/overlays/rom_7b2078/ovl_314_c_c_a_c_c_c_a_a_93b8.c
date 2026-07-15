typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void OvlFunc_926_2008e94(void);
extern void OvlFunc_926_2008bf4(void);
extern void OvlFunc_926_2008db4(void);
extern void OvlFunc_926_2008cd4(void);
extern void __Func_80933d4(int, int);
extern void __Func_8093500(int, int);
extern void __Func_8093530(void);
extern int __GetFlag(int);
extern void OvlFunc_926_200902c(int);
extern void OvlFunc_926_2009160(void);
extern void OvlFunc_926_2009494(void);
extern void OvlFunc_926_2009dbc(void);

void OvlFunc_926_20093b8(void)
{
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    register u32 x asm("r2");
    register u32 temp asm("r3");
    register u32 work asm("r0");
    register u32 limit asm("r1");
    register int y asm("r3");

    __CutsceneStart();
    work = 0xffffe000;
    asm volatile("" : "+r"(work));
    x = *(u16 *)(actor + 6);
    asm volatile("" : "+r"(x), "+r"(work));
    temp = x + work;
    work = 0x3fff0000;
    asm volatile("" : "+r"(x), "+r"(temp), "+r"(work));
    temp <<= 16;
    limit = 0x3fff;
    asm volatile("" : "+r"(x), "+r"(temp), "+r"(work), "+r"(limit));
    if (temp <= work) {
        OvlFunc_926_2008e94();
    } else {
        work = 0xffffa000;
        temp = (u16)(x + work);
        if (temp <= limit) {
            OvlFunc_926_2008bf4();
        } else {
            work = 0xc0;
            work <<= 7;
            temp = (u16)(x + work);
            if (temp <= limit)
                OvlFunc_926_2008db4();
            else
                OvlFunc_926_2008cd4();
        }
    }

    __Func_80933d4(0x10000, 0x2000);
    limit = 1;
    asm volatile("" : "+r"(limit));
    work = 0x14;
    asm volatile("" : "+r"(work), "+r"(limit));
    __Func_8093500(work, limit);
    __Func_8093530();
    limit = 0x12;
    asm volatile("" : "+r"(limit));
    y = *(short *)(actor + limit);
    if (y <= 0xd1) {
        if (!__GetFlag(0x89a) || __GetFlag(0x89b))
            OvlFunc_926_200902c(0);
        else
            OvlFunc_926_2009160();
        __CutsceneEnd();
    } else {
        if (__GetFlag(0x89b)) {
            OvlFunc_926_200902c(2);
        } else if (!__GetFlag(0x89a)) {
            OvlFunc_926_2009494();
        } else {
            OvlFunc_926_2009dbc();
        }
        __CutsceneEnd();
    }
}
