typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __Func_80105d4();
void __Func_8010704();
void __WaitFrames();
void OvlFunc_941_2008384(void) {
int a, b, c, d, e;
e = 0x15;
__Func_80105d4 ( 0x29 , 0x57 , 2 , 5 , e , 0x3B ) ;
__WaitFrames ( 4 ) ;
a = 0x18; b = 0x3e;
__Func_80105d4 ( 2 , 0x5D , 1 , 1 , a , b ) ;
c = 0x37;
__Func_80105d4 ( 2 , 0x5E , 1 , 1 , e , c ) ;
d = 0x3a;
__Func_80105d4 ( 0x2B , 0x57 , 2 , 5 , e , d ) ;
__WaitFrames ( 4 ) ;
__Func_80105d4 ( 3 , 0x5D , 1 , 1 , a , b ) ;
__Func_80105d4 ( 1 , 0x5E , 1 , 1 , e , c ) ;
__Func_80105d4 ( 0x29 , 0x57 , 2 , 5 , e , d ) ;
__Func_8010704 ( 0x15 , 0xB , 2 , 2 , e , 0xD ) ;
__Func_8010704 ( 0x13 , 0x11 , 1 , 1 , e , 0xE ) ;
}

