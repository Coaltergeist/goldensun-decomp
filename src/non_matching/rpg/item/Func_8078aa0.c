extern unsigned char ewram_2000380[];

unsigned int Func_8078aa0(int arg0, int arg1)
{
    int val;
    unsigned int ret;

    ret = 0;
    if (arg0 <= 0x7f) {
        val = ewram_2000380[arg0] + arg1;
        if (val < 0) {
            val = 0;
        } else if (val > 0x63) {
            val = 0x63;
            ret = 0x63;
        } else {
            ret = val;
        }
        ewram_2000380[arg0] = val;
    }
    return ret;
}
