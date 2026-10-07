typedef struct { unsigned char _bytes[332]; } Unit;

extern Unit gPartyStatus[8];

extern unsigned char iwram_3001f28[];

void *GetUnit(unsigned int id) {
    if (id <= 7) {
        return (char *)gPartyStatus + id * 332;
    }
    if (id - 0x80 <= 5) {
        unsigned int *p = (unsigned int *)iwram_3001f28;
        if (*p != 0) {
            return (char *)*p + id * 332 - 0xa600;
        }
    }
    return 0;
}
