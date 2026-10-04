void OvlFunc_946_20093ac(void) {
    unsigned int r2;
    short *p;

    r2 = 0xe0;
    r2 <<= 1;
    p = (short *)((char *)&gState + r2);
    if (!API_GetFlag(*p + (0x8c8 - (int)_EVENT_7e))) {
        __CutsceneStart();
        __Func_8091f90(*p, 5);
        *((char *)&gState + 0x22b) = 3;
        switch (*p - (int)_EVENT_7e) {
        case 0:
            __StartMapBattle(0x3f, 0);
            break;
        case 1:
            __StartMapBattle(0x3f, 1);
            break;
        case 2:
            __StartMapBattle(0x3f, 2);
            break;
        case 3:
            __StartMapBattle(0x3f, 3);
            break;
        case 4:
            __StartMapBattle(0x54, 0);
            break;
        case 5:
            __StartMapBattle(0x54, 1);
            break;
        case 6:
            __StartMapBattle(0x54, 2);
            break;
        case 7:
            __StartMapBattle(0x54, 3);
            break;
        case 8:
            __StartMapBattle(0x54, 4);
            break;
        }
        __CutsceneEnd();
    } else {
        __Func_8010560(&gOvl_0200b2bc, 0x2c, 7);
        __PlaySound(0xb7);
        __Func_8091e9c(3);
    }
}
