extern unsigned char *iwram_3001f30;
extern void __SetFlag(int flag);
extern void __Func_8096fb0(int, int);
extern void __Func_80970f8(int, int);
extern void __Func_809728c(void);
extern void __FieldMove(int);
extern void __WaitFrames(int);

void OvlFunc_926_200c0dc(int arg0, int arg1)
{
    unsigned char *state;

    __SetFlag(0x140);
    __Func_8096fb0(0x8d, 1);
    state = iwram_3001f30;
    __Func_80970f8(arg0, arg1);
    state[0x23] = 0;
    __Func_809728c();
    __FieldMove(1);
    __WaitFrames(1);
}
