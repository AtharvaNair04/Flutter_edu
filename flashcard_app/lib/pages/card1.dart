import 'package:flashcard_app/animations/slideanimation.dart';
import 'package:flashcard_app/components/myhome/flashcard.dart';
import 'package:flashcard_app/enum/slide_direction.dart';
import 'package:flashcard_app/headernames/headname.dart';
import 'package:flashcard_app/models/word.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class card1 extends StatelessWidget {
  const card1({
    required this.chapterWords,
    Key? key,
  }) : super(key: key);

  final List<Word> chapterWords;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<headnamenotifier>(
      builder: (context, notifier, child) {
        return GestureDetector(
            child: slideanime(
              animationcompleted: () {
                notifier.setIgnoreTouch(ignore: false);
              },
              reset: notifier.resetSlideCard1,
              animate: notifier.slidecard1,
              direction: SlideDirection.upIn,
              child: Center(
                child: Container(
                  width: size.width * 0.9,
                  height: size.height * 0.7,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: PageView.builder(
                    itemCount: chapterWords.length,
                    itemBuilder: (context, index) {
                      return FlashCard(
                        name: chapterWords[index].Name,
                        formula: chapterWords[index].formula,
                      );
                    },
                  ),
                ),
              ),
            ),);
      }
    );
  }
}
  

      
          

