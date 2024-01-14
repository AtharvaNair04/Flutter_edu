import 'package:flashcard_app/components/myhome/subject_tile.dart';
import 'package:flashcard_app/data/words.dart';
import 'package:flutter/material.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() =>  _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  List<String> _topics = [];

  @override
  initState() {
    for (var t in words) {
      if (!_topics.contains(t.topic)) {
        _topics.add(t.topic);
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthPadding = size.width * 0.04;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        title: Text('XII formula app'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: widthPadding, right: widthPadding),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              expandedHeight: size.height * 0.4,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.all(size.width * 0.05),
                  child: Image.asset(
                    'assests/images/background.png',
                    fit: BoxFit.cover, // Adjust this based on your preference
                    alignment: Alignment.center,
                    height: size.height * 0.4, // Set a fixed height
                  ),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Subjecttile(topic: _topics[index]),
                childCount: _topics.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
