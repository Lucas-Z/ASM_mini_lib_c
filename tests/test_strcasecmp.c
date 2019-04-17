/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strcasecmp, full)
{
    char *str = strdup("abcdefgh");

    cr_assert(strcasecmp(str, "abcdefgh") == 0);
    cr_assert(strcasecmp(str, "ABCDEFGH") == 0);
    cr_assert(strcasecmp(str, "Aabcdefg") == 'b' - 'a');
    cr_assert(strcasecmp(str, "AbCdeFF") == 'g' - 'f');
    cr_assert(strcasecmp(str, "ZZZZZ") == 'a' - 'z');
    cr_assert(strcasecmp(str, "ABCDE") ==  'f' - '\0');
    cr_assert(strcasecmp(str, "") ==  'a' - '\0');
}