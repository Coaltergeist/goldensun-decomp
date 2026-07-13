typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern void CloseUIBox(void *box, unsigned int option);
extern void WaitFrames(unsigned int frames);

void Func_8019a54(void)
{
    int i;
    u8 *slot = iwram_3001e8c + 0x620;

    i = 0;
    do {
        u8 *box = *(u8 **)slot;

        if (box != 0 && *(u32 *)(box + 0x18) == 0 &&
            *(u16 *)(box + 0x16) != 0 && *(u16 *)(box + 0x14) != 0) {
            CloseUIBox(box, *(u16 *)(box + 0x16) & 2);
        }
        i++;
        slot += 0x28;
    } while (i != 3);
    WaitFrames(10);
}
