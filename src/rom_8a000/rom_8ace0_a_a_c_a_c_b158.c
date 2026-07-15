typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

typedef struct {
    s16 area;
    u16 condition;
    void *name;
} LocationNameEntry;

extern LocationNameEntry L9ddd8[] asm(".L9ddd8");
extern int GetMapArea(void);

void *GetLocationName(int location, int variant)
{
    register int inputLocation asm("r0") = location;
    register int inputVariant asm("r1") = variant;
    register int requested asm("r7");
    register int requestedVariant asm("r6");
    register LocationNameEntry *entry asm("r5");
    register void *result asm("r8");
    register int mapArea asm("r12");
    register int area asm("r1");
    register int signedArea asm("r3");
    register int terminator asm("r2");
    register int maximum asm("r0");
    register int endValue asm("r14");

    asm volatile("mov r3, #0\n\tmov r6, r1\n\tldr r5, =.L9ddd8\n\tmov r8, r3\n\tmov r7, r0"
                 : "=r" (requested), "=r" (requestedVariant), "=r" (entry), "=r" (result)
                 : "r" (inputLocation), "r" (inputVariant) : "r3");
    {
    register int callResult asm("r0") = GetMapArea();
    asm volatile("ldrh r4, [r5]\n\tmov r1, r4\n\tlsl r3, r1, #16\n\tmov r2, #1\n\tasr r3, #16\n\tneg r2, r2\n\tmov r12, r0"
                 : "=r" (area), "=r" (signedArea), "=r" (terminator), "=r" (mapArea)
                 : "r" (entry), "r" (callResult) : "r4");
    }

    if (signedArea != terminator) {
    asm volatile("ldr r0, =0x7fff\n\tmov r14, r2"
                 : "=r" (maximum), "=r" (endValue) : "r" (terminator));
    do {
        register int flags asm("r2") = ((u8 *)entry)[3];
        register int highBit asm("r3");
        asm volatile("mov r3, #0x80\n\tand r3, r2"
                     : "=r" (highBit) : "r" (flags));
        if (highBit != 0) {
            register int compareArea asm("r3");
            asm volatile("lsl r3, r1, #16\n\tasr r3, #16"
                         : "=r" (compareArea) : "r" (area));
            if (compareArea == requested)
                goto matched;
            goto next;
        } else {
            register int compareArea asm("r3");
            asm volatile("lsl r3, r4, #16\n\tasr r3, #16"
                         : "=r" (compareArea) : "r" (area));
            if (compareArea != mapArea)
                goto next;
        }
matched:
        {
            register int condition asm("r2") = entry->condition;
            register int checked asm("r3");
            asm volatile("mov r3, r0\n\tand r3, r2"
                         : "=r" (checked) : "r" (maximum), "r" (condition));
            if (checked == maximum)
                goto found;
            asm volatile("lsl r3, r2, #17\n\tasr r3, #17"
                         : "=r" (checked) : "r" (condition));
            if (checked == requestedVariant) {
found:
                result = entry->name;
                break;
            }
        }
next:
        entry++;
        asm volatile("ldrh r1, [r5]\n\tlsl r3, r1, #16\n\tasr r3, #16\n\tmov r4, r1"
                     : "=r" (area), "=r" (signedArea) : "r" (entry) : "r4");
    } while (signedArea != endValue);
    }
    return result;
}
