void OvlFunc_881_200811c(unsigned int arg0) {
    short *p;

    p = (short *)((char *)arg0 + 0x64);
    if (*p > 0) {
        __DeleteActor();
    } else {
        *(unsigned short *)p = *(unsigned short *)((char *)arg0 + 0x64) + 1;
    }
}
