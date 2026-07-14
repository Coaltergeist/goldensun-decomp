extern short ewram_2004c04;
extern short ewram_2004c00;
extern short ewram_2004c08;
extern unsigned char *Lf1220[] asm(".Lf1220");

extern short Func_80f07f0(unsigned char *str, int xOffset, int mode);

void Func_80f0614(void)
{
    register short *c04 asm("r5");
    register int v04 asm("r3");

    c04 = &ewram_2004c04;
    asm volatile("" : "+r"(c04));
    asm volatile("mov r1, #0\n\tldrsh %0, [%1, r1]" : "=r"(v04) : "r"(c04) : "r1");

    if (v04 == 0) {
        register short *c00 asm("r3");
        register int vc00 asm("r2");
        register int copy asm("r4");

        c00 = &ewram_2004c00;
        asm volatile("" : "+r"(c00));
        asm volatile(
            "mov r6, #0\n\t"
            "ldrsh %0, [%2, r6]\n\t"
            "ldrh %1, [%2]"
            : "=r"(vc00), "=r"(copy)
            : "r"(c00)
            : "r6"
        );

        {
            register int adj asm("r3");
            register short *c08 asm("r0");
            register int ia asm("r1");

            adj = vc00;
            asm volatile("" : "+r"(adj));
            if (vc00 < 0) {
                asm volatile("add %0, %1, #7" : "=r"(adj) : "r"(vc00));
            }

            c08 = &ewram_2004c08;
            asm volatile("" : "+r"(c08));

            ia = adj >> 3;
            asm volatile("" : "+r"(ia));

            {
                register int vc08 asm("r3");

                asm volatile("mov r6, #0\n\tldrsh %0, [%1, r6]" : "=r"(vc08) : "r"(c08) : "r6");
                if (vc08 < 0) vc08 += 7;

                {
                    register int ib asm("r3");
                    ib = vc08 >> 3;

                    if (ia != ib) {
                        unsigned char *arg0;
                        int off;

                        *(unsigned short *)c08 = (unsigned short)copy;
                        arg0 = Lf1220[ia];
                        off = ((ia + 0x10) & 0x1f) * 0x18;
                        *c04 = Func_80f07f0(arg0, off, 1);
                    }
                }
            }
        }
    }
}
