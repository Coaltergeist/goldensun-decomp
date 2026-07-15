typedef unsigned char u8;
typedef unsigned int u32;
extern u8 *__MapActor_GetActor(int actorId);
extern void __Actor_TravelTo(u8 *actor, int x, int speed, int y);
extern void __SetFlag(int flag);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_956_2008274(void)
{
    register u8 *actor asm("r0");
    register int acceleration asm("r6") = 0x6666;
    register int velocity asm("r5") = 0xcccc;

    actor = __MapActor_GetActor(9);
    { register int movement asm("r3") = 0x80;
      movement <<= 9;
      *(int *)(actor + 0x18) = movement;
      *(int *)(actor + 0x1c) = movement; }

    actor = __MapActor_GetActor(11);
    { register int x asm("r1"); register int speed asm("r2"); register int y asm("r3");
      asm volatile("mov r2, #0x80\n\tldr r1, [r0, #8]\n\tldr r3, [r0, #0x10]\n\tstr r6, [r0, #0x34]\n\tstr r5, [r0, #0x30]\n\tlsl r2, #14"
                   : "=r"(x), "=r"(speed), "=r"(y) : "r"(actor), "r"(acceleration), "r"(velocity) : "memory");
      __Actor_TravelTo(actor, x, speed, y); }

    actor = __MapActor_GetActor(10);
    { register int x asm("r1"); register int speed asm("r2"); register int y asm("r3");
      asm volatile("mov r2, #0x80\n\tldr r1, [r0, #8]\n\tldr r3, [r0, #0x10]\n\tstr r6, [r0, #0x34]\n\tstr r5, [r0, #0x30]\n\tlsl r2, #11"
                   : "=r"(x), "=r"(speed), "=r"(y) : "r"(actor), "r"(acceleration), "r"(velocity) : "memory");
      __Actor_TravelTo(actor, x, speed, y); }

    __SetFlag(0x362);
    __Func_8010704(15, 12, 1, 1, 13, 12);
    __Func_8010704(14, 12, 1, 1, 9, 12);
}
