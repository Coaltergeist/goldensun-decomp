/* Cluster Func_809b588..Func_809b588 extracted from goldensun/asm/rom_8a000/rom_9ad70_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9ad70_c_a.o and asm/rom_8a000/rom_9ad70_c_c.o in
 * goldensun/stage1.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char iwram_3001e40[];

void Func_809b588(void)
{
    unsigned char *gs;
    unsigned int arg0;
    unsigned char *pAVar1;
    unsigned char *sprite;
    unsigned char *layer;
    unsigned char *p;
    unsigned int uVar2;
    unsigned char flag;

    gs = (unsigned char *)&gState;
    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    pAVar1 = (unsigned char *)GetFieldActor(arg0);
    sprite = *(unsigned char **)(pAVar1 + 0x50);
    layer = *(unsigned char **)(sprite + 0x28);
    uVar2 = *(unsigned int *)iwram_3001e40 % 5;
    if (uVar2 == 0) {
        p = sprite;
        p += 0x25;
        flag = 1;
        *p = flag;
        p += 1;
        flag = 3;
    } else if (uVar2 == 2) {
        p = sprite;
        p += 0x25;
        layer[5] = 0;
        flag = 1;
        *p = flag;
        p += 1;
    } else {
        return;
    }
    *p = flag;
}
