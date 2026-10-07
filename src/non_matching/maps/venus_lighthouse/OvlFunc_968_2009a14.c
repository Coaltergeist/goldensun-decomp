void OvlFunc_968_2009a14(int arg0)
{
    struct Actor *a;

    a = (struct Actor *)arg0;
    a->flags |= 2;
    a->__unk55 = 0;
    API_Func_8010704(9, 0x18, 1, 1, a->pos.x >> 20, a->pos.z >> 20);
}
