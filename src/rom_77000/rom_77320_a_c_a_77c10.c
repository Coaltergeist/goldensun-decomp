typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u8 gState[];
extern int GetPartySize(void);
extern void SetFlag(u32 flag);
extern void ClearFlag(u32 flag);
extern u8 *GetUnit(int unitId);
extern u8 *GetItemInfo(int itemId);

void CheckLure(void)
{
    register int i asm("r8");
    register u8 *partyPtr asm("r9");
    register int count asm("r10");
    register u32 mask asm("r11");
    register u8 *unit asm("r7");
    int spillOffset;
    int spillSlot;

    ClearFlag(0x167);
    count = GetPartySize();
    asm volatile(
        "movs r0, #0\n"
        "mov %0, r0\n"
        : "=r"(i)
        :
        : "r0"
    );
    if (i < count) {
        asm volatile(
            "ldr r3, =gState\n"
            "mov r2, #0xfc\n"
            "lsl r2, r2, #1\n"
            "add r2, r2, r3\n"
            "mov r3, #0x80\n"
            "lsl r3, r3, #2\n"
            "mov %0, r2\n"
            "mov %1, r3\n"
            : "=r"(partyPtr), "=r"(mask)
            :
            : "r2", "r3", "memory"
        );
        do {
            asm volatile(
                "mov r2, %3\n"
                "ldrb r0, [r2]\n"
                "bl GetUnit\n"
                "mov r2, #0xd8\n"
                "mov %0, r0\n"
                "mov r1, #14\n"
            "1:\n"
                "ldrh r3, [r2, %0]\n"
                "mov r0, %4\n"
                "and r3, r0\n"
                "cmp r3, #0\n"
                "beq 2f\n"
                "ldrh r0, [r2, %0]\n"
                "str r1, %1\n"
                "str r2, %2\n"
                "bl GetItemInfo\n"
                "mov r5, r0\n"
                "ldr r2, %2\n"
                "ldr r1, %1\n"
                "add r5, #0x18\n"
                "mov r6, #3\n"
            "3:\n"
                "ldrb r3, [r5]\n"
                "add r5, #4\n"
                "cmp r3, #0x1b\n"
                "bne 4f\n"
                "ldr r0, .L8\n"
                "str r1, %1\n"
                "str r2, %2\n"
                "bl SetFlag\n"
                "ldr r2, %2\n"
                "ldr r1, %1\n"
            "4:\n"
                "sub r6, #1\n"
                "cmp r6, #0\n"
                "bge 3b\n"
            "2:\n"
                "sub r1, #1\n"
                "add r2, #2\n"
                "cmp r1, #0\n"
                "bge 1b\n"
                : "=r"(unit), "=m"(spillOffset), "=m"(spillSlot)
                : "r"(partyPtr), "r"(mask)
                : "r0", "r1", "r2", "r3", "r5", "r6", "lr", "memory", "cc"
            );

            asm volatile(
                "movs r2, #1\n"
                "add %0, %0, r2\n"
                "add %1, %1, r2\n"
                : "+r"(i), "+r"(partyPtr)
                :
                : "r2"
            );
        } while (i < count);
    }
}
