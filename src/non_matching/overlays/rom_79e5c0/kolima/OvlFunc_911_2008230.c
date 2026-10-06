void __CutsceneEnd(void);
void __CutsceneStart(void);
void *__MapActor_GetActor(int);

void OvlFunc_911_2008230(void)
{
    unsigned char *p;
    unsigned short r5;

    p = __MapActor_GetActor(0);
    r5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((unsigned int)(r5 + 0xffff5fff) <= 0x3ffe) {
        __UI_Sanctum(0x10);
    } else {
        __MessageID(0x16b3);
        __Func_8093054(0x10, 0);
    }
    __CutsceneEnd();
}
