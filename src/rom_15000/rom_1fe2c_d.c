extern unsigned int iwram_3001f2c;
extern void _DeleteSprite(unsigned int sprite);
extern void StopTask(void *task);
extern void Func_80200cc(void);

void Func_8020088(void)
{
    unsigned char *spriteTable = (unsigned char *)iwram_3001f2c;
    int slot;

    StopTask((void *)&Func_80200cc);
    for (slot = 0x89; slot <= 0x8c; slot++) {
        if (*(unsigned int *)(spriteTable + (slot << 2)) != 0) {
            _DeleteSprite(*(unsigned int *)(spriteTable + (slot << 2)));
            *(unsigned int *)(spriteTable + (slot << 2)) = 0;
        }
    }
}
