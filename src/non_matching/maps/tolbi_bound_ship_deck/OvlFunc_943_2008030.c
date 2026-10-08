extern unsigned int __Random0(void) __asm__("__Random");

unsigned int OvlFunc_943_2008030(struct Actor *actor)
{
    switch (actor->waveCounter) {
    case 0:
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
        actor->waveCounter = __Random0() % 90 + 60;
        break;
    case 2:
        actor->scale.x += 0x1000;
        actor->scale.y += -0x800;
        break;
    case 4:
        actor->scale.x += 0x2000;
        actor->scale.y += -0x1000;
        break;
    case 6:
        actor->scale.x += -0x4000;
        actor->scale.y += 0x2000;
        break;
    }
    actor->waveCounter--;
    return 1;
}
