#include "primes.h"

bool coprime(int i, int j) {
  return i%j == 0;
}


void prime::addPrime() {
  int i=primeList.back();
  bool flag=true;
  while(flag) {
    i++;
    flag=false;
    for (auto it=primeList.begin();
	 it!=primeList.end();
	 ++it) {
      if (coprime(i,*it)) {
	flag=true; 
      }
    }
  }
  primeList.push_back(i);
  return;
};

#ifndef MAKELIB

int main() {

  prime A;
  A[10];
  std::cout << A;

  return 0;
};

#endif
      
  
