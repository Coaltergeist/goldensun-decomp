/* Cluster Func_8091f14..Func_8091f14 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern void *iwram_3001ebc;
extern GlobalState gState;
extern void Func_809537c(int a);
extern int Func_808b074(int a);
extern void *GetFieldActor(int actorID);
extern void Func_808adf0(void *a);
extern void Func_808b320(int a, int b);

void Func_8091f14(unsigned int arg0, unsigned int arg1)
{
    unsigned char *base;
    unsigned char *g;
    unsigned int flag;
    unsigned short val;

    base = (unsigned char *)iwram_3001ebc;
    flag = arg0 & 0x800;
    arg0 = arg0 & 0xff;
    if (flag == 0) {
        Func_809537c(arg0);
    }
    g = (unsigned char *)&gState;
    val = (arg1 + 300) | flag;
    *(unsigned short *)(g + 0x234) = val;
    *(unsigned short *)(base + 0x17c) = Func_808b074(arg1);
    if (*(short *)(base + 0x19e) == 3) {
        Func_808adf0((void *)((unsigned char *)GetFieldActor(*(int *)(g + 0x1f4)) + 8));
    }
    {
        unsigned long long t = 0;
        unsigned int y;
        do { t = (unsigned long) t; } while (0);
        y = (unsigned int) t;
        Func_808b320(0, y);
    }
}
