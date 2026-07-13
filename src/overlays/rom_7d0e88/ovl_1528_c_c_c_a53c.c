typedef unsigned int u32;

typedef struct {
    u32 first;
    u32 second;
} Pair;

typedef struct {
    u32 value[4];
    Pair tail;
} Values;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern int OvlFunc_947_2008758(Values *values);
extern void OvlFunc_947_20088ec(u32, u32, u32, u32);
extern void OvlFunc_947_200a498(void);
extern void OvlFunc_947_20083a8(void);
extern void OvlFunc_947_200a4cc(void);

void OvlFunc_947_200a53c(void)
{
    u32 words[8];
    register Values *values asm("r5");

    __CutsceneStart();
    values = (Values *)&words[2];
    asm volatile("" : "+r"(values));
    if (OvlFunc_947_2008758(values) != 0) {
        asm volatile(
            "mov r2, sp\n\t"
            "add r3, sp, #24\n\t"
            "ldmia r3!, {r0, r1}\n\t"
            "stmia r2!, {r0, r1}"
            :
            :
            : "r0", "r1", "r2", "r3", "memory");
        OvlFunc_947_20088ec(values->value[0], values->value[1],
                           values->value[2], values->value[3]);
    } else {
        OvlFunc_947_200a498();
        OvlFunc_947_20083a8();
        OvlFunc_947_200a4cc();
    }
    __CutsceneEnd();
}
