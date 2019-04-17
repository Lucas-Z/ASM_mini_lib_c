/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

Test(strcspn, full)
{
    char *str = strdup("Hello world !");

    cr_assert(strcspn(str, "XEZIBFEZIBEFZ897FZ67") == 13);
    cr_assert(strcspn(str, "") == 13);
    cr_assert(strcspn("", str) == 0);
    cr_assert(strcspn(str, "o") == 4);
    cr_assert(strcspn(str, "world") == 2);
    cr_assert(strcspn(str, "woHrld") == 0);
}