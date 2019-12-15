CC = gfortran
CC_FLAGS = -ffree-form -c

all: main

main: main.o
	$(CC) *.o -o main

init.o: init.f
	$(CC) $(CC_FLAGS) init.f

equation.o: equation.f
	$(CC) $(CC_FLAGS) equation.f

func.o: func.f
	$(CC) $(CC_FLAGS) func.f

integral.o: integral.f
	$(CC) $(CC_FLAGS) integral.f

integral1.o: integral1.f
	$(CC) $(CC_FLAGS) integral1.f

nderiv.o: nderiv.f
	$(CC) $(CC_FLAGS) nderiv.f

main.o: main.f
	$(CC) $(CC_FLAGS) main.f

clean:
	rm -f *.o *.mod main
