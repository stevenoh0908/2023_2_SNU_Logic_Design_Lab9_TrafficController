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
static const char *ng0 = "/csehome/jeehye/2023_2_SNU_Logic_Design_Lab9_TrafficController/trafficNextState.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {2U, 0U};



static void Cont_42_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4024U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 4840);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_43_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4272U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 4856);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_46_2(char *t0)
{
    char t15[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;

LAB0:    t1 = (t0 + 4520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4872);
    *((int *)t2) = 1;
    t3 = (t0 + 4552);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);

LAB5:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1752U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(48, ng0);

LAB9:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB10:    t5 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t13 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:
LAB19:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    goto LAB8;

LAB11:    xsi_set_current_line(50, ng0);

LAB20:    xsi_set_current_line(51, ng0);
    t11 = (t0 + 2072U);
    t12 = *((char **)t11);
    t11 = (t0 + 1912U);
    t14 = *((char **)t11);
    t6 = *((unsigned int *)t12);
    t7 = *((unsigned int *)t14);
    t8 = (t6 & t7);
    *((unsigned int *)t15) = t8;
    t11 = (t12 + 4);
    t16 = (t14 + 4);
    t17 = (t15 + 4);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t16);
    t18 = (t9 | t10);
    *((unsigned int *)t17) = t18;
    t19 = *((unsigned int *)t17);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB21;

LAB22:
LAB23:    t41 = (t15 + 4);
    t42 = *((unsigned int *)t41);
    t43 = (~(t42));
    t44 = *((unsigned int *)t15);
    t45 = (t44 & t43);
    t46 = (t45 != 0);
    if (t46 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB26:    goto LAB19;

LAB13:    xsi_set_current_line(58, ng0);

LAB29:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2232U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB32:    goto LAB19;

LAB15:    xsi_set_current_line(66, ng0);

LAB35:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 2072U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB38:    goto LAB19;

LAB17:    xsi_set_current_line(74, ng0);

LAB41:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 2232U);
    t5 = *((char **)t3);
    t3 = (t5 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB42;

LAB43:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB44:    goto LAB19;

LAB21:    t21 = *((unsigned int *)t15);
    t22 = *((unsigned int *)t17);
    *((unsigned int *)t15) = (t21 | t22);
    t23 = (t12 + 4);
    t24 = (t14 + 4);
    t25 = *((unsigned int *)t12);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t14);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t37 & t35);
    t38 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t38 & t36);
    t39 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t39 & t35);
    t40 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t40 & t36);
    goto LAB23;

LAB24:    xsi_set_current_line(51, ng0);

LAB27:    xsi_set_current_line(52, ng0);
    t47 = ((char*)((ng2)));
    t48 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t48, t47, 0, 0, 2, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, 40000LL);
    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB28:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB26;

LAB30:    xsi_set_current_line(59, ng0);

LAB33:    xsi_set_current_line(60, ng0);
    t11 = ((char*)((ng5)));
    t12 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, 40000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB32;

LAB36:    xsi_set_current_line(67, ng0);

LAB39:    xsi_set_current_line(68, ng0);
    t11 = ((char*)((ng6)));
    t12 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, 40000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB40:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB38;

LAB42:    xsi_set_current_line(75, ng0);

LAB45:    xsi_set_current_line(76, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2952);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 2, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4328);
    xsi_process_wait(t2, 40000LL);
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB46:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    goto LAB44;

}


extern void work_m_14778636252515503415_1331147508_init()
{
	static char *pe[] = {(void *)Cont_42_0,(void *)Cont_43_1,(void *)Always_46_2};
	xsi_register_didat("work_m_14778636252515503415_1331147508", "isim/trafficNextState_tb_isim_beh.exe.sim/work/m_14778636252515503415_1331147508.didat");
	xsi_register_executes(pe);
}
