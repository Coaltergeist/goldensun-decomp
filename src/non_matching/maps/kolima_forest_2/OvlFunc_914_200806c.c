extern int iwram_3001ebc;

void *OvlFunc_914_200806c(int *pos, void *unused)
{
    int **objs;
    int *obj;
    unsigned int i;
    int x;

    objs = (int **)((char *)iwram_3001ebc + 0x34);
    x = pos[0] >> 20;
    for (i = 8; i <= 0x41; i++) {
        obj = *objs++;
        if (x == (obj[2] >> 20)
            && pos[1] / 0x10000 == obj[3] / 0x10000
            && (pos[2] >> 20) == (obj[4] >> 20))
            return obj;
    }
    return 0;
}
