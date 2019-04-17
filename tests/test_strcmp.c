/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strcmp, full)
{
    cr_assert(strcmp("0123456789", "0123456789") == 0);
    cr_assert(strcmp("0123456789", "0000000000") == '1' - '0');
}