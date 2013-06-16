mkdir -p macosx
(cd build; cmake .. && make -j3 $1; cd ..)
