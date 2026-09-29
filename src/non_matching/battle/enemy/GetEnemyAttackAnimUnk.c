unsigned int GetEnemyAttackAnimUnk(unsigned int val) {
    unsigned char b;

    if (val > 0xab)
        return 0;
    b = Lc7420[(val << 3) + 2];
    return (b << 31) != 0;
}
