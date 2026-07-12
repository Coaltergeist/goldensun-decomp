extern unsigned char EnemyData[] asm(".Lc7420");

unsigned int Func_80c23a0(unsigned int enemy)
{
    register unsigned char *table asm("r3");
    register unsigned int offset asm("r2");
    register unsigned char *entry asm("r2");

    if (enemy > 0xab) {
        return *(unsigned short *)EnemyData;
    }

    table = EnemyData;
    asm volatile("" : "+r"(table));
    offset = enemy << 3;
    asm volatile("" : "+r"(offset));
    entry = (unsigned char *)(offset + (unsigned int)table);
    asm volatile("" : "+r"(entry));
    return ((unsigned int)entry[3] << 27) >> 28;
}

unsigned int Func_80c23c0(unsigned int enemy)
{
    register unsigned char *table asm("r3");
    register unsigned int offset asm("r2");
    register unsigned char *entry asm("r2");
    register unsigned int value asm("r3");
    register unsigned int result asm("r1");

    if (enemy > 0xab) {
        enemy = 0;
        asm volatile("" : "+r"(enemy));
        goto done;
    }

    table = EnemyData;
    asm volatile("" : "+r"(table));
    offset = enemy << 3;
    asm volatile("" : "+r"(offset));
    entry = (unsigned char *)(offset + (unsigned int)table);
    asm volatile("" : "+r"(entry));
    value = entry[2];
    value <<= 31;
    asm volatile("" : "+r"(value));
    result = 0;
    asm volatile("" : "+r"(value), "+r"(result));
    if (value != 0) {
        result = 1;
    }
    enemy = result;
done:
    asm volatile("" : "+r"(enemy));
    return enemy;
}

unsigned int Func_80c23e8(unsigned int enemy)
{
    register unsigned char *table asm("r3");
    register unsigned int offset asm("r2");
    register unsigned char *entry asm("r2");
    register unsigned int value asm("r3");

    if (enemy > 0xab) {
        enemy = 1;
        asm volatile("" : "+r"(enemy));
        goto done;
    }

    table = EnemyData;
    asm volatile("" : "+r"(table));
    offset = enemy << 3;
    asm volatile("" : "+r"(offset));
    entry = (unsigned char *)(offset + (unsigned int)table);
    asm volatile("" : "+r"(entry));
    value = ((unsigned int)entry[2] << 27) >> 28;
    enemy = value;
    asm volatile("" : "+r"(value), "+r"(enemy));
    if (value == 0) {
        enemy = 1;
    }
done:
    asm volatile("" : "+r"(enemy));
    return enemy;
}

unsigned int GetEnemyAttackAnimParam(unsigned int enemy)
{
    register unsigned char *table asm("r3");
    register unsigned int offset asm("r2");
    register unsigned char *entry asm("r2");
    register unsigned int value asm("r3");

    if (enemy > 0xab) {
        enemy = 0;
        asm volatile("" : "+r"(enemy));
        goto done;
    }

    table = EnemyData;
    asm volatile("" : "+r"(table));
    offset = enemy << 3;
    asm volatile("" : "+r"(offset));
    entry = (unsigned char *)(offset + (unsigned int)table);
    asm volatile("" : "+r"(entry));
    value = entry[2] >> 5;
    enemy = value;
    asm volatile("" : "+r"(value), "+r"(enemy));
    if (value == 0) {
        enemy = 0;
    }
done:
    asm volatile("" : "+r"(enemy));
    return enemy;
}
