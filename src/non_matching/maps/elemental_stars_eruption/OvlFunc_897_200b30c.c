extern void *__galloc_ewram(unsigned int, unsigned int);
extern void __Func_800c548(unsigned char *, int);
extern int __StartTask(void (*)(void), unsigned int);
extern void OvlFunc_897_200b01c(void);
extern int L3a68[] __asm__(".Lm897_3a68");
extern int L3a90[] __asm__(".Lm897_3a90");

extern unsigned char *Eruption_GetActor(int) __asm__("__MapActor_GetActor");

void OvlFunc_897_200b30c(unsigned int arg0, unsigned int arg1)
{
    volatile unsigned int zero;
    unsigned char *ptr;
    unsigned char *elem;
    unsigned int i;
    unsigned char *actor;
    unsigned char *sub;

    zero = 0;
    ptr = (unsigned char *)__galloc_ewram(0x21, 0x194);
    *(volatile unsigned int *)0x40000d4 = (unsigned int)&zero;
    *(volatile unsigned int *)0x40000d8 = (unsigned int)ptr;
    *(volatile unsigned int *)0x40000dc = 0x85000065;

    if (arg1 > 10) {
        arg1 = 10;
    }

    elem = ptr;
    for (i = 0; i < arg1; i++) {
        actor = Eruption_GetActor(arg0);
        sub = *(unsigned char **)(actor + 0x50);
        *(unsigned char **)elem = actor;
        sub[0x26] = 0;
        actor[0x55] = 0;
        __Func_800c548(Eruption_GetActor(arg0), 1);
        *(int *)(elem + 0x1c) = L3a68[i];
        *(int *)(elem + 0x20) = -L3a90[i];
        elem[0x24] = 3;
        elem += 0x28;
        arg0++;
    }

    *(unsigned short *)(ptr + 0x190) = arg1;
    __StartTask(OvlFunc_897_200b01c, 0xc80);
}
