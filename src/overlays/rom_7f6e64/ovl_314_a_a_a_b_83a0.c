typedef struct {
    char _pad00[0x1e];
    unsigned short angle;
} OvlSprite;

typedef struct {
    char _pad00[0x08];
    int x;
    int y;
    int z;
    char _pad14[0x04];
    int screenX;
    int screenY;
    char _pad20[0x10];
    int screenVelocityX;
    int screenVelocityY;
    char _pad38[0x0c];
    int velocityX;
    int velocityY;
    int velocityZ;
    OvlSprite *sprite;
    char _pad54[0x10];
    unsigned short angleVelocity;
} OvlParticle;

extern int _divsi3_RAM(int numerator, int denominator);

void OvlFunc_969_20083a0(OvlParticle *particle)
{
    int velocityX = particle->velocityX;
    int velocityZ;

    particle->x += velocityX;
    particle->y += particle->velocityY;
    velocityZ = particle->velocityZ;
    particle->z += velocityZ;
    particle->velocityX = velocityX - _divsi3_RAM(velocityX, 0x16);
    particle->velocityZ = velocityZ - _divsi3_RAM(velocityZ, 0x14);
    particle->screenX += particle->screenVelocityX;
    particle->screenY += particle->screenVelocityY;
    asm volatile("" ::: "memory");
    particle->sprite->angle += particle->angleVelocity;
}
