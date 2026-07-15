typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

extern u32 __Random(void);

s32 OvlFunc_944_20080c0(u8 *actor)
{
	s16 state;
	u32 r;
	s32 v;
	s16 w;

	state = *(s16 *)(actor + 0x64);
	if (state == 9) {
		*(s32 *)(actor + 0x4c) = 0;
	} else if (state != 0) {
		r = __Random();
		r <<= 11;
		r >>= 16;
		*(s32 *)(actor + 0x4c) -= (s32)r;
		if (*(s32 *)(actor + 0x4c) < -0xc000) {
			w = 0;
			goto write1;
		}
	} else {
		r = __Random();
		r <<= 11;
		r >>= 16;
		*(s32 *)(actor + 0x4c) += (s32)r;
		if (*(s32 *)(actor + 0x4c) > 0xc000) {
			w = 1;
write1:
			*(s16 *)(actor + 0x64) = w;
		}
	}

	if ((u32)(*(s32 *)(actor + 8) - 0x280001) <= 0x117fffe) {
		*(s32 *)(actor + 8) += *(s32 *)(actor + 0x4c);
	}

	state = *(s16 *)(actor + 0x66);
	if (state == 9) {
		*(s32 *)(actor + 0xc) = 0;
	} else if (state != 0) {
		r = __Random();
		v = *(s32 *)(actor + 0xc);
		v -= (s32)((r * 0xc000) >> 16);
		*(s32 *)(actor + 0xc) = v;
		if (v < 0) {
			w = 0;
			goto write2;
		}
	} else {
		r = __Random();
		v = *(s32 *)(actor + 0xc);
		v += (s32)((r * 0xc000) >> 16);
		*(s32 *)(actor + 0xc) = v;
		if (v > 0x100000) {
			w = 1;
write2:
			*(s16 *)(actor + 0x66) = w;
		}
	}

	return 1;
}
