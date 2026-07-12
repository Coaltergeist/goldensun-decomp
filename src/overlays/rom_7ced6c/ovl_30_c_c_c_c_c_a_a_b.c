extern void __CutsceneStart(void);
extern int OvlFunc_946_2008474(int *values);
extern void OvlFunc_946_2008608_4(int, int, int, int) asm("OvlFunc_946_2008608");
extern void __CutsceneEnd(void);

struct Pair946 {
    int first;
    int second;
};

void OvlFunc_946_2009740(void)
{
    int frame_words[8];
    register int *values asm("r5");
    register struct Pair946 *outgoing asm("sp");

    __CutsceneStart();
    values = &frame_words[2];
    asm volatile("" : "+r"(values));
    if (OvlFunc_946_2008474(values) != 0) {
        register struct Pair946 *copy_dest asm("r2") = outgoing;
        register struct Pair946 *copy_src asm("r3");

        asm volatile("" : "+r"(copy_dest));
        copy_src = (struct Pair946 *)&frame_words[6];
        asm volatile("" : "+r"(copy_dest), "+r"(copy_src));
        __builtin_memcpy(copy_dest, copy_src, sizeof(*outgoing));
        OvlFunc_946_2008608_4(values[0], values[1], values[2], values[3]);
    }
    __CutsceneEnd();
}
