extern void __Func_8010704(int, int, int, int, int, int);
extern int __GetFlag(int flag);
extern void OvlFunc_934_2009938(int actor, int x, int z);

void OvlFunc_934_2009770(void)
{
    __Func_8010704(0, 0x22, 0xd, 3, 0x17, 0x22);
    if (__GetFlag(0x301) != 0) {
        OvlFunc_934_2009938(0xb, 0x23, 0x23);
        __Func_8010704(0x18, 0x22, 1, 3, 0x17, 0x22);
    } else {
        OvlFunc_934_2009938(0xb, 0x17, 0x23);
        __Func_8010704(0x18, 0x22, 1, 3, 0x23, 0x22);
    }
}
