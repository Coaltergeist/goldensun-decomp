typedef volatile unsigned char vu8;

extern int StartMenu_Main(void);
extern int Menu_Save(void);
extern int Menu_Settings(void);
extern int Func_801776c(int message, int arg1);
extern vu8 gSleepMode;

int StartMenu(void)
{
    int result;

L29506:
    result = StartMenu_Main();
    if (result == -1) {
        return -1;
    }
    if (result != 0) {
        goto L29524;
    }
    {
        int saveResult = Menu_Save();
        asm volatile("" ::: "memory");
        if (saveResult != -1) {
            return 0;
        }
        asm volatile("" ::: "memory");
    }
    goto L29506;

L29524:
    if (result != 1) {
        goto L29536;
    }
    {
        register int msg asm("r0") = 0xc2a;
        asm volatile("" : "+r"(msg));
        Func_801776c(msg, 1);
    }
    gSleepMode = result;
    asm volatile("" ::: "memory");
    return 0;

L29536:
    if (result == 2) {
        int settingsResult = Menu_Settings();
        asm volatile("" ::: "memory");
        if (settingsResult == -1) {
            goto L29506;
        }
        asm volatile("" ::: "memory");
    }
    return 0;
}
