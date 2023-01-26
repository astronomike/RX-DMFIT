FILES = Constants.cpp Target.cpp bfield.cpp DM_profile.cpp \
        greens.cpp diffusion.cpp dist.cpp psyn.cpp pIC.cpp \
        emissivity.cpp surface_brightness_profile.cpp      \
        flux.cpp calc_sv.cpp run.cpp


# prefix should point to location of darksusy
# e.g. home/alex/research/darksusy-5.1.2
# note the following flags work with darksusy-6.4.0, for previous versions
# use master branch or edit flags manually
prefix = 

LDLIBS = -lgsl -lgslcblas -lgfortran -lsharp_healpix_f \
-lcfitsio        -lds_generic_decayingDM       -lds_mssm_user          -lFH       \
-lds_core        -lds_generic_decayingDM_user  -lds_silveira_zee       -lgif      \
-lds_core_user   -lds_generic_wimp             -lds_silveira_zee_user  -lisajet   \
-lds_empty       -lds_generic_wimp_user        -lds_vdSIDM             -lhealpix  \
-lds_empty_user  -lds_mssm                     -lds_vdSIDM_user        -lhpxgif

example1: $(FILES) example1.cpp
	$(CXX) -o example1 $(FILES) example1.cpp  \
	 -I/${prefix}/include -L/${prefix}/lib \
	 $(LDLIBS)

example2: $(FILES) example2.cpp
	$(CXX) -o example2 $(FILES) example2.cpp  \
	 -I/${prefix}/include -L/${prefix}/lib \
	 $(LDLIBS)