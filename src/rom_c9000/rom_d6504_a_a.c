extern unsigned char iwram_3001eec[];

void Task_SpinCamera(void) {
    register unsigned int temp asm("r3");
    register unsigned char *battle asm("r2");
    register unsigned char *camera asm("r1");
    register int *phase asm("r0");
    register unsigned int speedOffset asm("r4");

    temp = (unsigned int)iwram_3001eec;
    asm volatile("" : "+r"(temp));
    battle = *(unsigned char **)temp;
    asm volatile("" : "+r"(battle), "+r"(temp));
    temp -= 0x6c;
    asm volatile("" : "+r"(battle), "+r"(temp));
    camera = *(unsigned char **)temp;
    asm volatile("" : "+r"(battle), "+r"(camera));
    temp = 0x77b0;
    asm volatile("" : "+r"(battle), "+r"(camera), "+r"(temp));
    phase = (int *)(battle + temp);
    asm volatile("" : "+r"(battle), "+r"(camera), "+r"(phase));
    if (*phase == 1) {
        speedOffset = 0x77ac;
        asm volatile("" : "+r"(speedOffset), "+r"(battle), "+r"(camera), "+r"(phase));
        temp = (unsigned int)(battle + speedOffset);
        asm volatile("" : "+r"(temp), "+r"(camera), "+r"(phase));
        battle = (unsigned char *)*(int *)temp;
        asm volatile("" : "+r"(battle), "+r"(camera), "+r"(phase));
        temp = *(unsigned short *)(camera + 0x36);
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        temp += (int)battle;
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        battle = 0;
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        *(unsigned short *)(camera + 0x36) = temp;
        *phase = (int)battle;
    } else {
        speedOffset = 0x77ac;
        asm volatile("" : "+r"(speedOffset), "+r"(battle), "+r"(camera), "+r"(phase));
        temp = (unsigned int)(battle + speedOffset);
        asm volatile("" : "+r"(temp), "+r"(camera), "+r"(phase));
        battle = (unsigned char *)*(int *)temp;
        asm volatile("" : "+r"(battle), "+r"(camera), "+r"(phase));
        temp = (unsigned int)battle >> 31;
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        battle += temp;
        asm volatile("" : "+r"(battle), "+r"(camera), "+r"(phase));
        temp = *(unsigned short *)(camera + 0x36);
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        battle = (unsigned char *)((int)battle >> 1);
        asm volatile("" : "+r"(temp), "+r"(battle), "+r"(camera), "+r"(phase));
        temp += (int)battle;
        asm volatile("" : "+r"(temp), "+r"(camera), "+r"(phase));
        *(unsigned short *)(camera + 0x36) = temp;
        asm volatile("" : : : "memory");
        temp = *phase;
        asm volatile("" : "+r"(temp), "+r"(phase));
        if (temp == 2) {
            temp = 0;
            asm volatile("" : "+r"(temp));
        } else {
            temp = 2;
            asm volatile("" : "+r"(temp));
        }
        *phase = temp;
    }
}
