typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

extern const char MSG_0a[] asm("_MSG_0a");
extern const char MSG_0c[] asm("_MSG_0c");
extern u8 gState[];
extern u8 ewram_2000000[];
extern s16 ewram_2002004;
extern u32 iwram_3001c9c;
extern u8 iwram_3001d08;
extern u16 iwram_3001d24;
extern int Func_80056cc(int value);
extern void Func_8005c68(void);
extern void Func_8005cf8(void);
extern void Func_801776c(const char *message, int mode);
extern int Func_8020244(int current, int value);
extern int Func_8005a78(int value, u8 *buffer);

int SystemMsgBox(int value)
{
    int result = 0;

    {
    register int busy asm("r6") = Func_80056cc(value);
    asm("" : "+r" (busy));
    if (busy != 0) {
        Func_801776c(MSG_0a, 1);
        result = -9;
    } else {
        int selected;
        int conflict;

        Func_8005c68();
        selected = Func_8020244(ewram_2002004, value);
        if (selected == -1) {
            result = selected;
        } else {
            conflict = Func_8005a78(selected, ewram_2000000);
            conflict |= Func_8005a78(selected + 3, ewram_2000000 + 0x1000);
            if (conflict != 0) {
                Func_801776c(MSG_0c, 1);
                result = -2;
            } else {
                register u8 *global asm("r3") = gState;
                register u32 *destination asm("r1") = &iwram_3001c9c;
                asm("" : "+r" (global), "+r" (destination));
                *destination = *(u32 *)(global + 4);
                iwram_3001d08 = global[0x22a];
                iwram_3001d24 = result;
                ewram_2002004 = selected;
            }
        }
    }
    }
    Func_8005cf8();
    return result;
}
