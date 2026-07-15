typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern void __Func_8092b08(int, int);

void OvlFunc_948_2009edc(void)
{
    register int state asm("r5");
    register u8 *actor asm("r0");

    if (*(int *)(__MapActor_GetActor(0) + 0xc) > 0x100000) {
        state = 2;
        __MapActor_GetActor(8)[0x23] = state;
        if (*(int *)(__MapActor_GetActor(0xa) + 0xc) == 0)
            __MapActor_GetActor(0xa)[0x23] = state;
        actor = __MapActor_GetActor(0xb);
    } else {
        if (*(int *)(__MapActor_GetActor(0xa) + 0xc) == 0) {
            int position = *(int *)(__MapActor_GetActor(0) + 0x10);
            if (position < 0)
                position += 0xfffff;
            if ((position >> 20) > 0x38) {
                __Func_8092b08(0xa, 3);
                goto lowerActors;
            }
        }
        __Func_8092b08(0xa, 1);
        __MapActor_GetActor(0xa)[0x23] = 1;
lowerActors:
        actor = __MapActor_GetActor(0xb);
        state = 0;
    }
    actor[0x23] = state;
    __MapActor_GetActor(0xc)[0x23] = state;
}
