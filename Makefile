primes: primes.cpp
	${CXX} primes.cpp -o primes

libprimes.a: primes.cpp
	${CXX} -c -DMAKELIB primes.cpp
	${AR} -cr libprimes.a primes.o

googletest/lib/libgtest.a:
	cd googletest
	cmake -DCMAKE_CXX_COMPILER=${CXX} -DCMAKE_C_COMPILER=${CC} .
	make

gtests: googletest/lib/libgtest.a libprimes.a gtests.cpp
	${CXX} -I/opt/local/include/ -L./googletest/lib -lgtest libprimes.a gtests.cpp -std=c++11 -o gtests

.PHONY: clean

clean:
	rm -f *.o *.a primes gtests


