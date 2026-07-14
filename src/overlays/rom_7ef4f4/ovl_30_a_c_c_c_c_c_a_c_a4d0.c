extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __PlaySound(int sound_id);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void OvlFunc_965_2009b10(void);

void OvlFunc_965_200a4d0(void)
{
    register int flag asm("r0");

    flag = 0x985;
    if (__GetFlag(flag) == 0) {
        flag = 0x985;
        __SetFlag(flag);
        __PlaySound(0x9d);
        __CutsceneStart();
        {
            register int x asm("r1") = 0x8c;
            register int id asm("r0") = 8;

            asm volatile("" : "+r"(x), "+r"(id));
            x <<= 1;
            __MapActor_TravelTo(id, x, 0xf0);
        }
        __MapActor_TravelTo(9, 0xa4 << 1, 0xf0);
        __MapActor_WaitMovement(8);
        __MapActor_WaitMovement(9);
        {
            register int arg4 asm("r3") = 0x11;
            register int arg5 asm("r2") = 0xe;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x51, 0xe, 4, 1, arg4, arg5);
        }
        __CutsceneEnd();
        flag = 0x989;
        if (__GetFlag(flag) == 0) {
            OvlFunc_965_2009b10();
        }
    }
}
