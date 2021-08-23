#include <iostream>
#include <iomanip>
#include <cstdlib>
using namespace std;
int main()
{
	const double RESIDENTIAL_RATE = 0.060;
	const double MULTIDWELDING_RATE = 0.050;
	const double COMMERCIAL_RATE = 0.045;

	int property_code;
	double sale_price;
	double commission_rate;
	double commission;

	cout << setprecision(2)
		<< setiosflags(ios::fixed)
		<< setiosflags(ios::showpoint);
	cout << "Enter the property's selling price: ";
	cin >> sale_price;
	cout << endl;
	cout << "Enter the property code according to the following." << endl << endl;
	cout << "Residential:                  Enter R" << endl;
	cout << "Multiple Dwelling:            Enter M" << endl;
	cout << "Commercial:                   Enter C" << endl;
	cout << "\nPlease make your selection: ";
	cin.get();
	property_code = cin.get();
	switch (property_code)
	{
	case 'R':
	case 'r':
		commission_rate = RESIDENTIAL_RATE;
		break;
	case 'M':
	case 'm':
		commission_rate = MULTIDWELDING_RATE;
		break;
	case 'C':
	case 'c':
		commission_rate = COMMERCIAL_RATE;
		break;
	default:
		cout << endl << endl << "Invalid Property Code! Please try again." << endl;
		exit(1);
		break;
	}
	commission = sale_price * commission_rate;
	cout << endl << endl;
	cout << "The commission is: " << commission << endl;
	system("PAUSE");
}