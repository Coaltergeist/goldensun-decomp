typedef signed short s16;

typedef struct Object {
    unsigned char pad0[0x14];
    s16 scaleX;
    s16 scaleY;
    unsigned char pad18[0x1c];
    s16 limitX;
    s16 divisorY;
    s16 valueX;
    s16 valueY;
} Object;

void Func_80782a0(Object *object, int requested)
{
    register int maximum asm("r3") = object->limitX;
    int value;
    int result;
    int clamped;

    asm volatile("" : "+r" (maximum));
    value = maximum;
    if (requested <= maximum) {
        value = 0;
        if (requested >= 0)
            value = requested;
    }
    object->valueX = value;
    result = ((value << 16) >> 2) / object->limitX;
    clamped = 0x4000;
    if (result <= 0x4000) {
        clamped = 0;
        if (result >= 0)
            clamped = result;
    }
    object->scaleX = clamped;
    if ((s16)clamped == 0 && object->valueX != 0)
        object->scaleX = 1;
    result = (object->valueY << 14) / object->divisorY;
    clamped = 0x4000;
    if (result <= 0x4000) {
        clamped = 0;
        if (result >= 0)
            clamped = result;
    }
    object->scaleY = clamped;
    if ((s16)clamped == 0 && object->valueY != 0)
        object->scaleY = 1;
}
