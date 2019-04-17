/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(rindex, full)
{
    char *str = strdup("Hello world !");

    cr_assert(index(str, 'H') == str);
    cr_assert(rindex(str, '!') == str + 12);
    cr_assert(rindex(str, '\0') == str + 13);
    cr_assert(rindex(str, 'e') == str + 1);
    cr_assert(rindex(str, 'o') == str + 7);
    cr_assert(rindex(str, 'l') == str + 9);
    cr_assert(rindex(str, 'k') == NULL);
}