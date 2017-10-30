FROM fedora:26

RUN dnf update -y;\
    dnf install -y boost\
                boost-devel\
                cmake\
                doxygen\
                gcc\
                gcc-c++\
                git\
                java\
                make\
		numpy\
                perl\
		python\
		valgrind

RUN git clone git://scm.gforge.inria.fr/simgrid/simgrid.git simgrid;\
    cd simgrid ;\
    git checkout tags/v3.17;\
    cmake -DCMAKE_INSTALL_PREFIX=/opt/simgrid . ;\
    make ;\
    make install

