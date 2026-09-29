unsigned short OvlFunc_880_20092c8(int count, unsigned char *data)
{
    int i, j;
    unsigned int crc = 0xffff;

    for (i = 0; i < count; i++) {
        crc ^= (data[i] << 8);
        for (j = 0; j < 8; j++) {
            if (crc & 0x8000)
                crc = (crc << 1) + 0xffffefdf;
            else
                crc = crc << 1;
        }
    }
    return ~crc;
}
