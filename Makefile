CXX = g++
CXXFLAGS = -Iinclude -std=c++11 -Wall
LDFLAGS = -mconsole

SRC = src/Game.cpp src/Console.cpp
TARGETS = main1 main2

all: $(TARGETS)

%: %.cpp $(SRC)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $^ -o $@

clean:
	rm -f $(TARGETS)

