extern struct {
    unsigned short count;
    struct {
        unsigned int value;
        unsigned int dest;
        unsigned int control;
    } tasks[32];
} gDMATaskCount;

void __StopTask(void (*)(void));
void OvlFunc_880_2008154(void);

void OvlFunc_880_2008154(void) {
    extern unsigned short timer __asm__(".L16b0");
    unsigned short step = ++timer >> 1;
    unsigned short ime;
    int idx;

    ime = *(volatile unsigned short *)0x04000208;
    *(volatile unsigned short *)0x04000208 = 0x04000208;
    if (gDMATaskCount.count <= 31) {
        idx = gDMATaskCount.count++;
        gDMATaskCount.tasks[idx].value = 0x2e51;
        gDMATaskCount.tasks[idx].dest = 0x04000050;
        gDMATaskCount.tasks[idx].control = 0x80 << 10;
    }
    *(volatile unsigned short *)0x04000208 = ime;

    ime = *(volatile unsigned short *)0x04000208;
    *(volatile unsigned short *)0x04000208 = 0x04000208;
    if (gDMATaskCount.count <= 31) {
        idx = gDMATaskCount.count++;
        gDMATaskCount.tasks[idx].value = ((16 - step) << 8) | step;
        gDMATaskCount.tasks[idx].dest = 0x04000052;
        gDMATaskCount.tasks[idx].control = 0x80 << 10;
    }
    *(volatile unsigned short *)0x04000208 = ime;

    if (step > 15) {
        __StopTask(OvlFunc_880_2008154);
    }
}
