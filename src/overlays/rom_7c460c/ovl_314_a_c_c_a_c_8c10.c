extern int __GetFlag(int flag);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_8092208(int actor, int mode, int offset);
extern void __CutsceneWait(int frames);
extern void __Func_8091e9c(int value);

void OvlFunc_939_2008c10(void)
{
    int flag;
    unsigned char *actor;

    if (__GetFlag(0x202) != 0) {
        flag = __GetFlag(0x201);
        if (flag == 0) {
            __MapActor_SetSpeed(0, 0x3333, 0x1999);
            actor = __MapActor_GetActor(0);
            actor[0x55] = flag;
            __MapActor_SetAnim(0, 2);
            {
                register int offset asm("r2") = 8;
                register int actor_id asm("r0");
                register int anim asm("r1");

                asm volatile("" : "+r"(offset));
                actor_id = 0;
                asm volatile("" : "+r"(actor_id), "+r"(offset));
                anim = 2;
                asm volatile("" : "+r"(anim), "+r"(offset));
                offset = -offset;
                __Func_8092208(actor_id, anim, offset);
            }
            __CutsceneWait(0xd);
            __Func_8091e9c(0xc);
        }
    }
}
