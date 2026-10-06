void OvlFunc_945_200e3ac(unsigned int base1, unsigned int base2)
{
    unsigned int i;
    unsigned int n1;
    unsigned int n2;

    n1 = 0;
    n2 = 0;
    for (i = 0; i <= 8; i++, n1++) {
        if (API_GetFlag(base1 + i)) {
            API_ClearFlag(base1 + i);
            break;
        }
    }
    for (i = 0; i <= 8; i++, n2++) {
        if (API_GetFlag(base2 + i)) {
            API_ClearFlag(base2 + i);
            break;
        }
    }
    API_SetFlag(base2 + n1);
    API_SetFlag(base1 + n2);
}
