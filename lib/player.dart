//import 'package:flutter/material.dart';
// is this necessary^^^^^^ ? ^

// Player class for logic testing

class Player {
  int playerID;
  int targetID;
  String realName;
  String username;
  bool isEliminated;
  bool isTargeted;
  int score;

  Player(pID,tID,rn,un,isE,isT)
  {
    this.playerID = pID;
    this.targetID = tID;
    this.realName = rn;
    this.username = un;
    this.isEliminated = isE;
    this.isTargeted = isT;
    score = 0;
  }

  ///THIS GETS CALLED BY THE GUI BUTTON.
  ///Member of class Player.
  ///It gets a question/answer pair from the remote database, makes a call to the GUI to have the user
  /// answer, and compares the user's answer to their target's answer in the database.
  /// Returns true and calls this.eliminatePlayer() if the answers are the same, false otherwise.
  bool eliminationSuccessful() {
    int questionID; //= Random number generator between [1,# of icebreaker questions];
    String question;// = getFromDB(questionID);//Get the question with that random ID from remote DB
    String answer;// = getFromDB(the answer to question);
    askUser(question);
    if(identical(askUser(question),(answer))){
        eliminateTarget();
        return true;
    }
    return false;
  }

//TODO: Player.updatePlayerScore() and Player.updateTarget().

  ///member of class Player
  ///Sets getFromDB(this.targetID).isEliminated to true
  ///Updates this.score
  ///Gets this player a new target.
  void eliminateTarget() {
    updatePlayerScore();
    updateTarget();
    //get this.targetID from remote DB
    //set the target's isEliminated=true;
  }

  ///Does GUI things. @GUI team please implement
  String askUser(String question){
    //shows a prompt to the user with @param question and a text box to answer.
    //@return the answer inputted to text box.
    return "";
  }
}