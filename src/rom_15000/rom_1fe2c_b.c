extern unsigned int iwram_3001f2c;
extern void _DeleteSprite(unsigned int sprite);
extern void StopTask(void *task);
extern void Func_801ff58(void);

void Func_801ff14(void)
{
    unsigned int spriteTable = iwram_3001f2c;
    register int remaining asm("r6");
    register unsigned int zero asm("r8");
    /* Pointer-shaped to preserve the original Thumb base/offset operand order. */
    unsigned char *spriteOffset;

    spriteOffset = (unsigned char *)0x8a;
    StopTask((void *)&Func_801ff58);
    zero = 0;
    spriteOffset = (unsigned char *)((unsigned int)spriteOffset << 1);
    remaining = 3;
    do {
        if (*(unsigned int *)(spriteOffset + spriteTable) != 0) {
            _DeleteSprite(*(unsigned int *)(spriteOffset + spriteTable));
            *(unsigned int *)(spriteOffset + spriteTable) = zero;
        }
        remaining--;
        spriteOffset += 4;
    } while (remaining >= 0);
}
