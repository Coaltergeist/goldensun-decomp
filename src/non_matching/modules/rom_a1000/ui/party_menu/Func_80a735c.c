extern unsigned char *_GetMoveInfo(unsigned int moveId);

unsigned int Func_80a735c(unsigned int arg0) {
    unsigned char *info;
    unsigned int id;

    id = (arg0 << 18) >> 18;
    info = _GetMoveInfo(id);
    if (info[0xc] != 0) {
        return 0;
    }
    if ((info[1] & 0xc0) == 0xc0) {
        return 0;
    }
    return 1;
}
