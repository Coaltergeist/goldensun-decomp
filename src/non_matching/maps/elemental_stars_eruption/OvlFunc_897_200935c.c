extern int __Random(void);

void OvlFunc_897_200935c(void)
{
    if (*(unsigned int *)L3b70 != 0) {
        (*(unsigned int *)L3b70)--;
        return;
    }

    if (*(unsigned int *)L3b6c != 0) {
        (*(unsigned int *)L3b6c)--;
    } else {
        *(unsigned int *)L3b6c = (unsigned int)(__Random() * 4) >> 16;
    }

    switch (*(unsigned int *)L3b6c) {
    case 3:
        *(unsigned int *)L3b68 = 3;
        *(unsigned int *)L3b70 = ((unsigned int)(__Random() * 20) >> 16) + 0x28;
        break;
    case 2:
        *(unsigned int *)L3b68 = 0xf;
        *(unsigned int *)L3b70 = ((unsigned int)(__Random() * 40) >> 16) + 0x50;
        break;
    case 1:
        *(unsigned int *)L3b68 = 0x3f;
        *(unsigned int *)L3b70 = ((unsigned int)(__Random() * 80) >> 16) + 0xa0;
        break;
    default:
        *(unsigned int *)L3b68 = 0x7f;
        *(unsigned int *)L3b70 = ((unsigned int)(__Random() * 160) >> 16) + 0x140;
        break;
    }
}
