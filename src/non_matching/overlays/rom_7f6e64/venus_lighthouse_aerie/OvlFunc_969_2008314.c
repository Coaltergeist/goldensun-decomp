extern unsigned int __Random(void);
extern int _umodsi3_RAM(unsigned int, unsigned int);

int OvlFunc_969_2008314(struct Actor *actor)
{
    switch (actor->waveCounter) {
    case 0:
        actor->scale.x += 0x800;
        actor->scale.y += -0x400;
        actor->waveCounter = _umodsi3_RAM(__Random(), 0x50) + 0x50;
        break;
    case 2:
        actor->scale.x += 0x800;
        actor->scale.y += -0x400;
        break;
    case 4:
        actor->scale.x += 0x1000;
        actor->scale.y += -0x800;
        break;
    case 6:
        actor->scale.x += -0x2000;
        actor->scale.y += 0x1000;
        break;
    }
    actor->waveCounter--;
    return 1;
}
