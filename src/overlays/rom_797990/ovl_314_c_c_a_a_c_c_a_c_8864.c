typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern void __MessageID(int message_id);
extern void OvlFunc_901_20084b4(int actor_id);
extern void __CutsceneEnd(void);

void OvlFunc_901_2008864(void)
{
    register u8 *actor asm("r0") = __MapActor_GetActor(0xf);

    actor += 0x64;
    asm volatile("" : "+r"(actor));
    {
        register u16 old_flags asm("r2") = *(u16 *)actor;
        register u16 new_flags asm("r3") = 2;

        new_flags |= old_flags;
        *(u16 *)actor = new_flags;
    }
    __CutsceneStart();
    __MessageID(0x1cc1);
    OvlFunc_901_20084b4(0xf);
    __CutsceneEnd();
    actor = __MapActor_GetActor(0xf);
    {
        register int zero asm("r5") = 0;

        asm volatile("" : "+r"(actor), "+r"(zero));
        *(u16 *)(actor + 0x64) = zero;
    }
}
