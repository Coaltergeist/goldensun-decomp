int OvlFunc_882_2008064(struct Actor *actor)
{
    extern int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);

    switch (actor->waveCounter) {
    case 0:
        actor->scale.x = 0x80 << 9;
        actor->scale.y = 0x80 << 9;
        actor->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
        break;
    case 2:
        actor->scale.x += 0x80 << 5;
        actor->scale.y -= 0x800;
        break;
    case 4:
        actor->scale.x += 0x80 << 6;
        actor->scale.y -= 0x1000;
        break;
    case 6:
        actor->scale.x -= 0x4000;
        actor->scale.y += 0x80 << 6;
        break;
    }
    actor->waveCounter--;
    return 1;
}
