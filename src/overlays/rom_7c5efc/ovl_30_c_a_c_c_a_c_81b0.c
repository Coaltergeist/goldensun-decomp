extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __SetFlag(int flag);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern int __GetFlag(int flag);
extern void __PlaySound(int sound);
extern void OvlFunc_941_20080d4(void);

void OvlFunc_941_20081b0(void)
{
    unsigned char *actor = __MapActor_GetActor(10);
    int result;

    __SetFlag(0x200);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
        actor[0x23] = 1;
    }
    result = __GetFlag(0x202);
    if (!result) {
        asm volatile("" : : "r" (result));
        __PlaySound(0x9d);
        OvlFunc_941_20080d4();
        __PlaySound(0x50);
        __SetFlag(0x202);
    }
}
