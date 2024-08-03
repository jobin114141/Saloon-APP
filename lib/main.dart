import 'package:estilo_salon/firebase_options.dart';
import 'package:estilo_salon/salon_app/forgotpassd_page.dart';
import 'package:estilo_salon/salon_app/home_screen.dart';
import 'package:estilo_salon/salon_app/homepage/appointment_screen.dart';
import 'package:estilo_salon/salon_app/homepage/bottomnavi_screen.dart';
import 'package:estilo_salon/salon_app/homepage/categori_screen.dart';
import 'package:estilo_salon/salon_app/homepage/homepage_screen.dart';
import 'package:estilo_salon/salon_app/homepage/saloon_screen.dart';
import 'package:estilo_salon/salon_app/homepage/settings_screen.dart';
import 'package:estilo_salon/salon_app/saloon_profils/appoinment_views.dart';
import 'package:estilo_salon/salon_app/saloon_profils/appointment_details_views.dart';
import 'package:estilo_salon/salon_app/saloon_profils/categori_details_views.dart';
import 'package:estilo_salon/salon_app/saloon_profils/saloon_views.dart';
import 'package:estilo_salon/salon_app/signin_screen.dart';
import 'package:estilo_salon/salon_app/signup_screen.dart';
import 'package:estilo_salon/salon_app/splash_screen.dart';
import 'package:estilo_salon/salon_app/xsm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
