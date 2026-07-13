extern unsigned int __GetFlag(unsigned int flag);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern unsigned char *__MapActor_GetActor(unsigned int actor_id);
extern void __MapActor_SetSpeed(unsigned int actor_id, unsigned int x,
                                unsigned int y);
extern void __Func_80921c4(unsigned int actor_id, unsigned int x,
                           unsigned int y);

void OvlFunc_891_200901c(void)
{
    if (!__GetFlag(0x80b)) {
        __CutsceneStart();
        __MapActor_GetActor(9);

        /* Preserve the original call-argument materialization order. */
        {
            register unsigned int actor_id asm("r0") = 9;
            register unsigned int speed_x asm("r1") = 0x3333;
            register unsigned int speed_y asm("r2") = 0x1999;
            asm("" : "+r" (actor_id), "+r" (speed_x), "+r" (speed_y));
            __MapActor_SetSpeed(actor_id, speed_x, speed_y);
        }
        {
            register unsigned int x asm("r1") = 0xfc;
            register unsigned int actor_id asm("r0") = 9;
            asm("" : "+r" (x), "+r" (actor_id));
            x <<= 1;
            __Func_80921c4(actor_id, x, 0x98);
        }
        __CutsceneEnd();
    }
}
