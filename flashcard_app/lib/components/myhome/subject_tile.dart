import 'package:flashcard_app/buttons/click.dart';
import 'package:flutter/material.dart';

class Subjecttile extends StatelessWidget {
  const Subjecttile({
    super.key,
    required this.topic,
  });

  final String topic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        print(' Subject selected $topic');
        loadSession(context: context,topic: topic);

      },
      child:Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child:Column(
          children:[
            Expanded(
              flex:2,
              child:Padding(
                padding:const EdgeInsets.all(20.0),
                child:Image.asset('assests/images/$topic.jpeg')
            ),),
            Expanded(child:Text(topic)),
          ],

          ),
        ),
    );
  }
}
