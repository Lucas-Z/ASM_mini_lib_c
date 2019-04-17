/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strlen, full)
{
    cr_assert(strlen("") == 0);
    cr_assert(strlen("1") == 1);
    cr_assert(strlen("12") == 2);
    cr_assert(strlen("123") == 3);
    cr_assert(strlen("1234") == 4);
    cr_assert(strlen("12345") == 5);
    cr_assert(strlen("87654323456789098765434567898765434567SCFEFZEEF") == 47);
}