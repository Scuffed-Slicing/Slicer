# -std=c++14: we're limiting ourselves to c++14, since that's what the 
#             GCC compiler on the VSC supports.
# -DNDEBUG: turns off e.g. assertion checks
# -O3: enables optimizations in the compiler

FLAGS = -std=c++20
PROD_FLAGS = -O3 -DNDEBUG
DEBUG_FLAGS = -g -Wall -Wextra -Wpedantic -fstandalone-debug
SOURCEDIR = src
BUILDDIR = build

INC = $(wildcard Clipper2Lib/include/)
FILES = $(wildcard $(SOURCEDIR)/*.cpp) $(wildcard Clipper2Lib/src/*.cpp)

splicer: $(FILES)
	$(CXX) $(FLAGS) $(PROD_FLAGS) -I $(INC) -o $(BUILDDIR)/splicer $(FILES)

run: splicer
	./build/splicer