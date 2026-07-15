typedef unsigned char u8;
extern u8 *__MapActor_GetActor(int);
extern void __Func_808e118(void);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetAnim(int, int);
extern void __CutsceneWait(int);
extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Actor_TravelTo(u8 *, int, int, int);
extern void __WaitFrames(int);
extern void __MapActor_WaitMovement(int);
extern void OvlFunc_932_200b850(int, int);
extern void __Func_809202c(void);

void OvlFunc_932_20082cc(int arg)
{
    register int saved asm("r7") = arg;
    register u8 *actor0 asm("r6") = __MapActor_GetActor(0);
    register u8 *actor8 asm("r5") = __MapActor_GetActor(8);
    register int left asm("r1");
    register int right asm("r2");
    register int delta asm("r3");
    register int speed_x asm("r1");
    register int speed_y asm("r2");
    u8 *sprite;

    __Func_808e118();
    __CutsceneStart();
    __MapActor_SetAnim(0, 0x16);
    __CutsceneWait(10);
    __PlaySound(0x98);
    speed_x = 0x33333;
    speed_y = 0x19999;
    asm volatile("" : "+r"(speed_x), "+r"(speed_y));
    __MapActor_SetSpeed(0, speed_x, speed_y);
    left = *(int *)(actor8 + 0xc);
    right = *(int *)(actor0 + 0xc);
    delta = left - right;
    asm volatile("" : "+r"(left), "+r"(right), "+r"(delta));
    if (delta < 0)
        delta = right - left;
    delta >>= 14;
    right = 0x80;
    delta <<= 14;
    asm volatile("" : "+r"(delta));
    right <<= 11;
    delta += right;
    *(int *)(actor0 + 0x28) = delta;
    __MapActor_SetAnim(0, 7);
    __Actor_TravelTo(actor0, *(int *)(actor8 + 8), *(int *)(actor8 + 0xc), *(int *)(actor8 + 0x10));
    __WaitFrames(10);
    sprite = *(u8 **)(actor0 + 0x50);
    sprite[9] |= 0x0c;
    __MapActor_WaitMovement(0);
    while ((*(int *)(actor8 + 0xc) >> 14) < (*(int *)(actor0 + 0xc) >> 14))
        __WaitFrames(1);
    __CutsceneEnd();
    __PlaySound(0x9f);
    OvlFunc_932_200b850(saved, 0);
    __WaitFrames(0x14);
    __Func_809202c();
}
