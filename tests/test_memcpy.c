/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(memcpy, full)
{
    char *src = strdup("0123456789");
    char *dest = calloc(sizeof(char), 11);

    cr_assert(strncmp(memcpy(dest, src, 0), src, 0) == 0);
    cr_assert(strncmp(memcpy(dest, src, 1), src, 1) == 0);
    cr_assert(strncmp(memcpy(dest, src, 10), src, 10) == 0);
    cr_assert(strncmp(memcpy(dest, src, 4), src, 4) == 0);
    cr_assert(strncmp(memcpy(dest, "aaaaaaaaaa", 8), "aaaaaaaaaa", 8) == 0);
}