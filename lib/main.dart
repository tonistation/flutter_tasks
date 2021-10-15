import 'package:flutter/material.dart';
import 'package:flutter_tareas1/home_temp_tarea2.dart';
import 'package:flutter_tareas1/pages/page1.dart';
import 'package:flutter_tareas1/pages/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ), 
      //home: const HomeTempTarea() // TAREA 1 Layout simple
      //home: const Page1(), // TAREA 2 pagina 1
       home: const Page2(), // TAREA 2 pagina 2
    );
  }
}
