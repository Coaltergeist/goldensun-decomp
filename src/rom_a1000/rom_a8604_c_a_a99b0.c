typedef int s32;

s32 Func_80a99b0(s32 *param1, s32 *param2, s32 param3) {
    register s32 v1 asm("r3");
    register s32 v2 asm("r4");

    v1 = *param1;
    v2 = *param2;

    switch (param3) {
    case 0x40:
        v2 = v2 - 1;
        if (v2 < 0) {
            v2 = 5;
        }
        if (v2 > 3) {
            break;
        }
        if (v2 == 3) {
            if (v1 <= 4) {
                v1 = 0;
                goto merge40;
            }
        } else {
            if (v1 <= 1) {
                goto merge40;
            }
        }
        v1 = 1;
    merge40:
        if (v2 == 3 && v1 == 1) {
            v2 = 2;
        }
        break;
    case 0x80:
        v2 = v2 + 1;
        if (v2 > 5) {
            v2 = 0;
        }
        if (v2 == 3 && v1 == 1) {
            v2 = 4;
        }
        if (v2 == 4) {
            goto SET0;
        }
        break;
    case 0x20:
        v1 = v1 - 1;
        if (v2 == 3) {
            v1 = v1 + 1;
            break;
        }
        if (v2 > 3) {
            if (v1 < 0) {
                v1 = 7;
            }
        } else {
            if (v1 < 0) {
                v1 = 1;
            }
        }
        break;
    case 0x10:
        v1 = v1 + 1;
        if (v2 == 3) {
            v1 = v1 - 1;
            break;
        }
        if (v2 > 3) {
            if (v1 > 7) {
                goto SET0;
            }
            break;
        } else {
            if (v1 <= 1) {
                break;
            }
        }
    SET0:
        v1 = 0;
        break;
    }

    *param1 = v1;
    *param2 = v2;
    return v2 * 9 + v1;
}
