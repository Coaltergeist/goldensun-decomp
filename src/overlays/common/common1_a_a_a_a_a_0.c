extern int __GetFlagByte(int flag);
extern void __MapActor_SetPos(int actorId, int x, int z);

void OvlFunc_common1_0(void)
{
    register int base asm("r6");
    register int x asm("r5");
    register int z asm("r2");

    x = __GetFlagByte(0x380);
    z = __GetFlagByte(0x388);
    base = 0x80000;
    x = (x << 20) + base;
    z = (z << 20) + base;
    __MapActor_SetPos(1, x, z);

    x = __GetFlagByte(0x390);
    z = __GetFlagByte(0x398);
    x = (x << 20) + base;
    z = (z << 20) + base;
    __MapActor_SetPos(2, x, z);

    x = __GetFlagByte(0x3a0);
    z = __GetFlagByte(0x3a8);
    x = (x << 20) + base;
    z = (z << 20) + base;
    __MapActor_SetPos(3, x, z);
}
