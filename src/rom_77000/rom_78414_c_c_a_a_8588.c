typedef unsigned char u8;
typedef unsigned short u16;

extern u8 *GetUnit(int unitId);
extern u8 *GetItemInfo(int itemId);

int GiveItemTo(int unitId, int itemId)
{
    register u8 *unit asm("r6");
    u8 *item;
    register int itemReg asm("r5") = itemId;
    register int slot asm("r0");
    register u16 entry asm("r1");
    register unsigned int quantity asm("r2");
    int mismatch;

    unit = GetUnit(unitId);
    item = GetItemInfo(itemReg);
    if ((item[3] & 0x10) == 0)
        goto find_empty;

    {
        register unsigned initialMask asm("r2");
        asm volatile(
            "mov r3, #0xd8\n\t"
            "ldrh r3, [r6, r3]"
            : "=r"(mismatch)
            : "r"(unit));
        initialMask = 0x1ff;
        asm volatile(
            "eor r3, r5\n\t"
            "and r3, r2\n\t"
            "mov r0, #0"
            : "+r"(mismatch), "=r"(slot)
            : "r"(initialMask), "r"(itemReg));
    }
    if (mismatch != 0) {
        register u16 *inventory asm("r2");
        register unsigned mask asm("r1");
        asm volatile(
            "mov r1, r2\n\t"
            "mov r2, r6\n\t"
            "add r2, #0xd8"
            : "=r"(mask), "=r"(inventory)
            : "r"(unit));
        do {
            slot++;
            if (slot > 14)
                break;
            inventory++;
        } while (((*inventory ^ itemReg) & mask) != 0);
    }
    if (slot == 15)
        goto find_empty;

    {
        register int offset asm("r4");
        asm volatile(
            "lsl r3, r0, #1\n\t"
            "mov r4, r3\n\t"
            "add r4, #0xd8"
            : "=r"(offset)
            : "r"(slot)
            : "r3");
        entry = *(u16 *)(unit + offset);
        asm volatile(
            "lsr r3, r1, #11\n\t"
            "add r2, r3, #1"
            : "=r"(quantity)
            : "r"(entry)
            : "r3");
        if (quantity > 29)
            goto fail;
        *(u16 *)(unit + offset) = (entry & 0x7ff) | (quantity << 11);
        goto done;
    }

find_empty:
    {
        register u16 *inventory asm("r2");
        register int emptyOffset asm("r1");
        register u16 current asm("r3");
        asm volatile(
            "mov r2, r6\n\t"
            "mov r0, #0\n\t"
            "add r2, #0xd8\n\t"
            "mov r1, #0xd8"
            : "=r"(inventory), "=r"(slot), "=r"(emptyOffset)
            : "r"(unit));
        do {
            current = *inventory++;
            if (current == 0) {
                *(u16 *)(unit + emptyOffset) = itemReg;
                goto done;
            }
            slot++;
            emptyOffset += 2;
        } while (slot <= 14);
    }
fail:
    slot = -1;
done:
    return slot;
}
