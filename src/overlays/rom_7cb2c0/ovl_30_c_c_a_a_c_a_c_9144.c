typedef unsigned char u8;

extern u8 *iwram_3001ebc;

u8 *OvlFunc_945_2009144(int x, int y)
{
    register int xReg asm("r0") = x;
    register int upperY asm("r1") = y;
    register int xMargin asm("r2") = 12;
    register int yMargin asm("r4") = 12;
    register u8 **actors asm("r3") = (u8 **)iwram_3001ebc;
    register unsigned int i asm("r5");
    register int upperX asm("r6");
    register int lowerX asm("r14");
    register int lowerY asm("r12");

    asm volatile(""
                 : "+r"(actors), "+r"(xReg), "+r"(upperY),
                   "+r"(xMargin), "+r"(yMargin));
    xMargin = -xMargin;
    asm volatile("" : "+r"(xMargin));
    yMargin = -yMargin;
    asm volatile("" : "+r"(yMargin));
    yMargin += upperY;
    asm volatile("" : "+r"(yMargin));
    xMargin += xReg;
    asm volatile("" : "+r"(xMargin));
    upperX = xReg;
    asm volatile("" : "+r"(upperX));
    i = 8;
    asm volatile("" : "+r"(i));
    lowerX = xMargin;
    asm volatile("" : "+r"(lowerX));
    upperX += 12;
    asm volatile("" : "+r"(upperX));
    lowerY = yMargin;
    asm volatile("" : "+r"(lowerY));
    upperY += 12;
    asm volatile("" : "+r"(upperY));
    actors += 13;
    asm volatile("" : "+r"(actors));
    do {
        register u8 *actor asm("r0") = *actors++;
        register int offset asm("r7") = 10;
        register int actorX asm("r2");
        register int actorY asm("r4");

        asm volatile("mov %1, #10\n\tldrsh %0, [%2, %1]"
                     : "=r"(actorX), "=r"(offset)
                     : "r"(actor));
        asm volatile("mov %1, #18\n\tldrsh %0, [%2, %1]"
                     : "=r"(actorY), "=r"(offset)
                     : "r"(actor));

        if (lowerX >= actorX || upperX <= actorX ||
            lowerY >= actorY || upperY <= actorY) {
            i++;
            continue;
        }
        return actor;
    } while (i < 0x42);
    return 0;
}
