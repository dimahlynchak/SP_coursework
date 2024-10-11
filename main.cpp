#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;

    int a = 5;
    int b = 3;

    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Sub: " << calc.Sub(a, b) << std::endl;
    std::cout << "Mul: " << calc.Mul(a, b) << std::endl;

    return 0;
}
