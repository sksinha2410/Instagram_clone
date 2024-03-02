import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/homepage.dart';
import 'package:instagram_clone/screens/loginPage.dart';
import 'package:instagram_clone/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'English';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;


//Instagram Login Page
  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        title:'Insta_StudyJam',
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes:{
          "/":(context) => const Loginpage(),
          MyRoutes.HomePageRoute:(context)=>const HomePage(),
        }


    );

  }
}