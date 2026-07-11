#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != winner ]]
  then
    # get team_id
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # if not found
    if [[ -z $TEAM_ID ]]
    then
      # insert team
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

      # get new team_id
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        echo "Inserted into teams, $WINNER"
        
      fi

    fi

    # get team_id
    TEAM_ID_2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if not found
    if [[ -z $TEAM_ID_2 ]]
    then
      # insert course
      INSERT_TEAM_ID_2_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

      # get new course_id
      if [[ $INSERT_TEAM_ID_2_RESULT == "INSERT 0 1" ]]
      then
        TEAM_ID_2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        echo "Inserted into teams, $OPPONENT"
      fi

    fi

    # get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # if not found
    if [[ -z $WINNER_ID ]]
    then
    # set to null
      WINNER_ID=null
    fi

    # get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if not found
    if [[ -z $OPPONENT_ID ]]
    then
    # set to null
      OPPONENT_ID=null
    fi

    # insert games
    INSERT_GAMES_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games, '$YEAR', '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS"
    fi

  fi
done