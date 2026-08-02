/* Cluster Func_80ad608..Func_80ad608 extracted from goldensun/asm/rom_a1000/rom_ad274_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ad274_c_a_a.o and asm/rom_a1000/rom_ad274_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];   /* @ 0x03001F2C */
extern unsigned int Laf304[] __asm__(".Laf304");
extern int _DeleteSprite(int task);
extern void *_CreateSprite(unsigned int id);
extern void _Sprite_SetAnim(unsigned char *sprite, unsigned int animID);

unsigned int Func_80ad608(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *base;
    unsigned int idx;
    unsigned char *sprite;

    base = *(unsigned char **)iwram_3001f2c;
    idx = (arg0 << 2) + 0x224;
    if (*(unsigned int *)(base + idx) != 0) {
        _DeleteSprite(*(unsigned int *)(base + idx));
        *(unsigned int *)(base + idx) = 0;
    }
    sprite = _CreateSprite(Laf304[arg1]);
    if (sprite != 0) {
        _Sprite_SetAnim(sprite, arg2);
    }
    *(unsigned char **)(base + idx) = sprite;
    return 1;
}
