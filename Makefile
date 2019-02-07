primes: primes.cpp
	${CXX} -std=c++11 primes.cpp -o primes

libprimes.a: primes.cpp
	${CXX} -std=c++11 -c -DMAKELIB primes.cpp
	${AR} -cr libprimes.a primes.o

googletest/lib/libgtest.a:
	cd googletest; \
           cmake -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_COMPILER=${CC} 
	${MAKE} -C googletest

gtests: googletest/lib/libgtest.a libprimes.a gtests.cpp
	${CXX} -I./googletest/googletest/include -L./googletest/lib  gtests.cpp -std=c++11 -o gtests -lgtest -lpthread libprimes.a

.PHONY: clean

clean:
	rm -f *.o *.a primes gtests


