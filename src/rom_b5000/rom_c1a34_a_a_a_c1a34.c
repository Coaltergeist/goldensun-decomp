typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

extern void *_GetEnemyInfo(s32);
extern s32 _GetFlag(s32);
extern u8 Lc5c38[] asm(".Lc5c38");

s32 Func_80c1a34(s32 arg0) {
    u8 *entry;
    s32 var_r9;
    s32 var_r11;
    u32 count;
    u8 *var_r2;
    register u8 *var_r8 asm("r8");
    u8 temp_r3;
    u8 temp_r6;
    u8 *temp_r0;
    u8 *temp_r0_2;
    u8 *p1;
    s32 result;
    u8 flag6;

    temp_r0 = (arg0 * 0x10) + Lc5c38;
    flag6 = temp_r0[6];
    {
        register s32 t9 asm("r9");
        register s32 t11 asm("r11");
        register u8 *t10 asm("r10");
        register u32 t7 asm("r7");
        asm volatile(
            "mov r2, #0\n\t"
            "sub sp, #0x1c\n\t"
            "mov r9, r2\n\t"
            "mov r11, r2\n\t"
            "mov r10, %4\n\t"
            "mov r7, #0"
            : "=r"(t9), "=r"(t11), "=r"(t10), "=r"(t7)
            : "r"(temp_r0)
            : "r2", "sp", "memory"
        );
        var_r9 = t9;
        var_r11 = t11;
        entry = t10;
        count = t7;
    }
    if (flag6 == 0) {
        var_r2 = entry + 6;
    loop_2:
        count += 1;
        if (count <= 4U) {
            var_r2 += 1;
            if (*var_r2 == 0) {
                goto loop_2;
            }
        }
    }
    if (count == 5) {
        asm volatile("mov %0, #1\n\tneg %0, %0" : "=r"(result));
        goto done;
    }
    {
        register u8 *e8 asm("r3");
        register u32 z7 asm("r7");
        asm volatile("mov r3, #0xb\n\tadd r3, %2\n\tmov r7, #0" : "=r"(e8), "=r"(z7) : "r"(entry));
        count = z7;
        var_r8 = e8;
    }
loop_7:
    {
        register u8 *pp asm("r2") = var_r8;
        temp_r3 = *pp;
    }
    var_r8 += 1;
    if (temp_r3 != 0) {
        p1 = entry + 1;
        temp_r6 = p1[count];
        temp_r0_2 = _GetEnemyInfo(temp_r6 + 8);
        if (temp_r0_2 != 0) {
            if (temp_r0_2[0xF] <= 3U) {
                goto ok;
            }
            if (_GetFlag(0x174) != 0) {
                goto ok;
            }
            if (_GetFlag(temp_r6 + 0x608) != 0) {
                goto ok;
            }
            goto fail2;
        ok:
            var_r11 += temp_r0_2[0xF];
            var_r9 += 1;
        }
    }
    count += 1;
    if (count <= 4U) {
        goto loop_7;
    }
    if (var_r9 == 0) {
        asm volatile("mov %0, #3\n\tneg %0, %0" : "=r"(result));
        goto done;
    }
    goto divide;
fail2:
    asm volatile("mov %0, #2\n\tneg %0, %0" : "=r"(result));
    goto done;
divide:
    result = var_r11 / var_r9;
done:
    asm volatile("add sp, #0x1c" ::: "sp");
    return result;
}
