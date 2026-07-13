/* Code split from the data-bearing assembly translation unit. */
typedef unsigned char u8;

extern u8 gState[];
extern u8 iwram_3001ebc[];
extern void __SetFlag(int flag);
extern int __GetFlag(int flag);
extern void OvlFunc_961_20080f8(void);
extern void __MapActor_SetAnim(int actorId, int animation);

/* マップ初期値とイベント状態を設定 */
int OvlFunc_961_200822c(void)
{
    register u8 *state asm("r3") = gState;
    register int offset asm("r2") = 0xe1;
    register int stateValue asm("r3");
    register u8 *mapState asm("r1");
    register u8 *field asm("r2");
    register int fieldOffset asm("r3");

    asm volatile("" : "+r"(state), "+r"(offset));
    offset <<= 1;
    state += offset;
    offset = 0;
    asm volatile("" : "+r"(state), "+r"(offset));
    stateValue = *(short *)(state + offset);
    if (stateValue == 0x5a)
        __SetFlag(0x96f);

    mapState = *(u8 **)iwram_3001ebc;
    fieldOffset = 0xe0;
    fieldOffset <<= 1;
    field = mapState + fieldOffset;
    fieldOffset -= 0xc0;
    *(int *)field = fieldOffset;
    fieldOffset += 0xc8;
    field = mapState + fieldOffset;
    fieldOffset = 0x18;
    *(int *)field = fieldOffset;

    if (__GetFlag(0x201) != 0) {
        OvlFunc_961_20080f8();
        __MapActor_SetAnim(0x10, 4);
    }
    return 0;
}
