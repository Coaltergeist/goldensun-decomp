extern void *iwram_3001ebc;
extern void *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(void *, int);
extern int __GetFlag(int);
extern void __MapActor_SetAnim(int, int);
extern void OvlFunc_941_2008210(void);
extern void OvlFunc_941_2008384(void);

int WestLunpaCave_MapInit(void)
{
    int flag = 0x81 << 2;

    *(int *)((char *)iwram_3001ebc + 0x1c0) = flag;
    if (*(short *)((char *)&gState + 0x1c0) == (int)Lconst_6a) {
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);
        *(int *)((char *)__MapActor_GetActor(11) + 0x1c) = 0xf333;

        if (__GetFlag(0x201)) {
            OvlFunc_941_2008210();
        }
        if (__GetFlag(0x202)) {
            OvlFunc_941_2008384();
        }
        if (__GetFlag(0x80 << 2)) {
            OvlFunc_941_20080d4();
        }
        if (__GetFlag(0x203)) {
            __MapActor_SetAnim(11, 5);
        }
        if (__GetFlag(flag)) {
            __MapActor_SetAnim(9, 5);
        }
    }
    return 0;
}
