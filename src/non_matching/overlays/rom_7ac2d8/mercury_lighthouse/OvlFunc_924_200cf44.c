extern unsigned char *iwram_3001f30;

void OvlFunc_924_200cf44(void)
{
    unsigned char *p;

    p = iwram_3001f30;
    __MapActor_SetPos(0xb, 0x3480000, 0x2580000);
    __Func_8096fb0(0x5d, 1);
    __Func_80970f8(3, 0xb);
    p[0x71c] |= 8;
    __Func_809728c();
    __FieldMove(1);
    __Func_8097174();
}
