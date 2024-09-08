CXX = g++
CXXFLAGS = -std=c++17 -Wall -g -I/usr/include/SFML
LDFLAGS = -lsfml-graphics -lsfml-window -lsfml-system

TEST = test
DEMO = demo
BUILD_TEST = build_test

$(TEST): $(BUILD_TEST)
	./$(TEST)

$(DEMO): Demo.o Complex.o
	$(CXX) $(CXXFLAGS) $^ -o $(DEMO) $(LDFLAGS)

$(BUILD_TEST): TestCounter.o Test.o Complex.o
	$(CXX) $(CXXFLAGS) $^ -o $(TEST) $(LDFLAGS)

Demo.o: Demo.cpp
	$(CXX) $(CXXFLAGS) -c Demo.cpp -o Demo.o

Complex.o: Complex.cpp
	$(CXX) $(CXXFLAGS) -c Complex.cpp -o Complex.o

TestCounter.o: TestCounter.cpp
	$(CXX) $(CXXFLAGS) -c TestCounter.cpp -o TestCounter.o

Test.o: Test.cpp
	$(CXX) $(CXXFLAGS) -c Test.cpp -o Test.o

tidy:
	clang-tidy $(SOURCES) -checks=bugprone-*,clang-analyzer-*,cppcoreguidelines-*,performance-*,portability-*,readability-*,-cppcoreguidelines-pro-bounds-pointer-arithmetic,-cppcoreguidelines-owning-memory --warnings-as-errors=-* --

valgrind: $(DEMO) $(TEST)
	valgrind --tool=memcheck $(VALGRIND_FLAGS) ./demo 2>&1 | { egrep "lost| at " || true; }
	valgrind --tool=memcheck $(VALGRIND_FLAGS) ./test 2>&1 | { egrep "lost| at " || true; }

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o demo test
