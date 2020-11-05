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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/university/3991/fpga/homeworks/PWM_generatore/pwm_generator.v";
static int ng1[] = {0, 0};
static int ng2[] = {5, 0};
static int ng3[] = {1, 0};
static int ng4[] = {10, 0};



static void Initial_32_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(32, ng0);

LAB2:    xsi_set_current_line(33, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(35, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);

LAB1:    return;
}

static void Always_38_1(char *t0)
{
    char t8[8];
    char t10[8];
    char t11[8];
    char t32[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t48;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 4, t7, 32);
    t9 = (t0 + 2248);
    xsi_vlogvar_assign_value(t9, t8, 0, 0, 4);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t11, 0, 8);
    t9 = (t4 + 4);
    if (*((unsigned int *)t9) != 0)
        goto LAB7;

LAB6:    t12 = (t7 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t4) > *((unsigned int *)t7))
        goto LAB8;

LAB9:    memset(t10, 0, 8);
    t14 = (t11 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t11);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t14) != 0)
        goto LAB13;

LAB14:    t21 = (t10 + 4);
    t22 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB15;

LAB16:    t26 = *((unsigned int *)t10);
    t27 = (~(t26));
    t28 = *((unsigned int *)t21);
    t29 = (t27 || t28);
    if (t29 > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t21) > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t10) > 0)
        goto LAB21;

LAB22:    memcpy(t8, t30, 8);

LAB23:    t31 = (t0 + 1928);
    xsi_vlogvar_assign_value(t31, t8, 0, 0, 1);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    t6 = (t0 + 2408);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memset(t11, 0, 8);
    xsi_vlog_unsigned_minus(t11, 32, t5, 32, t9, 4);
    memset(t32, 0, 8);
    t12 = (t4 + 4);
    t13 = (t11 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t11);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    t22 = (t18 ^ t19);
    t23 = (t17 | t22);
    t24 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t13);
    t27 = (t24 | t26);
    t28 = (~(t27));
    t29 = (t23 & t28);
    if (t29 != 0)
        goto LAB27;

LAB24:    if (t27 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t32) = 1;

LAB27:    memset(t10, 0, 8);
    t20 = (t32 + 4);
    t33 = *((unsigned int *)t20);
    t34 = (~(t33));
    t35 = *((unsigned int *)t32);
    t36 = (t35 & t34);
    t37 = (t36 & 1U);
    if (t37 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t20) != 0)
        goto LAB30;

LAB31:    t25 = (t10 + 4);
    t38 = *((unsigned int *)t10);
    t39 = *((unsigned int *)t25);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB32;

LAB33:    t41 = *((unsigned int *)t10);
    t42 = (~(t41));
    t43 = *((unsigned int *)t25);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t25) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t10) > 0)
        goto LAB38;

LAB39:    memcpy(t8, t47, 8);

LAB40:    t48 = (t0 + 2088);
    xsi_vlogvar_assign_value(t48, t8, 0, 0, 4);
    goto LAB2;

LAB7:    t13 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB9;

LAB8:    *((unsigned int *)t11) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t10) = 1;
    goto LAB14;

LAB13:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB14;

LAB15:    t25 = ((char*)((ng1)));
    goto LAB16;

LAB17:    t30 = ((char*)((ng3)));
    goto LAB18;

LAB19:    xsi_vlog_unsigned_bit_combine(t8, 32, t25, 32, t30, 32);
    goto LAB23;

LAB21:    memcpy(t8, t25, 8);
    goto LAB23;

LAB26:    t14 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t10) = 1;
    goto LAB31;

LAB30:    t21 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB31;

LAB32:    t30 = ((char*)((ng1)));
    goto LAB33;

LAB34:    t31 = (t0 + 2248);
    t45 = (t31 + 56U);
    t46 = *((char **)t45);
    memcpy(t47, t46, 8);
    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t8, 32, t30, 32, t47, 32);
    goto LAB40;

LAB38:    memcpy(t8, t30, 8);
    goto LAB40;

}


extern void work_m_00000000000790007453_1391599013_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Always_38_1};
	xsi_register_didat("work_m_00000000000790007453_1391599013", "isim/test_pwm_generator_isim_beh.exe.sim/work/m_00000000000790007453_1391599013.didat");
	xsi_register_executes(pe);
}
