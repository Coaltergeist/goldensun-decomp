typedef unsigned int u32;

extern u32 gBuffer[];

void Func_8010704(int srcX, int srcY, int width, int height,
                  int dstX, int dstY)
{
    register int rows asm("r14");
    register int workY asm("r3");
    register int columns asm("r12");
    register int workX asm("r2");
    register u32 *srcBase asm("r8");
    register u32 *dstBase asm("r10");
    register u32 *base asm("r4");
    rows = height;
    asm volatile("" : "+r"(rows), "+r"(width), "+m"(dstY), "+m"(dstX));
    workY = dstY;
    asm volatile("" : "+r"(workY), "+r"(width), "+m"(dstX));
    columns = width;
    asm volatile("" : "+r"(columns), "+m"(dstX));
    workX = dstX;
    asm volatile("" : "+r"(workX));
    base = gBuffer;
    asm volatile("" : "+r"(base));

    workY <<= 7;
    workY += workX;
    srcY <<= 7;
    srcBase = base;
    workY <<= 2;
    asm volatile("" : "+r"(workY));
    srcY += srcX;
    workY += (int)srcBase;
    srcY <<= 2;

    {
        register int initialRows asm("r2") = rows;
        asm volatile("" : "+r"(initialRows));
        dstBase = (u32 *)workY;
        srcBase = (u32 *)((unsigned char *)srcBase + srcY);
        if (initialRows > 0) {
            register int row asm("r5") = 0;

            do {
                register int offset asm("r3") = (u32)row >> 7;
                register u32 *dstRoot asm("r4") = dstBase;
                register u32 *srcRoot asm("r2") = srcBase;
                register u32 *dst asm("r1");
                register u32 *src asm("r0");
                asm volatile("" : "+r"(offset), "+r"(dstRoot), "+r"(srcRoot));
                dst = (u32 *)((unsigned char *)dstRoot + offset);
                src = (u32 *)((unsigned char *)srcRoot + offset);
                asm volatile("" : "+r"(dst), "+r"(src));

                {
                    register int initialColumns asm("r3") = columns;
                    asm volatile("" : "+r"(initialColumns));
                    if (initialColumns > 0) {
                        register u32 lowMask asm("r7") = 0x00000fff;
                        register u32 highMask asm("r6") = 0xfffff000;
                        register int column asm("r4") = 0;
                        asm volatile("" : "+r"(lowMask), "+r"(highMask), "+r"(column));

                        do {
                            register u32 dstValue asm("r2") = *dst;
                            register u32 srcValue asm("r3") = *src++;
                            register int increment asm("r2");
                            register int next asm("r3");

                            dstValue &= lowMask;
                            srcValue &= highMask;
                            dstValue |= srcValue;
                            *dst++ = dstValue;

                            increment = 0x80;
                            asm volatile("" : "+r"(increment));
                            increment <<= 9;
                            next = column + increment;
                            asm volatile("" : "+r"(next));
                            column = next;
                        } while ((int)((u32)column >> 16) < columns);
                    }
                }

                {
                    register int increment asm("r4") = 0x80;
                    register int next asm("r3");
                    asm volatile("" : "+r"(increment));
                    increment <<= 9;
                    next = row + increment;
                    asm volatile("" : "+r"(next));
                    row = next;
                }
            } while ((int)((u32)row >> 16) < rows);
        }
    }
}
