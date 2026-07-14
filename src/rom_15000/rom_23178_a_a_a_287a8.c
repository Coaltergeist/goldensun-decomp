typedef unsigned char u8;
typedef unsigned short u16;

extern void *iwram_3001f38;
extern int AllocSpriteSlot(void);
extern void LoadUIIcon(int slot, int icon);

void AddMenuBarOption(int option)
{
    register u8 *base asm("r8");
    register int opt asm("r10");
    register int count asm("r7");
    register short *countPtr asm("r2");
    unsigned int countU;

    base = iwram_3001f38;
    asm volatile(
        "mov %1, %2\n\t"
        "add %1, %1, #142\n\t"
        "mov r1, #0\n\t"
        "ldrsh %0, [%1, r1]"
        : "=r"(count), "=r"(countPtr)
        : "r"(base)
        : "r1");
    asm volatile("mov %0, %1" : "=r"(opt) : "r"(option), "r"(count));
    countU = *(u16 *)countPtr;

    asm volatile("" : "+r"(base), "+r"(opt), "+r"(count));

    if (count <= 5) {
        register int slot asm("r6");
        register int entryOff asm("r5");
        u8 *entry;
        register int attrValue asm("r3");

        {
            register int call0 asm("r0");
            register int call1 asm("r1");

            *(u16 *)countPtr = countU + 1;
            call0 = AllocSpriteSlot();
            call1 = opt;
            asm volatile(
                "add %2, %0, #0\n\t"
                "lsl %3, %4, #2\n\t"
                "bl LoadUIIcon"
                : "+r"(call0), "+r"(call1), "=r"(slot), "=r"(entryOff)
                : "r"(count)
                : "r2", "r3", "r12", "lr", "memory");
        }
        entryOff = (entryOff + count) * 4;
        entryOff = entryOff + (int)base;
        entry = (u8 *)entryOff;
        attrValue = count * 0x18 + 0x20;
        *(u16 *)(entry + 0xc) = attrValue;
        attrValue = 0x88;
        *(u16 *)(entry + 0xe) = attrValue;
        {
            int byteOff = count;

            byteOff = byteOff + 0x84;
            asm volatile(
                "mov r1, %1\n\t"
                "mov r2, %2\n\t"
                "strh %3, [%0, #18]\n\t"
                "strb r1, [r2, %4]"
                :
                : "r"(entry), "r"(opt), "r"(base), "r"(slot), "r"(byteOff)
                : "r1", "r2", "memory");
        }
    }
}
