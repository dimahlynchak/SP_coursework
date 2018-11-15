#include "calculator.h"

int Calculator::Add(double a, double b)
{
    return a + b + 0.5;  // Додаток з округленням
}

int Calculator::Sub(double a, double b)
{
    return Add(a, -b);   // Віднімання через додавання негативного значення
}

int Calculator::Mul(double a, double b)
{
    return a * b + 0.5;  // Множення з округленням
}

