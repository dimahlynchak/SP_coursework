cmake_minimum_required(VERSION 3.10)

# Назва проєкту
project(calculator_app)

# Налаштування для компілятора
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Додаємо файли до компіляції
add_executable(calculator_app main.cpp calculator.cpp)

# Додаткові опції компіляції
target_compile_options(calculator_app PRIVATE -Wall -Wextra -O2)
