typedef unsigned char u8;

extern int __GetFlag(int flag);
extern u8 gScript_968__0200d508[];
extern u8 data4ef0[] asm(".L4ef0");
extern u8 data5028[] asm(".L5028");
extern u8 data4cf8[] asm(".L4cf8");
extern u8 data4ba8[] asm(".L4ba8");

u8 *OvlFunc_943_2008950(void)
{
    int flag;

    if (__GetFlag(0x93e))
        return gScript_968__0200d508;
    if (__GetFlag(0x927))
        return data4ef0;
    flag = __GetFlag(0x928);
    if (flag)
        return data5028;
    if (__GetFlag(0x911)) {
        if (__GetFlag(0x925)) {
            data4cf8[0x14e] = flag;
            data4cf8[0x1ae] = 2;
            data4cf8[0x1c6] = 2;
        } else if (__GetFlag(0x922)) {
            data4cf8[0x1ae] = 1;
            data4cf8[0x1c6] = 1;
        }
        return data4cf8;
    }
    return data4ba8;
}
