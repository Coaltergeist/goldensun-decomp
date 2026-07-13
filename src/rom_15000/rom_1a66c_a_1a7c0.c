typedef unsigned char u8;
typedef unsigned short u16;

typedef struct TextQueue {
    u8 reserved0[0x354];
    u16 first[0x10];
    u16 second[0x10];
    u16 count;
} TextQueue;

extern u8 *iwram_3001e98;

void Func_801a7c0(unsigned int first, unsigned int second)
{
    TextQueue *const queue = (TextQueue *)iwram_3001e98;
    unsigned int index = queue->count;

    if (index != 0x10) {
        queue->first[index] = first;
        queue->second[index] = second;
        queue->count++;
    }
}
