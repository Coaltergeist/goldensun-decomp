typedef unsigned short u16;
typedef unsigned int u32;

extern const u16 L372c0[] asm(".L372c0");

void Func_8021a18(char *destination)
{
    register int group asm("r10");
    register int paletteBase asm("r8");
    register int destinationBand asm("r11");
    register int continueLoop asm("r2");

    group = 0;
    paletteBase = 0;
    destinationBand = 0;

    do {
        int row;
        int destinationOffset;

        row = 0;
        destinationOffset = (destinationBand + group) * 64;

        do {
            u16 *output = (u16 *)(destination + destinationOffset);
            const u16 *input = (const u16 *)(0x06000600 + row * 32);
            int column;

            for (column = 0; column < 16; column++) {
                u32 packed = *input++;
                u32 converted = 0;
                int nibble;

                for (nibble = 0; nibble < 4; nibble++) {
                    u32 convertedNibble =
                        L372c0[(packed & 15) + paletteBase] << (nibble * 4);
                    packed >>= 4;
                    converted |= convertedNibble;
                }
                *output++ = converted;
            }
            destinationOffset += 32;
            row++;
        } while (row < 10);
        asm volatile(
            "mov r3, #0x10\n\t"
            "add r8, r3\n\t"
            "mov r3, #1\n\t"
            "mov r2, #4\n\t"
            "add r10, r3\n\t"
            "add r11, r2\n\t"
            "mov r2, r10"
            : "+r" (paletteBase), "+r" (group), "+r" (destinationBand),
              "=r" (continueLoop)
            :
            : "r2", "r3");
    } while (continueLoop < 2);
}
