CC=gcc

LIBS_OBJ = workspace/meta/obj/thread_api.o
APPS_OBJ = workspace/meta/obj/main.o

LIBS_PATH = libs/
APPS_PATH = apps/
OBJS_PATH = workspace/meta/obj/

EXE = workspace/output/exImage


$(EXE): $(LIBS_OBJ) $(APPS_OBJ)
	@echo "Generating required object files"
	$(CC)  $(LIBS_OBJ) $(APPS_OBJ) -o $(EXE)   
	@echo "**** Build Complete ****"
	@echo "Executable Image can be found at workspace/output"

$(LIBS_OBJ):
	@echo "Running make for libs"
	cd $(LIBS_PATH) && $(MAKE)

$(APPS_OBJ):
	@echo "Running make for apps"
	cd $(APPS_PATH) && $(MAKE)

clean:
	@echo "Cleaning all object files and executables"
	rm -f $(EXE)
	cd $(OBJS_PATH) && rm -f *.o
	
