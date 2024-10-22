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
static const char *ng0 = "/home/ianan/HDL/VHDL/mux_input_8.vhd";



static void work_a_0286838348_3212880686_p_0(char *t0)
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
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = (2 - 2);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 4427);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB13:    t10 = (t0 + 4430);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB14:    t13 = (t0 + 4433);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB15:    t16 = (t0 + 4436);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB16:    t19 = (t0 + 4439);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB17:    t22 = (t0 + 4442);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB18:    t25 = (t0 + 4445);
    t27 = xsi_mem_cmp(t25, t2, 3U);
    if (t27 == 1)
        goto LAB11;

LAB19:
LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (7 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(42, ng0);

LAB23:    t2 = (t0 + 2824);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB24;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = (0 - 7);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t28 = (t29 + t33);
    t34 = *((unsigned char *)t28);
    t35 = (t0 + 2904);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    *((unsigned char *)t39) = t34;
    xsi_driver_first_trans_fast_port(t35);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (1 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (2 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (3 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (4 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (5 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t9 = (6 - 7);
    t4 = (t9 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t34 = *((unsigned char *)t2);
    t7 = (t0 + 2904);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t34;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB20:;
LAB21:    t3 = (t0 + 2824);
    *((int *)t3) = 0;
    goto LAB2;

LAB22:    goto LAB21;

LAB24:    goto LAB22;

}


extern void work_a_0286838348_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0286838348_3212880686_p_0};
	xsi_register_didat("work_a_0286838348_3212880686", "isim/mux8_test_bench_isim_beh.exe.sim/work/a_0286838348_3212880686.didat");
	xsi_register_executes(pe);
}
