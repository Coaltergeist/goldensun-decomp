extern unsigned short Data_80c593c[];

unsigned int GetWeaponType(unsigned int weaponID) {
    unsigned short *table;
    int i;
    unsigned short v;

    table = Data_80c593c;
    i = 0;
    for (;;) {
        v = table[i];
        if (weaponID == (v & 0x1ff)) {
            return table[i] >> 9;
        }
        if ((short)v == -1) {
            return 6;
        }
        i++;
    }
}
