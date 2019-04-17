/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strstr, full)
{
    char *str = "Hello World !";

    cr_assert(strstr(str, "Hello") == str);
    cr_assert(strstr(str, "!") == str + 12);
    cr_assert(strstr(str, "ell") == str + 1);
    cr_assert(strstr(str, "o") == str + 4);
    cr_assert(strstr(str, "") == str);
    cr_assert(strstr(str, "koala") == NULL);
}