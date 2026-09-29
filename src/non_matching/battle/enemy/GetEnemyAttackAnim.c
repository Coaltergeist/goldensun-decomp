unsigned int GetEnemyAttackAnim(unsigned int a)
{
    unsigned char b;
    unsigned int v;

    if (a > 0xab) return 1;
    b = Lc7420[a * 8 + 2];
    v = (b << 27) >> 28;
    if (v != 0) return v;
    return 1;
}
