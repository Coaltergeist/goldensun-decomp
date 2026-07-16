/* Cluster Func_801173c..Func_801173c extracted from goldensun/asm/rom_9000/rom_11568_a_c_c.s.
 *
 * Total .text for this TU = 96 bytes (= 0x60).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_11568_a_c_c_a.o and asm/rom_9000/rom_11568_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001e70;
extern void (*iwram_3001cfc)(void);
extern void Func_801161c(void);
extern void Func_80113e4(void);
extern void Func_801179c(void);
extern void Func_800439c(void *func);
extern void WaitFrames(unsigned int nframes);
extern void *GetFile(int index);
extern void DecompressLZ(void *src, void *dst);
extern unsigned char gBuffer[65536];
extern int _FILE_d5;
typedef struct {
unsigned char pad[0x100];
unsigned short f100;
unsigned short f102;
} FieldState;

void Func_801173c(void)
{
    FieldState *base;

    base = (FieldState *)iwram_3001e70;
    iwram_3001cfc = Func_801161c;
    base->f100 = 0;
    base->f102 = 0x9f;
    WaitFrames(1);
    DecompressLZ(GetFile((int)&_FILE_d5), gBuffer);
    Func_80113e4();
    Func_800439c(Func_801179c);
    WaitFrames(1);
}
