extern int _divsi3_RAM(int, int);
int OvlFunc_968_20085e4(struct Actor *actor)
{
    extern unsigned char iwram_3001e40[];
    extern unsigned int __Random(void);
    extern void OvlFunc_968_2008118(int, int, int, int, int, int, int, void *);
    int stack_buf[10];
    int flag;
    int x;
    int y;
    int speed;

    flag = *(unsigned int *)iwram_3001e40 & 7;
    if (flag == 0) {
        stack_buf[0] = 3 - ((__Random() * 2) >> 16);
        stack_buf[1] = 0xe;
        stack_buf[2] = 0x6666;
        stack_buf[3] = 0x6666;
        x = actor->pos.x + ((((__Random() * 9) >> 16) - 4) << 16);
        y = actor->pos.y + ((0x20 - ((__Random() * 32) >> 16)) << 16);
        speed = _divsi3_RAM((int)((((__Random() * 5) >> 16) << 16) + 0x50000), 10);
        OvlFunc_968_2008118(x, y, actor->pos.z, 0, speed, flag, 0xb0000, stack_buf);
    }
    return 0;
}
