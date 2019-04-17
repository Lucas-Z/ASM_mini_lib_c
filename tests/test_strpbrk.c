/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strpbrk, full)
{
    char *str = "Hello World !";

    cr_assert(strpbrk(str, "aa a Ho") == str);
    cr_assert(strpbrk(str, "aa!aa") == str + 12);
    cr_assert(strpbrk(str, "ealal") == str + 1);
    cr_assert(strpbrk(str, "o&&") == str + 4);
    cr_assert(strpbrk(str, "") == NULL);
    cr_assert(strpbrk(str, "kaa") == NULL);
}