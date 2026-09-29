typedef struct { unsigned char _bytes[704]; } GlobalState;

extern GlobalState gState;

extern void *iwram_3001ebc;

int ColosseumFinal1_MapInit(void)
{
    *(int *)((char *)iwram_3001ebc + 0x1c0) = 0;
    __SetFlag(0x144);
    return 0;
}
