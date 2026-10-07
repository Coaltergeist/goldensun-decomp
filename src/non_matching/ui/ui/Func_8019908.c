void Func_8019908(unsigned int arg0, unsigned int arg1)
{
	unsigned char *base;
	unsigned int *ptrArr;
	unsigned short *slotArr;
	int i;

	base = *(unsigned char **)iwram_3001e8c;
	ptrArr = (unsigned int *)(base + 0x12bc);
	slotArr = (unsigned short *)(base + 0x12dc);
	for (i = 0; i < 8; i++) {
		if (slotArr[i] == 0) {
			ptrArr[i] = arg0;
			slotArr[i] = (unsigned short)arg1;
			break;
		}
	}
}
