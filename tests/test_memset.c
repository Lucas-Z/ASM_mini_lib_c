/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** test_strlen
*/

#include <criterion/criterion.h>

static int check_memset(char *str, char c)
{
    for (int i = 0; 1; i++)
        if (str[i] != c)
            return i;
    return 0;
}
Test(memset, full)
{
    char *output = calloc(sizeof(char), (16 + 1));

    cr_assert(check_memset(memset(output, '1', 0), '1') == 0);
    cr_assert(check_memset(memset(output, 'c', 1), 'c') == 1);
    cr_assert(check_memset(memset(output, 'a', 10), 'a') == 10);
    cr_assert(check_memset(memset(output, 'j', 4), 'j') == 4);
    cr_assert(output[4] == 'a');
}