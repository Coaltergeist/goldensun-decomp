unsigned short OvlFunc_880_20092c8(
    unsigned int length,
    const unsigned char *bytes)
{
    unsigned int crc = 0xffff;
    unsigned int index = 0;

    if (length != 0) {
        do {
            int bit;

            crc ^= (unsigned int)*bytes << 8;
            bit = 0;
            do {
                if ((crc & 0x8000) != 0) {
                    crc = (crc << 1) - 0x1021;
                } else {
                    crc <<= 1;
                }
                bit++;
            } while (bit != 8);
            index++;
            bytes++;
        } while (index != length);
    }
    return (unsigned short)~crc;
}
