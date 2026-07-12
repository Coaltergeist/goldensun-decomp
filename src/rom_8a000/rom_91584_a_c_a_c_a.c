extern unsigned char iwram_3001ebc[];
extern unsigned char gDebugMode[];
extern unsigned int gKeyPress[];

void Task_Cutscene(void) {
    register unsigned char *base asm("r1") = *(unsigned char **)iwram_3001ebc;

    if (*gDebugMode != 0) {
        register unsigned int *keys asm("r0");
        register unsigned int mask asm("r2");
        register unsigned int value asm("r3");

        keys = gKeyPress;
        asm volatile("" : "+r"(keys), "+r"(base));
        mask = 0x80;
        asm volatile("" : "+r"(keys), "+r"(mask), "+r"(base));
        value = *keys;
        asm volatile("" : "+r"(keys), "+r"(mask), "+r"(value), "+r"(base));
        mask <<= 2;
        asm volatile("" : "+r"(keys), "+r"(mask), "+r"(value), "+r"(base));
        value &= mask;
        asm volatile("" : "+r"(keys), "+r"(value), "+r"(base));
        if (value != 0) {
            value = 0xe6;
            asm volatile("" : "+r"(keys), "+r"(value), "+r"(base));
            value <<= 1;
            asm volatile("" : "+r"(keys), "+r"(value), "+r"(base));
            mask = (unsigned int)(base + value);
            asm volatile("" : "+r"(keys), "+r"(mask), "+r"(base));
            value = 0;
            asm volatile("" : "+r"(keys), "+r"(mask), "+r"(value), "+r"(base));
            *(int *)mask = value;
        }
        value = *keys;
        asm volatile("" : "+r"(keys), "+r"(value), "+r"(base));
        mask = 0x80;
        asm volatile("" : "+r"(keys), "+r"(mask), "+r"(value), "+r"(base));
        mask <<= 1;
        asm volatile("" : "+r"(keys), "+r"(mask), "+r"(value), "+r"(base));
        value &= mask;
        asm volatile("" : "+r"(value), "+r"(base));
        if (value != 0) {
            value = 0xe6;
            asm volatile("" : "+r"(value), "+r"(base));
            value <<= 1;
            asm volatile("" : "+r"(value), "+r"(base));
            mask = (unsigned int)(base + value);
            asm volatile("" : "+r"(mask));
            value = 1;
            asm volatile("" : "+r"(mask), "+r"(value));
            value = -value;
            asm volatile("" : "+r"(mask), "+r"(value));
            *(int *)mask = value;
        }
    }
}
