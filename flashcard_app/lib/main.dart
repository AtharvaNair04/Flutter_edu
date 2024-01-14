import 'package:flashcard_app/headernames/headname.dart';
import 'package:flashcard_app/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flashcard_app/pages/myhome.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create :(_)=>headnamenotifier())
    ],
    child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XII Formula book',
      theme: appTheme,
      home: const Myhome(),
    );
  }
}


