extern void __CutsceneStart(void);
extern int OvlFunc_947_2008758(int *values);
extern void OvlFunc_947_20088ec_4(int, int, int, int) asm("OvlFunc_947_20088ec");
extern void __CutsceneEnd(void);

struct Pair947 {
    int first;
    int second;
};

void OvlFunc_947_2009544(void)
{
    int frame_words[8];
    register int *values asm("r5");
    register struct Pair947 *outgoing asm("sp");

    __CutsceneStart();
    values = &frame_words[2];
    asm volatile("" : "+r"(values));
    if (OvlFunc_947_2008758(values) != 0) {
        register struct Pair947 *copy_dest asm("r2") = outgoing;
        register struct Pair947 *copy_src asm("r3");

        asm volatile("" : "+r"(copy_dest));
        copy_src = (struct Pair947 *)&frame_words[6];
        asm volatile("" : "+r"(copy_dest), "+r"(copy_src));
        __builtin_memcpy(copy_dest, copy_src, sizeof(*outgoing));
        OvlFunc_947_20088ec_4(values[0], values[1], values[2], values[3]);
    }
    __CutsceneEnd();
}
