extern int __GetFlag(int flag);
extern void __CopyMapTiles(int, int, int, int, int, int);

void OvlFunc_890_2008238(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");

    if (__GetFlag(0x80b)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x80c)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x80d)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, fifth, sixth);
    }
    if (__GetFlag(0x80e)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, fifth, sixth);
    }
}

void OvlFunc_890_20082cc(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");

    if (__GetFlag(0x826)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1c, 0x22, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x827)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1c, 0x24, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x828)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1d, 0x22, 0xb, fifth, sixth);
    }
    if (__GetFlag(0x829)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1d, 0x24, 0xb, fifth, sixth);
    }
}

void OvlFunc_890_2008360(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");

    if (__GetFlag(0x80b)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1e, 0x22, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x80c)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1e, 0x24, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x80d)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1f, 0x22, 0xb, fifth, sixth);
    }
    if (__GetFlag(0x80e)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1f, 0x24, 0xb, fifth, sixth);
    }
}

void OvlFunc_890_20083f4(void)
{
    register int fifth asm("r3");
    register int sixth asm("r2");

    if (__GetFlag(0x826)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1e, 0x22, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x827)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1e, 0x24, 0xa, fifth, sixth);
    }
    if (__GetFlag(0x828)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2d, 0x1f, 0x22, 0xb, fifth, sixth);
    }
    if (__GetFlag(0x829)) {
        fifth = 2;
        sixth = 1;
        asm volatile("" : "+r"(fifth), "+r"(sixth));
        __CopyMapTiles(0x2f, 0x1f, 0x24, 0xb, fifth, sixth);
    }
}
