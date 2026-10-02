void OvlFunc_881_200a7dc(void)
{
    struct MapEvent881 {
        int type;
        short id;
        short __unk6;
        int arg;
    };
    extern unsigned char gOvl_0200e3f4[];
    struct MapEvent881 *events = (struct MapEvent881 *)gOvl_0200e3f4;
    int i;

    for (i = 0; ; i++) {
        if (events[i].type == 2 && events[i].id == 0x8a) {
            events[i].type = 1;
            events[i].arg = 0x21;
            return;
        }
        if (events[i].type == -1)
            return;
    }
}
