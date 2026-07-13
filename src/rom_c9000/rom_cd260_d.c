extern unsigned int iwram_3001e74[];
extern void UploadBGPalette(void *source, void *destination, int blend, int count)
    asm("_UploadBGPalette");

void Func_80cd4b4(void)
{
    unsigned char *state = (unsigned char *)iwram_3001e74[0x1e];
    int *timer = (int *)(state + 0x77b4);
    unsigned char *source = (unsigned char *)iwram_3001e74[0];

    if (*timer > 0) {
        int *frame = (int *)(state + 0x77b8);
        int index = *frame + 1;

        *frame = index;
        UploadBGPalette(source + 0x544, (void *)0x050000c0,
                        0x10000 - index * 0x444, 0x80);
        (*timer)--;
    }
}
