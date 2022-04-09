/*
** EPITECH PROJECT, 2022
** pain_au_chocolat
** File description:
** tests_square
*/

#include <criterion/criterion.h>

int square(int a);

Test(square_test, square_test_eq) {
    cr_assert_eq(square(5), 25);
    cr_assert_eq(square(8), 64);
    cr_assert_eq(square(2), 4);
    cr_assert_eq(square(-7), 49);
    cr_assert_neq(square(-7), 49);
}
