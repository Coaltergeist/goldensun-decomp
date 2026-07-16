/* Cluster Func_80b7ed8..Func_80b7ed8 extracted from goldensun/asm/rom_b5000/rom_b7410_c_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_a_a.o and asm/rom_b5000/rom_b7410_c_a_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
extern void *iwram_3001e80;
extern void InitMatrixStack(void);
extern int _GetFlag(int flag);
extern int MatrixLook(vec3_t *a, vec3_t *b);
extern int MatrixSetLook(vec3_t *a, vec3_t *b);
extern void Func_8000a30(matrix_t *m);
extern unsigned char Lc2a7c[] __asm__(".Lc2a7c");

static inline void MatrixMultiply(matrix_t *m) {
    void (*mul)(matrix_t *m) = Func_8000a30;
    mul(m);
}

int Func_80b7ed8(void) {
    vec3_t *a;

    a = (vec3_t *)iwram_3001e80;
    InitMatrixStack();
    if (_GetFlag(0x16b) != 0) {
        MatrixMultiply((matrix_t *)Lc2a7c);
        return MatrixLook(a, (vec3_t *)((char *)a + 0xc));
    } else {
        return MatrixSetLook(a, (vec3_t *)((char *)a + 0xc));
    }
}
