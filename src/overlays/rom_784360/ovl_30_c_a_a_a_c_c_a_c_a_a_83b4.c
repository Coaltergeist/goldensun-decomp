#include "gba/types.h"

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __Func_8092c40(int, int);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage(int, int);
extern void __Func_8093054(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_884_20083b4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x87a) != 0) {
        __MessageID(0x1be8);
        asm volatile(
            "mov r1, #0\n"
            "mov r0, #0xf\n"
            "bl __Func_8092c40"
            :
            :
            : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
        if (__Func_8091c7c(0, 0) == 1) {
            __ActorMessage(0xf, 0);
        } else {
            u16 *value = (u16 *)(iwram_3001ebc + 0x1d8);
            (*value)++;
            __Func_8093054(0xf, 0);
        }
    } else if (__GetFlag(0x815) != 0) {
        __MessageID(0x1191);
        __Func_8093054(0xb, 0);
    } else {
        __MessageID(0xea8);
        __Func_8093054(0xb, 0);
    }
    __CutsceneEnd();
}
