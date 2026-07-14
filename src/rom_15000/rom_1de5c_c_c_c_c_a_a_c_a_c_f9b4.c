typedef signed short s16;
typedef unsigned char u8;

extern s16 ewram_2002004[];
extern u8 ewram_2000000[];
extern const char MSG_0a[] asm("_MSG_0a");
extern const char MSG_0b[] asm("_MSG_0b");

extern int Func_80056cc(void);
extern void PrepareSaveHeader(void);
extern int SomethingSaveHeader(int slot, void *header);
extern void Func_801776c(const char *message, int argument);
extern void Func_8005cf8(void);

int Func_801f9b4(void)
{
    register s16 *slot asm("r7") = ewram_2002004;
    register int result asm("r8") = 0;
    register int failed asm("r6");

    if (*slot == -1)
        return -1;

    failed = Func_80056cc();
    asm volatile("" : "+r"(failed));
    if (failed != 0) {
        Func_801776c(MSG_0a, 1);
        result = -9;
    } else {
        register u8 *header asm("r5");
        int slot_number;
        PrepareSaveHeader();
        header = ewram_2000000;
        slot_number = *slot;
        failed = SomethingSaveHeader(slot_number, header);
        asm volatile("" : "+r"(failed));
        slot_number = *slot;
        header += 0x1000;
        failed |= SomethingSaveHeader(slot_number + 3, header);
        if (failed != 0) {
            Func_801776c(MSG_0b, 1);
            result = -3;
        }
    }
    Func_8005cf8();
    return result;
}
