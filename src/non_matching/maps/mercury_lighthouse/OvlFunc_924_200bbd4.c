void OvlFunc_924_200bbd4(int x, int y, int z)
{
    struct EffectData data;

    data.unk4 = 7;
    data.unk0 = 1;
    data.unk8 = 0xb333;
    data.unkc = 0xb333;
    x = x + (((__Random() * 16) >> 16) << 16) - 0x80000;
    z = z + (((__Random() * 8) >> 16) << 16) - 0x40000;
    OvlFunc_common0_10c(x, y, z, 0, 0, 0, 0xb0000, &data);
}
