extern void OvlFunc_935_2008170(void);
extern int __GetFlag(int flag);
extern int OvlFunc_935_2008458(void);
extern void __PlaySound(int sound);
extern void OvlFunc_935_2008410(void);
extern void __SetFlag(int flag);

void OvlFunc_935_200848c(void) {
    register int flag asm("r0");

    OvlFunc_935_2008170();
    flag = 0x9aa;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) == 0 && OvlFunc_935_2008458() != 0) {
        flag = 0x207;
        asm volatile("" : "+r"(flag));
        if (__GetFlag(flag) == 0) {
            __PlaySound(0x50);
            OvlFunc_935_2008410();
            flag = 0x9aa;
            asm volatile("" : "+r"(flag));
            __SetFlag(flag);
        }
    }
}
