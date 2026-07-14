extern unsigned int iwram_3001e8c;
extern void Func_8097868(void);
extern void StartTask(void *task, int priority);

void Func_8097a7c(void) {
    unsigned short *p;
    int priority;

    *(unsigned char *)(iwram_3001e8c + 0xea4) = 1;

    p = (unsigned short *)0x50001e2;
    priority = 0x90;
    *p = 0x739c;
    p += 2;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    *p = 0x739c;
    p += 1;
    asm volatile("" : "+r"(p));
    *p = 0x739c;
    priority <<= 3;

    StartTask(Func_8097868, priority);
}
