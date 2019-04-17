/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strncmp, full)
{
    char *str = strdup("0123456789");

    cr_assert(strncmp(str, "0123400000", 5) == 0);
    cr_assert(strncmp(str, "3120000000", 0) == 0);
    cr_assert(strncmp(str, "0120000000", 4) == '3' - '0');
    cr_assert(strncmp(str, "0666", 8) == '1' - '6');
    cr_assert(strncmp(str, "0666", 1) == 0);
    cr_assert(strncmp(str, "01234567", 19) ==  '8' - '\0');
    cr_assert(strncmp(strdup(""), "", 19) == '\0' - '\0');
    cr_assert(strncmp("", str, 12) == '\0' - '0');
    cr_assert(strncmp(strdup("A test."), "B test.", 0) == 0);
}