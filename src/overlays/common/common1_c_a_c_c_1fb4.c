extern unsigned int iwram_3001f3c;
extern unsigned char ewram_2001000[];
extern void *__GetFile(int index);
extern void __DecompressLZ(const void *src, void *dst);
extern int __GetFlag(int flag);
extern void OvlFunc_common1_1928(void);
extern int __StartTask(void (*task)(void), unsigned int priority);

void OvlFunc_common1_1fb4(int fileIndex)
{
    unsigned int ptr = iwram_3001f3c;
    unsigned char *base = ewram_2001000;
    void *file = __GetFile(fileIndex);
    int flag;
    unsigned int value;

    __DecompressLZ(file, (void *)(ptr + 0xf0));
    flag = __GetFlag(0x109);
    if (flag == 0) {
        int one = 1;
        *(unsigned short *)(base + 0) = one;
        *(unsigned short *)(base + 2) = one;
        value = *(unsigned short *)(ptr + 0xe0);
        *(unsigned short *)(base + 8) = flag;
        *(unsigned short *)(base + 4) = value;
        *(unsigned short *)(base + 6) = flag;
    }
    __StartTask(OvlFunc_common1_1928, 0xc85);
}
