/* Initialize the map header and run the map-specific setup when entering map
 * 0x67.  The fixed registers document and preserve the original shared 0x1c0
 * byte offset across both structures. */
extern unsigned char iwram_3001ebc[];
extern unsigned char gState[];
extern unsigned char Value_67[] asm("0x67");
extern void OvlFunc_938_2008264(void);

int OvlFunc_938_2008230(void)
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
    address = (unsigned int)Value_67;
    asm volatile("" : "+r"(address), "+r"(offset));
    if (offset == address)
        OvlFunc_938_2008264();
    return 0;
}
asm(".align 2, 0\n.size OvlFunc_938_2008230, . - OvlFunc_938_2008230");
