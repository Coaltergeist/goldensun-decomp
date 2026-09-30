unsigned short OvlFunc_880_20092c8(unsigned int count, const unsigned char *data)
{
    unsigned int i;
    int j;
    unsigned int crc = 0xffff;

    for (i = 0; i < count; i++) {
        crc ^= *data << 8;
        for (j = 0; j < 8; j++) {
            if (crc & 0x8000)
                crc = (crc << 1) - 0x1021;
            else
                crc <<= 1;
        }
        data++;
    }
    return ~crc;
}
