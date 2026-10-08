void OvlFunc_947_2009fd4(void)
{
    API_CutsceneStart();
    if (OvlFunc_947_2009268() == 0) {
        ((struct Actor947 *)__MapActor_GetActor(0))->f55 &= 0xfe;
        ((struct Actor947 *)__MapActor_GetActor(0))->f23 &= 0xfe;
        OvlFunc_947_20083a8();
        OvlFunc_947_2009d84();
        ((struct Actor947 *)__MapActor_GetActor(0))->f55 |= 1;
        ((struct Actor947 *)__MapActor_GetActor(0))->f23 |= 1;
    }
    API_CutsceneEnd();
}
