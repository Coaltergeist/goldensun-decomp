typedef unsigned short u16;
typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void OvlFunc_898_2008938(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008d78(void)
{
    u8 *actor = __MapActor_GetActor(0xf);
    register u16 old asm("r2");
    register u16 bit asm("r3");
    actor += 0x64;
    old = *(u16 *)actor;
    asm volatile("" : "+r"(old));
    bit = 2;
    asm volatile("" : "+r"(bit), "+r"(old));
    bit |= old;
    *(u16 *)actor = bit;
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123d);
    } else {
        __MessageID(0x134b);
    }
    OvlFunc_898_2008938(0xf);
    __CutsceneEnd();
    actor = __MapActor_GetActor(0xf);
    actor += 0x64;
    *(u16 *)actor &= 1;
}
