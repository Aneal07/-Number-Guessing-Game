Guess The Number - Bash and PostgreSQL
This project is a simple bash script game where a player is prompted to guess a randomly generated secret number between 1 to 1000. The script provides hints to the player by informing them if their guess was larger than or smaller than the secret number. The game continues until the user correctly guesses the number.

In addition to the gameplay, user data (username, number of games played, and best game) are stored in a PostgreSQL table. This data is used to customize welcome messages to new and returning players, providing a personalized user experience.

How To Play
Run the script: ./number_guess.sh
Enter your username.
Guess the secret number!
How It Works
Usernames: If it's your first time playing, you'll be welcomed and your username will be stored for future games. If you're a returning player, the game will tell you how many games you've played before and your best game (the game where you guessed the secret number with the fewest guesses).
Guessing: When guessing the number, you'll be told if your guess is too high or too low. Use these hints to adjust your next guess.
Requirements
Bash shell
PostgreSQL
Database Structure
This script uses a PostgreSQL database with two tables:

users table with columns:
user_id (integer, primary key)
username (string)
games table with columns:
game_id (integer, primary key)
user_id (integer, foreign key referencing users.user_id)
guesses (integer, storing the number of guesses it took to win the game)
Future Improvements
Add a score system based on the number of guesses
Implement a leaderboard to tra
