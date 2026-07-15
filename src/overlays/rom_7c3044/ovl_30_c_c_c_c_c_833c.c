typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern int __GetFlag(int flag);
extern void __DeleteFieldActor(int actor);
extern void __Func_8092950(int actor, int arg1);
extern void __CopyMapTiles(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_937_200833c(void)
{
    unsigned int r3;
    unsigned int r2;
    short state;
    int destination_x;
    int destination_y;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    state = *(short *)((char *)r3 + r2);

    switch (state) {
    case 3:
        destination_x = 4;
        destination_y = 2;
        __CopyMapTiles(0x1e, 0xe, 0x1e, 0x10, destination_x, destination_y);
        break;
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 17:
        if (__GetFlag(0x911)) {
            __DeleteFieldActor(0xa);
            __DeleteFieldActor(0xb);
            __DeleteFieldActor(0xc);
            __DeleteFieldActor(0xd);
            __DeleteFieldActor(0xe);
            __DeleteFieldActor(0x11);
            __DeleteFieldActor(0x12);
            __DeleteFieldActor(0x13);
            __DeleteFieldActor(0xf);
        } else {
            __Func_8092950(0xd, 2);
        }
        break;
    default:
        if (__GetFlag(0x911)) {
            __DeleteFieldActor(0x10);
            __DeleteFieldActor(0x11);
        }
        break;
    }
}
