SOURCES = src
OBJECTS = objs
MODULES = mods
CLEAN_DIRS = $(SOURCES) $(OBJECTS) $(MODULES)

.PHONY: clean build

all: build

build:
	$(MAKE) -C $(SOURCES) all

clean:
	@for a in $(CLEAN_DIRS); do \
	echo "make $$a"; \
	$(MAKE) -C $$a clean; done
