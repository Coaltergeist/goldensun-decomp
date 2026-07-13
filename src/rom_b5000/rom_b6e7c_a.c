extern unsigned short WeaponTypeTable[] asm("WeaponTypeTable_80c593c");

int GetWeaponType(int item)
{
    register int saved_item asm("r5") = item;
    register int index asm("r4") = 0;
    register unsigned short *table asm("r0") = WeaponTypeTable;
    register unsigned int offset asm("r1");
    register unsigned int entry asm("r2");
    register int value asm("r3");

    asm volatile("" : "+r"(saved_item), "+r"(index), "+r"(table));
loop:
    offset = index;
    offset <<= 1;
    entry = *(unsigned short *)((unsigned char *)table + offset);
    value = 0x1ff;
    asm volatile("" : "+r"(saved_item), "+r"(table), "+r"(offset), "+r"(entry), "+r"(value));
    value &= entry;
    if (saved_item == value) {
        value = *(unsigned short *)((unsigned char *)table + offset);
        table = (unsigned short *)(value >> 9);
        goto done;
    }
    value = entry << 16;
    entry = 1;
    asm volatile("" : "+r"(entry), "+r"(value));
    value >>= 16;
    entry = -entry;
    index++;
    asm volatile("" : "+r"(index), "+r"(entry), "+r"(value));
    if (value != entry)
        goto loop;
    table = (unsigned short *)6;
done:
    return (int)table;
}
