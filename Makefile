CC=c++
CFLAGS=-c -Wall
LDFLAGS=-lstdc++ -rdynamic /usr/local/lib/libmraa.so.1.7.0
SOURCES=SparkFun_9DOF_Edison_Block_Example.cpp SFE_LSM9DS0.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=EdisonV3

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
