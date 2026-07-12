extern unsigned int Random(void);
extern int Func_80b6b40(int mode, short *actors);
extern void Func_80b8064(int actor);
extern void WaitFrames(int frames);
extern void _Func_80175a0(int message);

int Func_80b8824(void) {
    short actors[14];
    register unsigned int cursor asm("r5");
    register int count asm("r6");
    register int i asm("r7");
    register short *arrayBase asm("r8");
    unsigned int random = Random();

    random <<= 4;
    random >>= 16;
    if (random != 0) {
        register int arg0 asm("r0");
        register short *arg1 asm("r1");

        cursor = (unsigned int)actors;
        asm volatile("" : "+r"(cursor));
        arg0 = 1;
        asm volatile("" : "+r"(arg0), "+r"(cursor));
        arg1 = (short *)cursor;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        count = Func_80b6b40(arg0, arg1);
        asm volatile("" : "+r"(count), "+r"(cursor));
        i = 0;
        asm volatile("" : "+r"(count), "+r"(i), "+r"(cursor));
        if (count != 0) {
            arrayBase = (short *)cursor;
            asm volatile("" : "+r"(arrayBase), "+r"(count), "+r"(i));
            cursor = 0;
            asm volatile("" : "+r"(arrayBase), "+r"(count), "+r"(i), "+r"(cursor));
            do {
                register unsigned int baseLow asm("r2") = (unsigned int)arrayBase;
                register int actor asm("r0");

                asm volatile("" : "+r"(baseLow), "+r"(cursor));
                actor = *(short *)(cursor + baseLow);
                asm volatile("" : "+r"(actor));
                Func_80b8064(actor);
                i++;
                WaitFrames(8);
                cursor += 2;
            } while (i != count);
        }
        WaitFrames(0x16);
        return 1;
    }
    _Func_80175a0(0x844);
    return 0;
}
