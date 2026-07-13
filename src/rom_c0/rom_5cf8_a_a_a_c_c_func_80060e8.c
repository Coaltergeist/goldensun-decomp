typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 ewram_2002240[];

void Func_80060e8(const void *source)
{
    register u8 *state asm("r4") = ewram_2002240;
    register unsigned int sum asm("r5") = 0;
    register u8 *packet asm("r1") = *(u8 **)(state + 0x28);

    packet[0] = state[0xb];
    packet[1] = state[2] ^ state[3];
    *(u16 *)(packet + 2) = sum;

    {
        register volatile u32 *dma asm("r3") = (volatile u32 *)0x040000d4;
        register const void *dma_source asm("r0") = source;
        register u8 *dma_dest asm("r1") = packet + 4;
        register u32 dma_control asm("r2") = 0x84000006;

        asm volatile(
            "stmia\t%0!, {%1, %2, %3}\n\t"
            "sub\t%0, #0xc"
            : "+l"(dma)
            : "l"(dma_source), "l"(dma_dest), "l"(dma_control)
            : "memory");
    }

    {
        register u8 *scan asm("r2") = *(u8 **)(state + 0x28);
        register unsigned int count asm("r1") = 0;

        do {
            register unsigned int value asm("r3") = *(u16 *)scan;

            count++;
            scan += 2;
            sum += value;
        } while (count <= 0xd);
    }

    {
        register u8 *packet_end asm("r3") = *(u8 **)(state + 0x28);
        register unsigned int checksum asm("r2") = ~sum;

        asm volatile("" : "+r"(packet_end));
        asm volatile("" : "+r"(checksum));
        *(u16 *)(packet_end + 2) = checksum;
    }

    if (state[0] != 0) {
        register volatile u16 *timer asm("r2") = (volatile u16 *)0x0400010e;
        register unsigned int value asm("r3") = 0;

        asm volatile("" : "+r"(value));
        *timer = value;
    }

    *(int *)(state + 0x14) = -1;

    if (state[0] != 0 && state[8] != 0)
        *(volatile u16 *)0x0400010e = 0xc0;
}
