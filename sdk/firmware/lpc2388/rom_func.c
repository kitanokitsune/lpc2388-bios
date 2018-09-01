
/*
    このファイル（rom_func.c）は、標準ライブラリ等をBIOS APIとして埋め込むため
    のものであり、to_be_deleted_*() を呼び出してはいけない。
 */


#include "rom_func.h"
#include "malloc2388.h"

char to_be_deleted_nop_func(char *buf)
{
    __malloc2388_init(2, 7, 0, 0);
    buf = malloc2388(0);
    free2388(buf);

//    if (buf == NULL) exit(0);

    return (char)atoi(buf)+(char)atol(buf)+(char)atof(buf);
}

char to_be_deleted_str_func(char *buf)
{
    char s[12];

    strncpy(s,buf,5);
    strcpy(s,strrchr(buf,'Z'));
    strncat(s,strstr(s,buf),5);
    strcat(s,strchr(buf,'A'));
    memcpy(s,memchr(s,'@',5),2);
    memmove(s,strtok(s,buf),2);

    return memcmp(s,buf,3)+strspn(s,buf)+strcspn(s,buf)
        +isalnum(s[0])
        +isalpha(s[1])
        +isdigit(s[2])
        +isxdigit(s[3])
        +isgraph(s[4])
        +isprint(s[5])
        +ispunct(s[6])
        +isupper(s[7])
        +islower(s[8])
        +toupper(s[9])
        +tolower(s[10])
        +iscntrl(s[11])
        +isspace(s[12])
            ;
}

/* 四則演算（特に除算）, malloc()/free(),sprintf() を埋め込むダミー関数 */
void to_be_deleted_arm_embed_std_library_function(void)
{
    volatile char c1, c2;
    volatile unsigned char uc1, uc2;
    volatile int i1, i2;
    volatile unsigned int ui1, ui2;
    volatile long l1, l2;
    volatile unsigned long ul1, ul2;
    volatile long long ll1, ll2;
    volatile unsigned long long ull1, ull2;
    volatile float f1, f2;
    volatile double d1, d2;
    volatile long double ld1, ld2;
    char *buf;

    buf = malloc(sizeof(char)*50);
    // convert char to other
    c2 = 'z';
//    c1 = (char)c2;
    uc1 = (unsigned char)c2;
    i1 = (int)c2;
    ui1 = (unsigned int)c2;
    l1 = (long)c2;
    ul1 = (unsigned long)c2;
    ll1 = (long long)c2;
    ull1 = (unsigned long long)c2;
    f1 = (float)c2;
    d1 = (double)c2;
    ld1 = (long double)c2;

    // convert unsigned char to other
    uc2 = 250;
    c1 = (char)uc2;
//    uc1 = (unsigned char)uc2;
    i1 = (int)uc2;
    ui1 = (unsigned int)uc2;
    l1 = (long)uc2;
    ul1 = (unsigned long)uc2;
    ll1 = (long long)uc2;
    ull1 = (unsigned long long)uc2;
    f1 = (float)uc2;
    d1 = (double)uc2;
    ld1 = (long double)uc2;

    // convert int to other
    i2 = -250;
    c1 = (char)i2;
    uc1 = (unsigned char)i2;
//    i1 = (int)i2;
    ui1 = (unsigned int)i2;
    l1 = (long)i2;
    ul1 = (unsigned long)i2;
    ll1 = (long long)i2;
    ull1 = (unsigned long long)i2;
    f1 = (float)i2;
    d1 = (double)i2;
    ld1 = (long double)i2;

    // convert unsigned int to other
    ui2 = 65250;
    c1 = (char)ui2;
    uc1 = (unsigned char)ui2;
    i1 = (int)ui2;
//    ui1 = (unsigned int)ui2;
    l1 = (long)ui2;
    ul1 = (unsigned long)ui2;
    ll1 = (long long)ui2;
    ull1 = (unsigned long long)ui2;
    f1 = (float)ui2;
    d1 = (double)ui2;
    ld1 = (long double)ui2;

    // convert long to other
    l2 = -165250;
    c1 = (char)l2;
    uc1 = (unsigned char)l2;
    i1 = (int)l2;
    ui1 = (unsigned int)l2;
//    l1 = (long)l2;
    ul1 = (unsigned long)l2;
    ll1 = (long long)l2;
    ull1 = (unsigned long long)l2;
    f1 = (float)l2;
    d1 = (double)l2;
    ld1 = (long double)l2;

    // convert unsigned long to other
    ul2 = -165250;
    c1 = (char)ul2;
    uc1 = (unsigned char)ul2;
    i1 = (int)ul2;
    ui1 = (unsigned int)ul2;
    l1 = (long)ul2;
//    ul1 = (unsigned long)ul2;
    ll1 = (long long)ul2;
    ull1 = (unsigned long long)ul2;
    f1 = (float)ul2;
    d1 = (double)ul2;
    ld1 = (long double)ul2;

    // convert long long to other
    ll2 = 3165250;
    c1 = (char)ll2;
    uc1 = (unsigned char)ll2;
    i1 = (int)ll2;
    ui1 = (unsigned int)ll2;
    l1 = (long)ll2;
    ul1 = (unsigned long)ll2;
//    ll1 = (long long)ll2;
    ull1 = (unsigned long long)ll2;
    f1 = (float)ll2;
    d1 = (double)ll2;
    ld1 = (long double)ll2;

    // convert unsigned long long to other
    ull2 = 3165250;
    c1 = (char)ull2;
    uc1 = (unsigned char)ull2;
    i1 = (int)ull2;
    ui1 = (unsigned int)ull2;
    l1 = (long)ull2;
    ul1 = (unsigned long)ull2;
    ll1 = (long long)ull2;
//    ull1 = (unsigned long long)ull2;
    f1 = (float)ull2;
    d1 = (double)ull2;
    ld1 = (long double)ull2;

    // convert float to other
    f2 = -114.56;
    c1 = (char)f2;
    uc1 = (unsigned char)f2;
    i1 = (int)f2;
    ui1 = (unsigned int)f2;
    l1 = (long)f2;
    ul1 = (unsigned long)f2;
    ll1 = (long long)f2;
    ull1 = (unsigned long long)f2;
//    f1 = (float)f2;
    d1 = (double)f2;
    ld1 = (long double)f2;

    // convert double to other
    d2 = -44.13;
    c1 = (char)d2;
    uc1 = (unsigned char)d2;
    i1 = (int)d2;
    ui1 = (unsigned int)d2;
    l1 = (long)d2;
    ul1 = (unsigned long)d2;
    ll1 = (long long)d2;
    ull1 = (unsigned long long)d2;
    f1 = (float)d2;
//    d1 = (double)d2;
    ld1 = (long double)d2;

    // convert long double to other
    ld2 = -44.13;
    c1 = (char)ld2;
    uc1 = (unsigned char)ld2;
    i1 = (int)ld2;
    ui1 = (unsigned int)ld2;
    l1 = (long)ld2;
    ul1 = (unsigned long)ld2;
    ll1 = (long long)ld2;
    ull1 = (unsigned long long)ld2;
    f1 = (float)ld2;
    d1 = (double)ld2;
//    ld1 = (long double)ld2;

    c1 = 'z'; c2 = 40;
    uc1 = 200; uc2 = 50;
    i1 = -20010; i2 = 5000;
    ui1 = 64020; ui2 = 20001;
    ul1 = 62004; ul2 = 23001;
    f1 = -200.34; f2 = 15.1;
    d1 = -4000.23; d2 = 234.2;
    l1 = (long)d1; l2 = (long)d2;
    ld1 = 487009.23; ld2 = 2834.2;
    ll1 = (long long)ld1; ll2 = (long long)ld2;
    ull1 = (unsigned long long)ld1; ull2 = (unsigned long long)ld2;
    d1 = (double)ull1; d2 = (double)ull2;
    ld1 = (double)ull1; ld2 = (double)ull2;

    srand(i2);
    sprintf(buf,"%lp",to_be_deleted_nop_func); to_be_deleted_nop_func(buf);
    sprintf(buf,"%c%d%o",c1,c1/c2,c1%c2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%d%x%X",uc1,uc1/uc2,uc1%uc2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%d%08d%08o%d",i1,i1/i2,i1%i2,rand()); to_be_deleted_nop_func(buf);
    sprintf(buf,"%8d%08x%d",ui1,ui1/ui2,ui1%ui2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%ld%08ld%08lX",l1,l1/l2,l1%l2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%lu%08lu%08lX",ul1,ul1/ul2,ul1%ul2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%ld%08ld%08lX",ll1,ll1/ll2,ll1%ll2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%lu%08lu%08lX",ull1,ull1/ull2,ull1%ull2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%f%f%8.3f",f1+f2,f1*f2,f1/f2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%e%g%8.3e%8.3g",f1-f2,f1*f2,f1/f2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%lf%lf%lf%8.3lf",d1-d2,d1+d2,d1*d2,d1/d2); to_be_deleted_nop_func(buf);
    sprintf(buf,"%lf%lf%lf%8.3lf",ld1-ld2,ld1+ld2,ld1*ld2,ld1/ld2); to_be_deleted_nop_func(buf);

    free(buf);
}

/* 数学関数を埋め込むダミー関数 */
void to_be_deleted_arm_embed_math_library_function(void)
{
    volatile double d1, d2;
    volatile float f1,f2;
    double d;
    d1 = 314159265.3589;
    d2 = 1732.0508;
    f1 = 88432.495;
    f2 = 2349.023;

    pow(d1,d2);
    exp(cbrt(sqrt(d1)));

    exp(cos(d1));
    exp(sin(d1));
    exp(tan(d1));

    exp(acos(d1));
    exp(asin(d1));
    exp(atan(d1));
    exp(atan2(d1,d2));

    exp(cosh(d1));
    exp(sinh(d1));
    exp(tanh(d1));

    exp(d1);
    exp(log10(d1));
    exp(log2(d1));
    exp(log(d1));
    exp(hypot(d1,d2));

    modf(d1,&d);
    exp(floor(d1));
    exp(ceil(d1));
    exp(round(d1));
    exp(trunc(d1));
    exp(fabs(d1));
    exp(fmod(d1,d2));

    exp(erf(d1));
    exp(erfc(d1));

    if(isnan(exp(d1)/sqrt(d2))) d1 = exp(d2);
    if(isinf(exp(d1)/fabs(d2))) d2 = exp(d1);

}

void *to_be_deleted_misc_func(const void *k, void *a, void *fun)
{
    qsort(a,10,2,fun);
    return bsearch(k,a,5,5,fun);
}

void *to_be_deleted_vsprintf(char *buf, const char *fmt, ...)
{
    va_list ap;
    vsprintf(buf, fmt, ap);
}

