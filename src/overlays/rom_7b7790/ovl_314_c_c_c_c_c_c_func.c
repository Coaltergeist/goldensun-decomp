/* Code split from the data-bearing assembly translation unit. */
typedef unsigned char u8;

extern u8 iwram_3001ebc[];
extern u8 gState[];
extern void OvlFunc_common0_70(int, int, int, int);
extern void __ClearFlag(int flag);
extern void __MapActor_SetAnim(int actorId, int animation);

/* ワールド状態に対応する背景演出を開始 */
int OvlFunc_929_2008598(void)
{
    register u8 *mapState asm("r3") = *(u8 **)iwram_3001ebc;
    register int offset asm("r2") = 0xe0;
    register u8 *stateAddress asm("r3");
    register int state asm("r3");

    asm volatile("" : "+r"(mapState), "+r"(offset));
    offset <<= 1;
    mapState += offset;
    offset += 0x49;
    *(int *)mapState = offset;
    stateAddress = gState;
    offset -= 0x47;
    asm volatile("" : "+r"(stateAddress), "+r"(offset));
    stateAddress += offset;
    offset = 0;
    asm volatile("" : "+r"(stateAddress), "+r"(offset));
    state = *(short *)(stateAddress + offset);
    if (state == 4 || state == 7) {
        OvlFunc_common0_70(0x00f80000, 0, 0x01a10000, 0x14);
    } else if (state == 6) {
        register int height asm("r5") = 0x02380000;
        register int x asm("r0") = 0xe6;
        register int y asm("r1") = 0;
        register int z asm("r2") = height;
        register int kind asm("r3") = 0x14;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z), "+r"(kind));
        x <<= 17;
        OvlFunc_common0_70(x, y, z, kind);
        OvlFunc_common0_70(0x01e40000, 0, height, 0x14);
    } else if (state == 8) {
        __ClearFlag(0x12f);
        __MapActor_SetAnim(10, 6);
    }
    return 0;
}
