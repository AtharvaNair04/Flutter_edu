class Word{
  final String topic;
  final String chapterName;
  final String Name;
  final String formula;
  List<String> flashcards;
  Word({required this.topic, required this.chapterName,required this.Name, required this.formula,this.flashcards = const []});

  void addFlashcard(String newFlashcard) {
    flashcards.add(newFlashcard);
  }

}