unsigned int GetEnemyAttackAnimParam(unsigned int param) {
    unsigned char *base;
    unsigned int off;
    unsigned int val;
    if (param <= 0xab) goto found;
    return 0;
found:
    base = Lc7420;
    off = param << 3;
    val = base[off + 2] >> 5;
    if (val) return val;
    return 0;
}
