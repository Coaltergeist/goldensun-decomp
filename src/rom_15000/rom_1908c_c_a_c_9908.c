typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;

void Func_8019908(u32 value, u32 tag)
{
    register u8 **globalSlot asm("r3") = &iwram_3001e8c;
    register u32 savedTag asm("r7");
    register u8 *base asm("r1");
    register u32 valueOffset asm("r3");
    register u32 tagOffset asm("r4");
    register u32 savedValue asm("r6");
    register u32 limit asm("r5");
    register u32 i asm("r0");
    register u32 *valueSlot asm("r2");

    asm volatile("" : "+r"(globalSlot) : : "r7");
    savedTag = tag;
    asm volatile("" : "+r"(savedTag));
    base = *globalSlot;
    asm volatile("" : "+r"(base));
    valueOffset = 0x12bc;
    tagOffset = 0x12dc;
    asm volatile("" : "+r"(valueOffset), "+r"(tagOffset) : : "r6");
    savedValue = value;
    asm volatile("" : "+r"(savedValue));
    limit = 8;
    i = 0;
    asm volatile("" : "+r"(limit), "+r"(i));
    valueSlot = (u32 *)(base + valueOffset);
    asm volatile("" : "+r"(valueSlot));

    do {
        if (*(u16 *)(tagOffset + (u32)base) == 0) {
            *valueSlot = savedValue;
            *(u16 *)(tagOffset + (u32)base) = savedTag;
            break;
        }
        i++;
        valueSlot++;
        tagOffset += 2;
    } while (i != limit);
}
