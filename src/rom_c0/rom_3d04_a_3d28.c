typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern u8 iwram_3001d00;
extern u32 iwram_3001d40[];
extern int sin(int);
extern int cos(int);
extern unsigned char divsi3_RAM[];

unsigned int Func_8003d28(const s16 *input)
{
    register int x asm("r8") = input[0];
    register unsigned int index asm("r9") = iwram_3001d00;
    register int y asm("r10") = input[1];
    register int angle asm("r6") = ((const u16 *)input)[2];

    if (index > 0x1f)
        return 0;
    {
        register u16 *matrix asm("r7") = (u16 *)&iwram_3001d40[index * 2];
        if ((x == y || -x == y) && angle == 0) {
            register int (*divider)(int, int) asm("r3") =
                (int (*)(int, int))divsi3_RAM;
            int scale = divider(0x10000, y);
            int first = scale;
            if (-x == y)
                first = -scale;
            *(u32 *)&matrix[0] = (u16)first;
            *(u32 *)&matrix[2] = (u32)scale << 16;
        } else {
            int sine = sin(angle);
            int cosine = cos(angle);
            *matrix++ = cosine / x;
            *matrix++ = sine / x;
            sine = -sine;
            *matrix++ = sine / y;
            *matrix = cosine / y;
        }
        iwram_3001d00 = index + 1;
    }
    return index;
}
