#include <gtest/gtest.h>
#include "primes.h"


TEST(Primes, 2ndPrimeIsThree) {
  prime A;
    EXPECT_EQ(A[2], 3);
}

TEST(Primes, 10thPrimeIs29) {
  prime A;
    EXPECT_EQ(A[10], 29);
}


int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv); 
    return RUN_ALL_TESTS();
}
