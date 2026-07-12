extern void __PlaySound(int sound);
extern int __GetFlag(int flag);
extern void OvlFunc_922_2008180(int actor, int arg1, int arg2);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __WaitFrames(int frames);
extern void OvlFunc_922_20092cc(void);

void OvlFunc_922_20085b8(void) {
    __PlaySound(0xf1);
    if (__GetFlag(0x310) != 0 || __GetFlag(0x30d) != 0) {
        OvlFunc_922_2008180(8, -0x30, 0);
        __ClearFlag(0x308);
        __SetFlag(0x309);
    } else {
        OvlFunc_922_2008180(8, -0x60, 0);
        __SetFlag(0x308);
        __ClearFlag(0x309);
    }
    __PlaySound(0x121);
    __WaitFrames(2);
    OvlFunc_922_20092cc();
}
