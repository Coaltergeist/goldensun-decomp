#ifndef CANDIDATE_MAPS_SUHALLA_DESERT_H
#define CANDIDATE_MAPS_SUHALLA_DESERT_H

extern void __ClearFlag(int);

extern void __StartMapBattle(int, int);

extern void __MapActor_SetIdle(int);

#define REG_BASE 0x04000000

#define REG_ADDR_BLDCNT (REG_BASE + 0x50)

#define REG_ADDR_BLDALPHA (REG_BASE + 0x52)

#define REG_ADDR_IME (REG_BASE + 0x208)

#define REG_IME (*(volatile unsigned short *)REG_ADDR_IME)

#define SET_IO(reg, val) do { unsigned int __v = (val); (reg) = __v; } while (0)

struct DmaTransfer {
    void *src;
    void *dest;
    unsigned int dmacnt;
};

struct DmaQueue {
    unsigned short count;
    struct DmaTransfer tasks[32];
};

extern struct DmaQueue gDMATaskCount;

#endif
