extern int __GetFlag(int flag);
extern void __PlaySound(int sound_id);
extern void __Func_8010560(void *script, int x, int y);
extern void __Func_809218c(int actor_id, int x, int y);
extern void __Func_8091e9c(int actor_id);
extern unsigned char MapScript_20ac[] asm(".L20ac");

void OvlFunc_885_2008ba8(void)
{
    if (!__GetFlag(0x242)) {
        __PlaySound(0x9e);
        __Func_8010560(MapScript_20ac, 0x2b, 8);
    }

    __Func_809218c(0, 0xe5, 0xd9);
    __Func_8091e9c(3);
}
