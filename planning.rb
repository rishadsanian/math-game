# 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

# Keeps track of players lives :
# Players CLASS
#  lives state intial 3
#  wrong answer method to deduct lives
 

# Handles game flow, questions, prompts and displays
# Game CLASS
# players new players variables
# new player new player 2
#  player.currentplayer? variable


# turns 
#   current player variable
#   switcch turn method

# display variables
#   new turn variable 
#   question variable to store question
#   new question
#     question method from question class
#   validation method form question class

# score lives/3

# playgame
#   question prompt with playername
#   turn
#   validation
#   finalscore 
#   gameend

# CLASS Question

# questions method
#   random number + random number  method to generate question
#   answer variable that stores answer


# validation method (playerinput)
#   check if answer is correct
#   wrong answer method to check score

