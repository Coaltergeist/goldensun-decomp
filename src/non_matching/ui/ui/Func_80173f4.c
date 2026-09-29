extern void StartTask(void *task, int priority);
extern int UploadSpriteGFX(int slot, unsigned int size, unsigned char *gfx);

extern void Func_801789c(void);

void Func_80173f4(void)
{
    unsigned char *r5;
    unsigned short r0;

    r5 = *(unsigned char **)iwram_3001e8c;
    r0 = UploadSpriteGFX(0x5f, 0x2000, 0);
    *(unsigned short *)(r5 + 0x12b8) = r0;
    *(unsigned short *)(r5 + 0x12b0) = 9;
    *(unsigned short *)(r5 + 0xea8) = 0xa;
    *(unsigned short *)(r5 + 0xeac) = 0;
    *(unsigned short *)(r5 + 0xeae) = 0xf;
    *(unsigned short *)(r5 + 0x12b2) = 0;
    StartTask((void *)Func_801789c, 0xc80);
}
