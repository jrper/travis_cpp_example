/* @(#)primes.h
 */

#ifndef _PRIMES_H
#define _PRIMES_H 1

#include <vector>
#include <iostream>

class prime{
  std::vector<int> primeList;
  void addPrime();


  public:
  prime(){
    primeList.push_back(2);
  };

  int operator[](const int& j){
    while(j>this->primeList.size()) {this->addPrime();}
    return this->primeList[j-1];
  };
  friend std::ostream& operator<<(std::ostream& os,const prime& A) {
    for (auto it=A.primeList.begin();
	 it!=A.primeList.end();
	 ++it) {
      os << *it << " ";
    }
    os <<std::endl;
  };
};

#endif /* _PRIMES_H */

