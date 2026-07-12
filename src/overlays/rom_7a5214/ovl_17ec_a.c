extern unsigned char TileCopyTable[] asm(".L1ca8");
extern int __GetFlag(int flag);
extern void __CopyMapTiles(int x, int y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_918_20097ec(void)
{
    register unsigned char *table asm("r6") = TileCopyTable;
    register int offset asm("r5");
    register int one asm("r7");
    register int sentinel asm("r8");
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2") = 0;
    register int arg3 asm("r3");

    arg3 = *(short *)(table + arg2);
    arg2 = 1;
    arg2 = -arg2;
    if (arg3 == arg2)
        return;
    sentinel = arg2;
    offset = 0;
    one = 1;
    asm volatile("" : "+r"(sentinel), "+r"(offset), "+r"(one));
    do {
        arg0 = *(short *)(table + offset);
        asm volatile("" : "+r"(arg0));
        if (__GetFlag(arg0) != 0) {
            arg3 = offset + 2;
            asm volatile("" : "+r"(table), "+r"(arg3));
            arg3 = *(short *)(table + arg3);
            if (arg3 != 0) {
                arg3 = offset + 4;
                asm volatile("" : "+r"(table), "+r"(arg3));
                arg0 = *(short *)(table + arg3);
                arg3 = offset + 6;
                asm volatile("" : "+r"(table), "+r"(arg0), "+r"(arg3));
                arg1 = *(short *)(table + arg3);
                arg3 += 2;
                asm volatile("" : "+r"(table), "+r"(arg1), "+r"(arg3));
                arg2 = *(short *)(table + arg3);
                arg3 += 2;
                asm volatile("" : "+r"(table), "+r"(arg2), "+r"(arg3));
                arg3 = *(short *)(table + arg3);
                asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3), "+r"(one));
                __CopyMapTiles(arg0, arg1, arg2, arg3, one, one);
            }
        }
        table = TileCopyTable;
        offset += 0xc;
        arg3 = *(short *)(table + offset);
        asm volatile("" : "+r"(table), "+r"(offset), "+r"(arg3), "+r"(sentinel));
    } while (arg3 != sentinel);
}
