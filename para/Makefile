CXX = g++
CXXFLAGS = -O2 -fopenmp

TARGET = nbody
SRC = nbody.cpp

all: $(TARGET)

$(TARGET): $(SRC)
		$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

run:
	./$(TARGET) 100 1 1000 10 4

clean:
	rm -f $(TARGET)
