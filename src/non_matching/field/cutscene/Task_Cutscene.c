typedef struct { unsigned char _bytes[1]; } bool8;

typedef struct { unsigned char _bytes[4]; } KeyState32;

extern bool8 gDebugMode;

extern KeyState32 gKeyPress;

void Task_Cutscene(void) {
    unsigned char *base;

    base = iwram_3001ebc;
    if (*(unsigned char *)&gDebugMode != 0) {
        unsigned int *keys = (unsigned int *)&gKeyPress;
        if ((*keys & (0x80 << 2)) != 0) {
            *(unsigned int *)(base + (0xe6 << 1)) = 0;
        }
        if ((*keys & (0x80 << 1)) != 0) {
            *(unsigned int *)(base + (0xe6 << 1)) = -1;
        }
    }
}
