extern int Lm932_523c__aa48 __asm__(".Lm932_523c");
extern unsigned int __Random(void);
extern void __Func_80929d8(struct Actor *, int);

void OvlFunc_932_200aa48(struct Actor *actor)
{
    switch (Lm932_523c__aa48) {
    case 0:
        actor->pos.x += (actor->waveCounter << 12) + ((int)(((__Random() << 1) >> 16) - 1) << 16 >> 1);
        break;
    case 0x8000:
        actor->pos.x -= (actor->waveCounter << 12) + ((int)(((__Random() << 1) >> 16) - 1) << 16 >> 1);
        break;
    }
    if (actor->waveCounter <= 3) {
        switch (Lm932_523c__aa48) {
        case 0:
            actor->pos.x += 0x8000;
            break;
        case 0x8000:
            actor->pos.x += 0xffff8000;
            break;
        }
        actor->scale.x += 0x1999;
        actor->scale.y += 0xfffff334;
    } else {
        actor->pos.z += 0x13333;
        actor->scale.x += 0x7ae;
        actor->scale.y += 0x7ae;
    }
    if ((actor->waveCounter * __Random()) >> 16 == 0) {
        __Func_80929d8(actor, 7);
    }
    {
        unsigned short t = *(unsigned short *)&actor->waveCounter;
        if ((short)t != 0) {
            actor->waveCounter = t - 2;
        } else {
            actor->waveCounter = (((__Random() * 5) >> 16) << 1) + 2;
        }
    }
    {
        int n = (int)actor->linkedActor - 1;
        actor->linkedActor = (struct Actor *)n;
        if (n == 0) {
            __DeleteActor(actor);
        }
    }
}
