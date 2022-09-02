//This program should calculate a mileage reimbursement.
// It will prompt the user to enter a distance in miles, and will tell the user how much their reimbursement should be.
#include <iostream>
//from std import *
//using namespace std;
#include "reimbursement/reimbursement.hpp"


int main() {
//Step 1: declaring a miles variable
	int miles;
//Step 2: initialize a reimbursement rate variable
	float reimbursement_rate = 62.5;
//Step 3: Read input from user into miles, with prompt
	std::cout << "Please enter number of miles traveled: ";
	std::cin >> miles;
//Step 4: Multiply miles and rate and print result	
	std::cout << "You should get reimbursed ";
	std::cout << (miles * reimbursement_rate) / 100 << std::endl;

  Reimbursement r((miles*reimbursement_rate)/100.0f);
  std::cout << r;
	return 0;
}







