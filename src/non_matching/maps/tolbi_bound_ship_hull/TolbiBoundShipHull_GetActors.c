extern unsigned char Lm945_6be0[] __asm__(".Lm945_6be0");
extern unsigned char Lm945_6bf8[] __asm__(".Lm945_6bf8");
extern unsigned char Lm945_6c58[] __asm__(".Lm945_6c58");
extern unsigned char Lm945_6d48[] __asm__(".Lm945_6d48");
extern unsigned char Lm945_6d78[] __asm__(".Lm945_6d78");
extern unsigned char Lm945_6da8[] __asm__(".Lm945_6da8");
extern unsigned char Lm945_6eb0[] __asm__(".Lm945_6eb0");
extern unsigned char Lm945_6fe8[] __asm__(".Lm945_6fe8");

void *TolbiBoundShipHull_GetActors(void)
{
    switch (*(s16 *)&gState._bytes[0x1c2]) {
    case 1:
    case 2:
    case 11:
        if (API_GetFlag(0x93e)) {
            return Lm945_6da8;
        }
        if (API_GetFlag(0x928)) {
            if (API_GetFlag(0x8a << 4)) {
                Lm945_6eb0[0x16] = 2;
                Lm945_6eb0[0x46] = 2;
                Lm945_6eb0[0x76] = 2;
                Lm945_6eb0[0x8e] = 2;
                Lm945_6eb0[0xd6] = 2;
                Lm945_6eb0[0xbe] = 2;
                Lm945_6eb0[0xa6] = 1;
                Lm945_6eb0[0x5e] = 2;
            }
            return Lm945_6eb0;
        }
        if (!API_GetFlag(0x911)) {
            return Lm945_6d78;
        }
        if (API_GetFlag(0x925)) {
            Lm945_6da8[0x16] = 2;
            Lm945_6da8[0x76] = 2;
            Lm945_6da8[0x2e] = 2;
            Lm945_6da8[0x5e] = 2;
        }
        return Lm945_6da8;

    case 4:
    case 12:
    case 16:
    case 18:
    case 20:
    case 21:
    case 23:
    case 24:
        return Lm945_6fe8;

    case 15:
    case 17:
    case 19:
        Lm945_6fe8[0x16] = 2;
        Lm945_6fe8[0x2e] = 2;
        Lm945_6fe8[0x5e] = 1;
        Lm945_6fe8[0x76] = 2;
        Lm945_6fe8[0x8e] = 2;
        Lm945_6fe8[0xa6] = 2;
        Lm945_6fe8[0xbe] = 2;
        Lm945_6fe8[0xd6] = 1;
        Lm945_6fe8[0xee] = 2;
        return Lm945_6fe8;

    case 5:
        if (API_GetFlag(0x93e)) {
            return Lm945_6d48;
        }
        if (!API_GetFlag(0x911)) {
            return Lm945_6bf8;
        }
        if (!API_GetFlag(0x922)) {
            return Lm945_6be0;
        }
        if (API_GetFlag(0x8a << 4)) {
            Lm945_6c58[0x2e] = 1;
        }
        if (API_GetFlag(0x925)) {
            if (!API_GetFlag(0x8a << 4)) {
                Lm945_6c58[0x16] = 0;
            }
        }
        return Lm945_6c58;

    case 10:
    case 13:
    case 14:
    case 22:
        return Lm945_6bf8;

    default:
        return Lm945_6be0;
    }
}
