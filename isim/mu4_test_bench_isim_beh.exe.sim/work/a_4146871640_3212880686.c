/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ianan/HDL/VHDL/mux_input_4.vhd";



static void work_a_4146871640_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = (1 - 1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 4422);
    t9 = xsi_mem_cmp(t7, t2, 2U);
    if (t9 == 1)
        goto LAB5;

LAB9:    t10 = (t0 + 4424);
    t12 = xsi_mem_cmp(t10, t2, 2U);
    if (t12 == 1)
        goto LAB6;

LAB10:    t13 = (t0 + 4426);
    t15 = xsi_mem_cmp(t13, t2, 2U);
    if (t15 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (3 - 3);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t22 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t22;
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(42, ng0);

LAB15:    t2 = (t0 + 2824);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t0 + 2904);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast_port(t23);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (1 - 3);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t22 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t22;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (2 - 3);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t22 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t22;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 2824);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_4146871640_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4146871640_3212880686_p_0};
	xsi_register_didat("work_a_4146871640_3212880686", "isim/mu4_test_bench_isim_beh.exe.sim/work/a_4146871640_3212880686.didat");
	xsi_register_executes(pe);
}
