CC = gcc
CFLAGS = -O3 -DPOLYBENCH_TIME -I./utilities
MPI = mpicc
MPIFLAGS = -g -Wall
PATH_SRC = ./
UTILITIES_PATH = ./utilities/
OBJS = nussinov_seq nussinov_pthreads nussinov_mpi nussinov_mpi_pthreads

all: $(OBJS)

nussinov_seq: $(PATH_SRC)nussinov_seq.c $(UTILITIES_PATH)polybench.c
	@echo "Compiling $@"
	@$(CC) $(CFLAGS) -o $@ $(PATH_SRC)nussinov_seq.c $(UTILITIES_PATH)polybench.c

nussinov_pthreads: $(PATH_SRC)nussinov_pthreads.c $(UTILITIES_PATH)polybench.c
	@echo "Compiling $@"
	@$(CC) $(CFLAGS) -o $@ $(PATH_SRC)nussinov_pthreads.c $(UTILITIES_PATH)polybench.c

nussinov_mpi: $(PATH_SRC)nussinov_mpi.c $(UTILITIES_PATH)polybench.c
	@echo "Compiling $@"
	@$(MPI) $(CFLAGS) $(MPIFLAGS) -o $@ $(PATH_SRC)nussinov_mpi.c $(UTILITIES_PATH)polybench.c

nussinov_mpi_pthreads: $(PATH_SRC)nussinov_mpi_pthreads.c $(UTILITIES_PATH)polybench.c
	@echo "Compiling $@"
	@$(MPI) $(CFLAGS) $(MPIFLAGS) -o $@ $(PATH_SRC)nussinov_mpi_pthreads.c $(UTILITIES_PATH)polybench.c

clean:
	rm -f $(OBJS)
