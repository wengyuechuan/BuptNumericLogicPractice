/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_17(char*, char *);
extern void execute_25(char*, char *);
extern void execute_28(char*, char *);
extern void execute_31(char*, char *);
extern void execute_36(char*, char *);
extern void execute_40(char*, char *);
extern void execute_44(char*, char *);
extern void execute_46(char*, char *);
extern void execute_50(char*, char *);
extern void execute_55(char*, char *);
extern void execute_59(char*, char *);
extern void execute_62(char*, char *);
extern void execute_66(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_100(char*, char *);
extern void execute_102(char*, char *);
extern void execute_103(char*, char *);
extern void execute_105(char*, char *);
extern void execute_110(char*, char *);
extern void execute_113(char*, char *);
extern void execute_118(char*, char *);
extern void execute_122(char*, char *);
extern void execute_125(char*, char *);
extern void execute_130(char*, char *);
extern void execute_135(char*, char *);
extern void execute_140(char*, char *);
extern void execute_144(char*, char *);
extern void execute_148(char*, char *);
extern void execute_155(char*, char *);
extern void execute_159(char*, char *);
extern void execute_163(char*, char *);
extern void execute_203(char*, char *);
extern void execute_212(char*, char *);
extern void execute_215(char*, char *);
extern void execute_218(char*, char *);
extern void execute_223(char*, char *);
extern void execute_226(char*, char *);
extern void execute_243(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_384(char*, char *);
extern void execute_521(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_524(char*, char *);
extern void execute_527(char*, char *);
extern void execute_530(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_540(char*, char *);
extern void execute_544(char*, char *);
extern void execute_558(char*, char *);
extern void execute_571(char*, char *);
extern void execute_575(char*, char *);
extern void execute_578(char*, char *);
extern void execute_582(char*, char *);
extern void execute_586(char*, char *);
extern void execute_591(char*, char *);
extern void execute_594(char*, char *);
extern void execute_599(char*, char *);
extern void execute_616(char*, char *);
extern void execute_622(char*, char *);
extern void execute_639(char*, char *);
extern void execute_643(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_62(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_67(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_69(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_70(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_71(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_73(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_145(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_147(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_149(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_152(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_177(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_184(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_226(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_240(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_254(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_268(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_367(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_381(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[168] = {(funcp)execute_17, (funcp)execute_25, (funcp)execute_28, (funcp)execute_31, (funcp)execute_36, (funcp)execute_40, (funcp)execute_44, (funcp)execute_46, (funcp)execute_50, (funcp)execute_55, (funcp)execute_59, (funcp)execute_62, (funcp)execute_66, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_100, (funcp)execute_102, (funcp)execute_103, (funcp)execute_105, (funcp)execute_110, (funcp)execute_113, (funcp)execute_118, (funcp)execute_122, (funcp)execute_125, (funcp)execute_130, (funcp)execute_135, (funcp)execute_140, (funcp)execute_144, (funcp)execute_148, (funcp)execute_155, (funcp)execute_159, (funcp)execute_163, (funcp)execute_203, (funcp)execute_212, (funcp)execute_215, (funcp)execute_218, (funcp)execute_223, (funcp)execute_226, (funcp)execute_243, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_380, (funcp)execute_381, (funcp)execute_384, (funcp)execute_521, (funcp)execute_522, (funcp)execute_523, (funcp)execute_524, (funcp)execute_527, (funcp)execute_530, (funcp)execute_532, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_540, (funcp)execute_544, (funcp)execute_558, (funcp)execute_571, (funcp)execute_575, (funcp)execute_578, (funcp)execute_582, (funcp)execute_586, (funcp)execute_591, (funcp)execute_594, (funcp)execute_599, (funcp)execute_616, (funcp)execute_622, (funcp)execute_639, (funcp)execute_643, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_46, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)transaction_61, (funcp)transaction_62, (funcp)transaction_63, (funcp)transaction_65, (funcp)transaction_66, (funcp)transaction_67, (funcp)transaction_68, (funcp)transaction_69, (funcp)transaction_70, (funcp)transaction_71, (funcp)transaction_72, (funcp)transaction_73, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_92, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_126, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_135, (funcp)transaction_138, (funcp)transaction_140, (funcp)transaction_142, (funcp)transaction_143, (funcp)transaction_145, (funcp)transaction_147, (funcp)transaction_149, (funcp)transaction_151, (funcp)transaction_152, (funcp)transaction_154, (funcp)transaction_155, (funcp)transaction_163, (funcp)transaction_170, (funcp)transaction_177, (funcp)transaction_184, (funcp)transaction_191, (funcp)transaction_198, (funcp)transaction_205, (funcp)transaction_212, (funcp)transaction_219, (funcp)transaction_226, (funcp)transaction_233, (funcp)transaction_240, (funcp)transaction_247, (funcp)transaction_254, (funcp)transaction_261, (funcp)transaction_268, (funcp)transaction_275, (funcp)transaction_300, (funcp)transaction_307, (funcp)transaction_314, (funcp)transaction_321, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_360, (funcp)transaction_367, (funcp)transaction_374, (funcp)transaction_381, (funcp)transaction_406};
const int NumRelocateId= 168;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/medicine_func_impl/xsim.reloc",  (void **)funcTab, 168);
	iki_vhdl_file_variable_register(dp + 100560);
	iki_vhdl_file_variable_register(dp + 100616);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/medicine_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/medicine_func_impl/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/medicine_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/medicine_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/medicine_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
