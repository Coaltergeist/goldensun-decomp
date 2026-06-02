/* gs_config.h — compile-time configuration for the GS-headers tree.
 *
 * Force-included by the build (judge.sh JUDGE_CFLAGS / Makefile) via -include
 * so the GS-headers select the correct game and matching-faithful code paths.
 * GS1 = Golden Sun (this decomp). MATCHING enables the byte-faithful idioms
 * (e.g. the fxmul fastcall asm hack in math.h). LANG selects the text language.
 */
#ifndef GS_CONFIG_H
#define GS_CONFIG_H

#define GS1      1
#define MATCHING 1
#define LANG     'E'

#endif /* GS_CONFIG_H */
