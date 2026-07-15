typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __ClearFlag(int);
extern u8 *iwram_3001e70;

#define FORCE(name, value) \
    register int name asm("r0") = (value); \
    asm volatile("" : "+r"(name))

void OvlFunc_921_20098c4(void)
{
    u8 *actor = __MapActor_GetActor(0);
    register int rawX asm("r4") = *(int *)(actor + 8);
    int x = rawX >> 19;
    int rawZ;
    register int setFlag asm("r0");

    if ((unsigned)(x - 0x18) <= 7 ||
        ((unsigned)((*(int *)(actor + 0x10) >> 19) - 0x24) <= 9 &&
         (unsigned)(x - 0x16) <= 9)) {
        { FORCE(flag, 0x200); if (__GetFlag(flag) != 0) return; }
        iwram_3001e70[0x17] = 0;
        setFlag = 0x200;
        asm volatile("" : "+r"(setFlag));
        goto update;
    }
    rawZ = *(int *)(actor + 0x10);
    if (rawX > 0xe80000 && *(int *)(actor + 0xc) > 0x1e0000 && rawZ > 0xd40000) {
        register u8 *state asm("r2") = iwram_3001e70;
        asm volatile(
            "mov r0, #0x80\n\t"
            "mov r3, #0\n\t"
            "lsl r0, #2\n\t"
            "strb r3, [r2, #0x17]"
            : "=r"(setFlag)
            : "r"(state)
            : "r3", "memory");
update:
        __SetFlag(setFlag);
        { FORCE(flag, 0x201); __ClearFlag(flag); }
        return;
    }
    { FORCE(flag, 0x201); if (__GetFlag(flag) != 0) return; }
    {
        register u8 *state asm("r2") = iwram_3001e70;
        register int one asm("r3");
        asm volatile("mov r3, #1" : "=r"(one));
        {
            FORCE(flag, 0x201);
            asm volatile(
                "strb r3, [r2, #0x17]"
                :
                : "r"(state), "r"(one), "r"(flag)
                : "memory");
            __SetFlag(flag);
        }
    }
    { FORCE(flag, 0x200); __ClearFlag(flag); }
}
