extern unsigned char *GetItemInfo(int item);

int Func_8078480(int item) {
    register unsigned int type asm("r3") = GetItemInfo(item)[2];
    register int result asm("r2");

    asm volatile("" : "+r"(type));
    result = 0;
    asm volatile("" : "+r"(result));
    if (type == 1) {
        result = 1;
    } else {
        asm volatile("" : "+r"(type));
        if (type == 2) {
            result = 2;
        } else {
            asm volatile("" : "+r"(type));
            if (type == 3) {
                result = 2;
            } else {
                asm volatile("" : "+r"(type));
                if (type == 4) {
                    result = 2;
                } else {
                    asm volatile("" : "+r"(type));
                    if (type == 5) {
                        result = 2;
                    } else {
                        asm volatile("" : "+r"(type));
                        if (type == 9)
                            result = 2;
                    }
                }
            }
        }
    }
    asm volatile("" : "+r"(result));
    return result;
}
