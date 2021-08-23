#include<iostream>
#include<iomanip>
#include <string>
using namespace std;

int budget;
int workhours;
int pay;
int payment;

int main()
{
	cout << "Enter the budget amount for the consultant: ";
	cin >> budget;

	char full;
	char part;
	
	cout << "Will they be full time or part time? ";
	string hours;
	cin >> hours;

	if (hours == "full") 
	{
		workhours = 40;
	}
	
	else if (hours == "part")
	{
		workhours = 20;
	}
		
	cout << "How much will they be paid per hour? ";
	cin >> pay;

	cout << "\nNames: Tristan Conde and Francisco Ramirez\n";
	cout << "Course: ISYS 3302\n";
	cout << "Assignment Number: 2\n";
	cout << "Date: March 23rd, 2016\n\n";

	cout << "Week  Hourly Rate Hours Worked  Payment Amount   Balance";
	cout << "\n____________________________________________________________\n";

	int count = 1;
	payment = pay * workhours;

	while (budget >= 0)
	{
		cout << count << "       " << pay << "           " << workhours << "              " << payment << "          " << budget << '\n';
		count++;
		budget = budget - payment;
	}

	

	system("PAUSE");
}
