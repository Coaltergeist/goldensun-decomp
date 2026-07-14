extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __MapActor_SetSpeed(int actor_id, int horizontal, int vertical);
extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __Func_809228c(int actor, int x, int z);
extern void __Func_8092208(int actor, int mode, int offset);
extern void __Func_8091e9c(int value);
extern unsigned char *iwram_3001ebc;

void OvlFunc_928_2008de8(int param_1)
{
    unsigned char *actor;

    actor = __MapActor_GetActor(0);
    {
        register unsigned char *store_addr asm("r0") = actor + 0x55;
        register unsigned int store_val asm("r3") = 0;
        register unsigned int horiz asm("r1") = 0x80;
        register unsigned int vert asm("r2") = 0x80;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(store_addr), "+r"(store_val), "+r"(horiz), "+r"(vert));
        *store_addr = store_val;
        asm volatile("" : "+r"(horiz), "+r"(vert) :: "memory");
        horiz <<= 8;
        asm volatile("" : "+r"(horiz), "+r"(vert));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(horiz), "+r"(vert));
        vert <<= 7;
        __MapActor_SetSpeed(actor_id, horiz, vert);
    }

    if (param_1 == 6) {
        __MapActor_SetAnim(0, 2);
        {
            register int offset asm("r2") = 0x10;
            register int actor_id2 asm("r0");
            register int x_val asm("r1");

            asm volatile("" : "+r"(offset));
            actor_id2 = 0;
            asm volatile("" : "+r"(actor_id2), "+r"(offset));
            x_val = 0;
            asm volatile("" : "+r"(x_val), "+r"(offset));
            offset = -offset;
            __Func_809228c(actor_id2, x_val, offset);
        }
    } else {
        register int offset asm("r2") = 0x10;
        register int actor_id3 asm("r0");
        register int mode asm("r1");

        asm volatile("" : "+r"(offset));
        actor_id3 = 0;
        asm volatile("" : "+r"(actor_id3), "+r"(offset));
        mode = 2;
        asm volatile("" : "+r"(mode), "+r"(offset));
        offset = -offset;
        __Func_8092208(actor_id3, mode, offset);
    }

    *(unsigned int *)((unsigned short *)iwram_3001ebc + 0xe4) = 0x10;
    __Func_8091e9c(param_1);
}
