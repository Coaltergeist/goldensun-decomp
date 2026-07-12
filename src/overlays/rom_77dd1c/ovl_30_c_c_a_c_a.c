extern unsigned char SoundData[] asm(".L5774");
extern void __PlaySound(int sound);
extern void __Func_8010560(unsigned char *data, int arg1, int arg2);
extern void __Func_809218c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void OvlFunc_882_200815c(int actor);

void OvlFunc_882_2008198(void) {
    __PlaySound(0x9e);
    __Func_8010560(SoundData, 0x2d, 0xb);
    __Func_809218c(0, 0x101, 0x1a4);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xb);
}
