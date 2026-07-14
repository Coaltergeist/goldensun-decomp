typedef unsigned short u16;
typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern unsigned int iwram_3001ebc;
extern void OvlFunc_898_2008938(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_898_2008cfc(void)
{
    u8 *actor = __MapActor_GetActor(0xe);
    register u16 old asm("r2");
    register u16 bit asm("r3");
    unsigned short *p;

    actor += 0x64;
    old = *(u16 *)actor;
    asm volatile("" : "+r"(old));
    bit = 2;
    asm volatile("" : "+r"(bit), "+r"(old));
    bit |= old;
    *(u16 *)actor = bit;
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123c);
    } else {
        __MessageID(0x1349);
        if (__GetFlag(2)) {
            p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p = *p + 1;
        }
    }
    OvlFunc_898_2008938(0xe);
    __CutsceneEnd();
    actor = __MapActor_GetActor(0xe);
    actor += 0x64;
    *(u16 *)actor &= 1;
}
