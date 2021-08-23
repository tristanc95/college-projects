#include <iostream>
using namespace std;

int main()
{
	char line[81];
	char* ch_ptr = line;
	cout << "Enter a line of characters: " << endl << endl;
	cin.getline(line, 81);
	while (*ch_ptr != '\0')
		++ch_ptr;
	--ch_ptr;
	cout << endl;

	cout << "The line in reverse is: " << endl << endl;
	
	while (ch_ptr != line)
	{
		cout << *ch_ptr;
		--ch_ptr;
	}
	cout << *ch_ptr;
	cout << endl;

	system("PAUSE");
	return 0;
}