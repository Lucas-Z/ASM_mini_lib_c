/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strchr, full)
{
    char *str = strdup("Hello world !");

    cr_assert(strchr(str, 'H') == str);
    cr_assert(strchr(str, '!') == str + 12);
    cr_assert(strchr(str, '\0') == str + 13);
    cr_assert(strchr(str, 'e') == str + 1);
    cr_assert(strchr(str, 'o') == str + 4);
    cr_assert(strchr(str, 'l') == str + 2);
    cr_assert(strchr(str, 'k') == NULL);
}