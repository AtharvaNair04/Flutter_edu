
import 'package:flashcard_app/headernames/headname.dart';
import 'package:flashcard_app/pages/Chapters.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

loadSession({required BuildContext context,required String topic}){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> chapters()));
  Provider.of<headnamenotifier>(context,listen:false).setTopic(topic: topic);
}