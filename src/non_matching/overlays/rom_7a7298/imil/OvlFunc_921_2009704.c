extern void __Func_80929d8(void *, int);

void OvlFunc_921_2009704(void *actor)
{
    unsigned char *a = actor;
    unsigned int *p50;

    a[0x55] = 0;
    *(unsigned short *)(a + 0x64) = 0;
    a[0x23] &= 0xfe;

    p50 = *(unsigned int **)(a + 0x50);
    ((unsigned char *)p50)[9] = (((unsigned char *)p50)[9] & 0xf2) | 4;

    __Func_80929d8(actor, 9);
    __Actor_SetSpriteFlags(actor, 0);

    *(unsigned int *)(a + 0x18) = 0x8000;
    *(unsigned int *)(a + 0x1c) = 0x8000;
}
