VCPATH := ~/Vc
CXX := clang++
CXXFLAGS := -O3 -fno-tree-vectorize -msse -I${VCPATH}/include -L${VCPATH}/lib
LDFLAGS := -L${VCPATH}/lib -lVc
TARGET := RandomAccess.out
SRC := RandomAccess.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(SRC) -o $(TARGET) $(CXXFLAGS) ${VCPATH}/lib/libVc.a

clean:
	rm -f $(TARGET)

.PHONY: clean
