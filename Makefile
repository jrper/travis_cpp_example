
CXX = /usr/bin/g++

primes: primes.cpp
	${CXX} primes.cpp -o primes


libprimes.a: primes.cpp
	${CXX} -c -DMAKELIB primes.cpp
	ar -cr libprimes.a primes.o

tests: libprimes.a tests.cpp
	${CXX} -I/opt/local/include/ -L/opt/local/lib/ -lcppunit libprimes.a tests.cpp -std=c++11 -o tests

gtests: libprimes.a gtests.cpp
	${CXX} -I/opt/local/include/ -L/opt/local/lib/ -lgtest libprimes.a gtests.cpp -std=c++11 -o gtests
