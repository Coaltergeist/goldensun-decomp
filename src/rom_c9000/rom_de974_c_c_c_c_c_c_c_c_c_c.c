void Func_80df9d0(unsigned char *source, unsigned char *destination, int stride)
{
    int row = 0;
    int row_count = 0x120;
    register int source_offset asm("r5") = 0;

    do {
        int destination_offset = source_offset / 2;
        {
            register unsigned char *source_reg asm("r3") = source;
            register unsigned char *pixel asm("r4");
            int column;

            asm volatile("" : "+r"(source_reg));
            column = 0;
            asm volatile("add %0, %1, %2"
                         : "=r"(pixel)
                         : "r"(source_offset), "r"(source_reg));
            do {
                unsigned char value = *pixel++;

                destination[destination_offset + column / 2] = value;
                column++;
            } while (column != 0x28);
        }
        row++;
        source_offset += stride;
    } while (row != row_count);
}
