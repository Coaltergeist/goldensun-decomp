void Func_80dfddc(unsigned int src, unsigned int dst, int count, int total)
{
    int outerIndex;
    int srcOffset;
    int dstColumn;
    int innerIndex;
    unsigned int destAddr;
    unsigned int srcAddr;

    outerIndex = 0;
    if (total != 0) {
        srcOffset = 0;
        dstColumn = total;
        do {
            innerIndex = 0;
            if (count != 0) {
                destAddr = dstColumn + dst - 1;
                srcAddr = srcOffset + src;
                do {
                    innerIndex++;
                    *(unsigned char *)destAddr = *(unsigned char *)srcAddr;
                    srcAddr++;
                    destAddr += total;
                } while (innerIndex != count);
            }
            outerIndex++;
            srcOffset += count;
            dstColumn--;
        } while (outerIndex != total);
    }
}
