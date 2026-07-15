typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);
extern void OvlFunc_948_20099e8(void);
extern void OvlFunc_948_2009a9c(void);
extern void OvlFunc_948_2009a48(void);
extern void OvlFunc_948_2009a70(void);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_948_2009ac8(void)
{
    u8 *actor = __MapActor_GetActor(8);
    int position = *(int *)(actor + 8);
    int state = *(int *)(actor + 0xc);
    int tile;
    register u8 zero asm("r6");

    if (position < 0)
        position += 0xfffff;
    tile = position >> 20;

    if (state == 0)
        __MapActor_GetActor(8)[0x23] = 2;

    OvlFunc_948_20099e8();
    {
        register u8 *actorState asm("r0") = __MapActor_GetActor(8);
        register u8 value asm("r3");
        asm volatile(
            "mov r3, #3\n\t"
            "add r0, #0x55\n\t"
            "mov r6, #0"
            : "+r" (actorState), "=r" (value), "=r" (zero));
        *actorState = value;
    }

    if (tile == 0x28) {
        OvlFunc_948_2009a9c();
    } else if (tile == 0x2a) {
        OvlFunc_948_2009a48();
    } else if (tile == 0x29) {
        OvlFunc_948_2009a70();
    } else {
        if (tile == 0x27)
            goto draw_tile;
        asm volatile("" : "+r" (tile));
        if (tile == 0x26)
            goto draw_tile;
        asm volatile("" : "+r" (tile));
        if (tile != 0x25)
            goto done;
draw_tile:
        __Func_8010704(0x3d, 0x24, 1, 1, tile, 0x2a);
        __MapActor_GetActor(8)[0x55] = zero;
        *(u32 *)(__MapActor_GetActor(8) + 0xc) = 0x200000;
    }
done:
    ;
}
