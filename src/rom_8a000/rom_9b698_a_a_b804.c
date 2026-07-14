typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;

struct Object {
    u8 pad00[0x34];
    void (*callback)(struct Object *);
    u16 counter;
    s16 delay;
    u8 pad3c[7];
    s8 flag_b8f4;
    s8 flag_b86c;
    s8 active;
};

extern void Func_809b8f4(struct Object *object);
extern void Func_809b86c(struct Object *object);

void Func_809b804(struct Object *argument)
{
    register struct Object *object asm("r5") = argument;
    register s8 *active asm("r6") = &object->active;

    if (*active == 0)
        return;

    object->counter++;
    if (object->delay != 0)
        object->delay--;
    else if (object->callback != 0)
        object->callback(object);

    if (*active == 0)
        return;
    if (object->flag_b8f4 != 0)
        Func_809b8f4(object);
    if (object->flag_b86c != 0)
        Func_809b86c(object);
}
