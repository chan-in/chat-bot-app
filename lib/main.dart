import 'package:firebase_chat_example/api/firebase_api.dart';
import 'package:firebase_chat_example/page/chats_page.dart';
import 'package:firebase_chat_example/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

Future main() async {
  initializeDateFormatting('fr_FR', null);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Firebase Chat';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: ChatsPage(),
      );
}
