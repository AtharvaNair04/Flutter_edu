import 'package:flashcard_app/components/myhome/allchapters.dart';
import 'package:flashcard_app/data/words.dart';
import 'package:flashcard_app/headernames/headname.dart';
import 'package:flashcard_app/models/word.dart';
import 'package:flashcard_app/pages/card1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class chapters extends StatefulWidget {
  const chapters({super.key});

  @override
  State<chapters> createState() => _chaptersState();
}

class _chaptersState extends State<chapters> {
  int selectedchap=-1;
  @override
  Widget build(BuildContext context) {
    return Consumer<headnamenotifier>(
      builder:(_, notifier,__)=> Scaffold(
        appBar: AppBar(
          title: Text(notifier.topic),
        ),
      body:ListView.builder(
        itemCount: Allchapter.getchapter(notifier.topic).length,
        itemBuilder: (context, index) {
          final chapterName=Allchapter.getchapter(notifier.topic)[index].chaptername;
          return GestureDetector(
            onTap: () {
                print("Chapter $chapterName selected");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChapterDetails(chapterName: chapterName)),
                );
              },
            child:Container(
              padding:EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color:selectedchap==index
                  ?Colors.blue
                  :Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0), 
              ),
              child: ListTile(
                    title: Text(
                      chapterName,
                      style: TextStyle(
                        color: selectedchap == index
                            ? Colors.white 
                            : Colors.black, 
                      ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
class ChapterDetails extends StatefulWidget {
  final String chapterName;

  const ChapterDetails({Key? key, required this.chapterName}) : super(key: key);

  @override
  _ChapterDetailsState createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<Word> getWordsForChapter(String chapterName) {
    return words.where((word) => word.chapterName == chapterName).toList();
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<headnamenotifier>(context, listen: false).runSwipecard1();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Word> chapterWords = getWordsForChapter(widget.chapterName);
    return Consumer<headnamenotifier>(
      builder: (context, notifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.chapterName),
          ),
          body: IgnorePointer(
            ignoring: notifier.ignoreTouches,
            child: Stack(
              children: [
                card1(chapterWords: chapterWords,),
              ],
            ),
          ),
        );
      },
    );
  }
}
