typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor_id);
extern void __StartTask(void (*task)(void), int priority);
extern void OvlFunc_948_20097ac(void);
extern void OvlFunc_948_200941c(void);
extern void OvlFunc_948_2009308(void);

void OvlFunc_948_200a290(void)
{
    u8 *actor;
    u32 value;
    u16 val;
    volatile u16 *bldcnt;

    actor = __MapActor_GetActor(8);
    actor += 0x59;
    *actor = 1;
    actor = __MapActor_GetActor(9);
    actor += 0x59;
    *actor = 1;
    actor = __MapActor_GetActor(10);
    actor += 0x59;
    *actor = 1;
    actor = __MapActor_GetActor(11);
    actor += 0x59;
    *actor = 1;

    actor = __MapActor_GetActor(8);
    value = 0xb333;
    *(u32 *)(actor + 0x18) = value;
    actor = __MapActor_GetActor(9);
    *(u32 *)(actor + 0x18) = value;
    actor = __MapActor_GetActor(10);
    *(u32 *)(actor + 0x18) = value;
    actor = __MapActor_GetActor(11);
    *(u32 *)(actor + 0x18) = value;
    actor = __MapActor_GetActor(12);
    *(u32 *)(actor + 0x18) = value;

    {
        register void (*task)(void) asm("r0");
        register int priority asm("r1");

        priority = 0xc8;
        priority <<= 4;
        task = OvlFunc_948_20097ac;
        asm volatile("" : "+r"(task), "+r"(priority));
        __StartTask(task, priority);

        priority = 0xc8;
        priority <<= 4;
        task = OvlFunc_948_200941c;
        asm volatile("" : "+r"(task), "+r"(priority));
        __StartTask(task, priority);

        priority = 0xc8;
        priority <<= 4;
        task = OvlFunc_948_2009308;
        asm volatile("" : "+r"(task), "+r"(priority));
        __StartTask(task, priority);
    }

    val = 0x3f42;
    bldcnt = (volatile u16 *)0x04000050;
    *bldcnt = val;
    val = 0x0607;
    bldcnt = bldcnt + 1;
    *bldcnt = val;
}
