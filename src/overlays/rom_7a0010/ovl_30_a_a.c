struct TableEntry {
    unsigned short id;
    unsigned short unk02;
    int enabled;
    unsigned char unk08[0x0e];
    unsigned char type;
    unsigned char unk17;
};

void OvlFunc_912_2008030(struct TableEntry *entries) {
    unsigned int i;

    for (i = 0; i <= 14; i++) {
        entries[i].type = 2;
        entries[i].enabled = 1;
        entries[i].id = 0x69;
        if (i == 4 || i == 7)
            entries[i].id = 0x6e;
    }
}
