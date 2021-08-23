#include<iostream>
#include<iomanip>
using namespace std;

//First Half
int main() 
{
	int students = 0;
	int average;
	int maxgrade = 100;
	int AGrade = 0;
	int BGrade = 0;
	int CGrade = 0;
	int DGrade = 0;
	int failed = 0;
	int passing = 0;
	int bestscore = 0;
	int worstscore = 0;
	const int failure = 69;

	cout << "Enter the number of students in your class: "; // Gathering # of Students
	cin >> students; // Processing number of students
	cout << endl;

	int* grades = new int[students] {}; 

	int grade = 0;
	for (int i = 0; i < students; ++i) 
	{
		cout << "Enter grade for the student: "; //Entering Grade for each student.
		cin >> grade;
		grades[i] = grade;

		if (grade > failure) 
		{
			cout << "The student has passed." << endl; passing++; //If grade is above the int for failure, it will mark passed and add to the passing number.
		}
		else 
		{
			cout << "The student has failed." << endl; failed++; //If grade is below the int for failure, it will mark failed and add to the failing number.
		}
		
		cout << endl;
	}

	//Getting the Average
	int sum = 0;
	for (int i = 0; i < students; ++i)
	{
		sum += grades[i];
	}
	average = sum / students;

	//Getting the Best Score
	for (int i = 0; i < students; ++i)
	{
		if (grades[i] > bestscore)
		{
			bestscore = grades[i];
		}
	}

	//Getting the Lowest Score
	worstscore = maxgrade;
	for (int i = 0; i < students; ++i)
	{
		if (grades[i] < worstscore)
		{
			worstscore = grades[i];
		}
	}

	//Determining A, B, C, D, etc.
	for (int i = 0; i < students; ++i)
	{
		if (grades[i] >= 90)
		{
			AGrade++;
		}
		else if (grades[i] <= 89 && grades[i] >= 80)
		{
			BGrade++;
		}
		else if (grades[i] <= 79 && grades[i] >= 70)
		{
			CGrade++;
		}
		else if (grades[i] <= 69 && grades[i] >= 60)
		{
			DGrade++;
		}
	}

	//Begin output
		cout << "\nNames: Tristan Conde and Francisco Ramirez\n";
		cout << "Course: ISYS 3302\n";
		cout << "Assignment Number: 3\n";
		cout << "Date: April 13th, 2016\n\n";

		cout << "These are the results!";

		cout << "\n\nAverage Grade: " << average << endl; //Projecting Output
		cout << "Highest Grade: " << bestscore << endl;	  //Projecting Output
		cout << "Lowest Grade: " << worstscore << endl;   //Projecting Output
		cout << "A's: " << AGrade << endl;                //Projecting Output
		cout << "B's: " << BGrade << endl;                //Projecting Output
		cout << "C's: " << CGrade << endl;                //Projecting Output
		cout << "D's: " << DGrade << endl;                //Projecting Output
		cout << "Failing: " << failed << endl;            //Projecting Output
		cout << "Passing: " << passing << endl;           //Projecting Output
	
	system("PAUSE");
	delete[] grades; //deallocates the grades and clears it.
	return 0;
}