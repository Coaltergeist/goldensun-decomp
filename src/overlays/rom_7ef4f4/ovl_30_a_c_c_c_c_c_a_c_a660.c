typedef unsigned char u8;
typedef unsigned short u16;

typedef struct {
    int x;
    int y;
    int z;
} Position;

extern int OvlData_965_200afd4[] asm(".L2fd4");
extern int __Func_8011f54(int value);
extern int OvlFunc_965_200806c(Position *position, u8 *actor);

int OvlFunc_965_200a660(u8 *actorArg)
{
    register u8 *actor asm("r5") = actorArg;
    register int offset asm("r0");
    register int mask asm("r3");
    register int x asm("r1");
    register int z asm("r2");

    offset = OvlData_965_200afd4[*(u16 *)(actor + 6) >> 12];
    mask = 0xffff0000;
    x = *(int *)(actor + 8);
    z = *(int *)(actor + 0x10);
    {
        Position position;
        register Position *pos asm("r6") = &position;

        pos->x = x + (offset & mask);
        pos->z = z + (offset << 16);
        pos->y = __Func_8011f54(actor[0x22]);
        return OvlFunc_965_200806c(pos, actor);
    }
}
