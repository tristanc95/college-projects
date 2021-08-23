#include <iostream>
#include <string>
#include <ctime>
#include <cstdlib>
using namespace std;

//Declaring Ints and Strings

int round_number; 
int players;
string input_word;
int scores;
int player_number;

int main()
{
	cout << "Welcome to our Word Game!" << endl << endl; //Intro

	cout << "How many players will be participating?" << endl; //Entering Players and gathering input
	cin >> players;

	cout << "\nHow many rounds will be played?" << endl; //Entering rounds played and gathering the input
	cin >> round_number;
	cin.ignore();

	srand(time(0));

	int* scores = new int [players] {}; //setting up array and holding the score

	for (int round_counter = 1; round_counter <= round_number; ++round_counter) //Begin loop for rounds and players
	{
		cout << "\nRound: " << round_counter << endl; //Displays the current round

		for (int player_number = 0; player_number < players; ++player_number) //Beginning the player loop to go through the player amount that was inputed
		{

			char beginning_letter = (rand() % 26) + 'a'; //Setting up the loop for the beginning letter

			int current_player = player_number + 1; //Setting up to display which player's turn is up

			cout << "\nPlayer " << current_player  << ": Please enter a word that begins with: " << beginning_letter << endl; //Displaying which player's turn it is and what letter of the word it needs to begin with
			getline(cin, input_word); //Gathering the input of what is put in by the user

			cout << "Player " << current_player << " has earned: " << input_word.length() << " points." << endl; //Tallying up the amount of points based on the length of the word by characters and displaying it

			scores[player_number] += input_word.length(); //Setting up for the total points of a player per round

			cout << "\nPlayer " << current_player << " Points: " << scores[player_number] << endl; //Displaying the points that a player has and totals them up as rounds continue
		}
	}

	cout << "\nNames: Tristan Conde, Francisco Ramirez, Melinda Perez, and Dalton Perry\n";
	cout << "Course: ISYS 3302\n";
	cout << "Assignment Number: 4\n";
	cout << "Date: April 30th, 2016\n\n";
	cout << "\nThese are the end results!";

	int best_score = 0; 
	for (int i = 0; i < players; ++i) //Beginning the loop to find the best score of all the players
	{
		cout << "\nPlayer " << (i + 1) << " Points: " << scores[i] << '\n';

		if (scores[i] > best_score)
			best_score = scores[i];
	}

	cout << "\nThe winner of the game is: \n";
	
	for (int i = 0; i < players; ++i) //Finding the player with the highest score
	{
		if (scores[i] == best_score)
			cout << "\nCongratulations Player " << (i + 1) << " you are the winner!\n"; //Displaying whoever had the highest score
	}
	
	system("PAUSE");
}

