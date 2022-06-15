#
#  This file is part of MUMPS 5.1.1, released
#  on Mon Mar 20 14:34:33 UTC 2017
#
# These settings for a PC under Debian/linux with standard packages :
# metis (parmetis), scotch (ptscotch), openmpi, gfortran

# packages installation : 
# apt-get install libmetis-dev libparmetis-dev libscotch-dev libptscotch-dev libatlas-base-dev openmpi-bin libopenmpi-dev lapack-dev

# Begin orderings
#LSCOTCHDIR = /usr/lib
#ISCOTCH   = -I/usr/include/scotch

#LSCOTCH   = -L$(LSCOTCHDIR) -lptesmumps -lptscotch -lptscotcherr
#LSCOTCH   = -L$(LSCOTCHDIR) -lesmumps -lscotch -lscotcherr

LPORDDIR = $(topdir)/PORD/lib/
IPORD    = -I$(topdir)/PORD/include/
LPORD    = -L$(LPORDDIR) -lpord

#LMETISDIR = /usr/lib64
#IMETIS    = -I/usr/include/parmetis
#IMETIS    = -I/usr/include/metis

# LMETIS    = -L$(LMETISDIR) -lparmetis -lmetis
#LMETIS    = -L$(LMETISDIR) -lmetis

# Corresponding variables reused later
#ORDERINGSF = -Dmetis -Dpord -Dparmetis -Dscotch -Dptscotch
ORDERINGSF =  -Dpord
ORDERINGSC  = $(ORDERINGSF)

LORDERINGS = $(LMETIS) $(LPORD) $(LSCOTCH)
IORDERINGSF = $(ISCOTCH)
IORDERINGSC = $(IMETIS) $(IPORD) $(ISCOTCH)
# End orderings
################################################################################

PLAT    =
LIBEXT  = .a
OUTC    = -o 
OUTF    = -o 
RM = /bin/rm -f
CC = mpicc
FC = mpif90
FL = mpif90
AR = ar vr 
RANLIB = ranlib
LAPACK = -lopenblas
SCALAP  = -L /opt/scalapack/lib -lscalapack 

INCPAR = -I$(OMP_DIR)/include

LIBPAR = $(SCALAP) $(LAPACK)  -lmpi 

INCSEQ = -I$(topdir)/libseq
LIBSEQ  = $(LAPACK) -L$(topdir)/libseq -lmpiseq

LIBBLAS = -lopenblas
LIBOTHERS = -lpthread

#Preprocessor defs for calling Fortran from C (-DAdd_ or -DAdd__ or -DUPPER)
CDEFS   = -DAdd_

#Begin Optimized options
# uncomment -fopenmp in lines below to benefit from OpenMP
OPTF    = -O3 -fPIC -fopenmp
OPTL    = -O3 -fPIC -fopenmp
OPTC    = -O3 -fPIC -fopenmp
#End Optimized options
INCS = $(INCPAR)
LIBS = $(LIBPAR)
LIBSEQNEEDED =
