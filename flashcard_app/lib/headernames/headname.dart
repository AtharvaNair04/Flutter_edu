
import 'package:flashcard_app/enum/slide_direction.dart';
import 'package:flutter/material.dart';

class headnamenotifier extends ChangeNotifier{
  int selectedFlashcardIndex = 0;
  String selectedFormula = '';
  String topic = '';
  setSelectedFlashcardIndex(int index) {
    selectedFlashcardIndex = index;
    notifyListeners();
  }

  setSelectedFormula(String formula) {
    selectedFormula = formula;
    notifyListeners();
  }
  setTopic({required String topic}){
    this.topic=topic;
    notifyListeners();
  }
  
  bool ignoreTouches=true;
  setIgnoreTouch({required bool ignore}){
    ignoreTouches=ignore;
    notifyListeners();

  }
  SlideDirection swipedDirection=SlideDirection.none;
  bool slidecard1=false,flipcard1=false ,flipcard2=false,swipecard=false;
  bool resetSlideCard1=false,resetFlipCard1=false,resetFlipCard2=false,resetSwipeCard2=false;
  
  runSwipecard1(){
    resetSlideCard1=false;
    slidecard1=true;
    notifyListeners();
  }
  
  runFlipcard1(){
    resetFlipCard1=false;
    flipcard1=true;
    notifyListeners();
  }
  
  resetcard1(){
    resetSlideCard1=true;
    resetFlipCard1=true;
    slidecard1=false;
    flipcard1=false;
  }


}