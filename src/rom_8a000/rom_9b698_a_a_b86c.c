typedef unsigned char u8;
typedef unsigned int u32;
typedef signed int s32;
typedef struct Object { void *sprite; s32 x,y; u8 pad0c[0x1c]; s32 scaleX,scaleY; u8 pad30[0x17]; u8 flags; } Object;
typedef struct Vector4 { s32 x,xOffset,y,z; } Vector4;
typedef struct Pair { s32 x,y; } Pair;
extern s32 Func_8000888(s32, s32);
extern void _UpdateSprite(void *, Vector4 *, Pair *, s32);

void Func_809b86c(Object *argument)
{
    Pair dimensions;
    Vector4 position;
    register Object *object asm("r4") = argument;
    register void *sprite asm("r5");
    register s32 offset asm("r6");
    register Pair *dimensionsPtr asm("r7");
    s32 y;

    {
    u32 condition = object->flags & 4;
    sprite = object->sprite;
    offset = 0;
    if (condition) {
        asm volatile(
            "ldr r2, [%1, #8]\n\t"
            "mov r3, #0xfe\n\t"
            "lsl r3, #17\n\t"
            "sub %0, r3, r2"
            : "=r" (offset)
            : "r" (object)
            : "r2", "r3");
    }
    }
    {
        register s32 (*multiply)(s32, s32) asm("r3") = Func_8000888;
        register s32 value asm("r0") = object->scaleX;
        register s32 scale asm("r1") = *(s32 *)((u8 *)sprite + 0x18);
        asm volatile(
            ".align 2\n\t"
            "mov ip, pc\n\t"
            "bx r3"
            : "+r" (value)
            : "r" (scale), "r" (multiply)
            : "r2", "ip", "lr", "cc", "memory");
        dimensions.x = value;
        {
            register s32 valueY asm("r0") = object->scaleY;
            register s32 scaleY asm("r1") = *(s32 *)((u8 *)sprite + 0x18);
            asm volatile(
                ".align 2\n\t"
                "mov ip, pc\n\t"
                "bx r3"
                : "+r" (valueY)
                : "r" (scaleY), "r" (multiply)
                : "r2", "ip", "lr", "cc", "memory");
            dimensionsPtr = &dimensions;
            dimensionsPtr->y = valueY;
        }
    }
    dimensionsPtr = &dimensions;
    {
    register s32 positionX asm("r2") = object->x;
    position.x = positionX;
    position.xOffset = offset;
    y = object->y;
    position.y = y + offset;
    position.z = 0;
    asm volatile("" : "+r" (offset));
    if ((u32)(positionX + 0x1fffff) <= 0x12ffffe && y > (s32)0xffe00000 && y < 0xe00000)
        _UpdateSprite(sprite, &position, dimensionsPtr, 0);
    }
}
