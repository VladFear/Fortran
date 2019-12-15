F = gfortran
FFLAGS = -ffree-form -c
objs := $(filter-out main.o, $(patsubst %.f,%.o,$(wildcard *.f))) # except main.o

.PHONY: clean

all: main

main: main.o
	$(F) *.o -o $@

main.o: main.f $(objs)
	$(F) $(FFLAGS) $<

init.o: init.f
	$(F) $(FFLAGS) $<

equation.o: equation.f func.o init.o nderiv.o
	$(F) $(FFLAGS) $<

func.o: func.f init.o
	$(F) $(FFLAGS) $<

integral.o: integral.f init.o func.o
	$(F) $(FFLAGS) $<

integral1.o: integral1.f init.o func.o
	$(F) $(FFLAGS) $<

nderiv.o: nderiv.f init.o func.o
	$(F) $(FFLAGS) $<

clean:
	rm -f *.o
