typedef unsigned char u8;
typedef unsigned short u16;

extern void *iwram_3001f38;
extern void Func_8028194(void);
extern int StopTask(void (*task)(void));
extern void CloseUIBox(void *box, int noanim);
extern void Func_8003f3c(int id);
extern void gfree(int slot);
extern void WaitFrames(int frames);

void Func_802851c(void)
{
    u8 *base = iwram_3001f38;
    void *box;
    register short *countPtr asm("r2");
    int i;

    StopTask(Func_8028194);
    box = *(void **)(base + 0x78);
    if (box != 0)
        CloseUIBox(box, 2);
    countPtr = (short *)(base + 0x8e);
    i = 0;
    if (i < *countPtr) {
        short *countPtr2;
        countPtr2 = countPtr;
        asm volatile("" : "+r"(countPtr2));
        base += 0x12;
        do {
            Func_8003f3c(*(u16 *)base);
            i++;
            base += 0x14;
        } while (i < *countPtr2);
    }
    gfree(0x3a);
    WaitFrames(1);
}
