/* Initialize the map header and run the map-specific setup when entering map
 * 0x64.  The fixed registers document and preserve the original shared 0x1c0
 * byte offset across both structures. */
extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern unsigned char Value_64[] asm("0x64");
extern void OvlFunc_937_200833c(void);

int OvlFunc_937_2008308(void)
{
    register unsigned int address asm("r3") = (unsigned int)iwram_3001ebc;
    register unsigned int offset asm("r2") = 0xe0;
    register unsigned char *mapState asm("r1");

    asm volatile("" : "+r"(address), "+r"(offset));
    mapState = *(unsigned char **)address;
    asm volatile("" : "+r"(mapState), "+r"(offset));
    address = 0x209;
    asm volatile("" : "+r"(address), "+r"(mapState), "+r"(offset));
    offset <<= 1;
    *(int *)(mapState + offset) = address;

    address = (unsigned int)gState;
    asm volatile("" : "+r"(address), "+r"(offset));
    offset = *(short *)(address + offset);
    address = (unsigned int)Value_64;
    asm volatile("" : "+r"(address), "+r"(offset));
    if (offset == address)
        OvlFunc_937_200833c();
    return 0;
}
asm(".align 2, 0\n.size OvlFunc_937_2008308, . - OvlFunc_937_2008308");
