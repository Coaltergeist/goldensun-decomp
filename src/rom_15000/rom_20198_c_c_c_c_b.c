/* Cluster Func_8021c64..Func_8021c64 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_c_a.o and asm/rom_15000/rom_20198_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_iwram(int index, unsigned int size);
extern void *GetFile(int index);
extern void DecompressLZ1(void *src, void *dest);
extern int UploadSprite2(unsigned int slot, void *gfx);
extern void gfree(int index);
extern int _FILE_f1;
#define FILE_f1 ((int)&_FILE_f1)

unsigned int Func_8021c64(unsigned int arg0, unsigned int index)
{
    unsigned char *dest;
    unsigned char *file;
    unsigned char **field;
    unsigned char *src;
    unsigned int result;

    dest = (unsigned char *) galloc_iwram(0x11, 0xc1 << 3);
    file = (unsigned char *) GetFile(FILE_f1);
    field = (unsigned char **)(dest + 0x604);
    src = file + *(unsigned short *)(file + index * 2);
    *field = src;
    DecompressLZ1(src, dest);
    result = UploadSprite2(arg0, dest);
    gfree(0x11);
    return result;
}
