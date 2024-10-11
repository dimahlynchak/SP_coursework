# Назва компілятора
CXX := $(shell command -v g++ 2>/dev/null || echo clang++)

# Опції компілятора (рівень оптимізації та діагностика)
CXXFLAGS = -Wall -Wextra -O2

# Назва виконуваного файлу
TARGET = calculator_app

# Список об'єктних файлів
OBJS = main.o calculator.o

# За замовчуванням команда для збірки всього проекту
all: $(TARGET)

# Правило для збірки виконуваного файлу
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Правило для компіляції main.cpp
main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp

# Правило для компіляції calculator.cpp
calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

# Правило для очищення об'єктних файлів та виконуваного файлу
clean:
	rm -f $(OBJS) $(TARGET)
