extern unsigned char iwram_3001f30[];

extern void Field_Frost(void);

void Field_Frost_Target(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001f30;
    unsigned char *field14 = *(unsigned char **)(base + 0x14);

    if (field14 != 0) {
        if (*(signed char *)(base + 0x35) != 0) {
            base[0x20] = 1;
        }
        field14[0x23] |= 2;
        Field_Frost();
    }
}
