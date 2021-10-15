// ignore_for_file: unnecessary_new
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tareas1/theme/apptheme.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  get title => null;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    List<dynamic> itemsList = [
      jsonDecode('{"id":"1","title":"Arandanos \\nMorados","subtitle":"Subtitulo arandanos","image":"assets/images/fruta1.jpg"}'),
      jsonDecode('{"id":"2","title":"Naranjas \\nAnaranjadas","subtitle":"Subtitulo naranjas","image":"assets/images/fruta2.jpg"}'),
      jsonDecode('{"id":"3","title":"Fresas \\nRojas","subtitle":"Subtitulo fresas","image":"assets/images/fruta3.jpg"}'),
      jsonDecode('{"id":"4","title":"Kiwi \\nverde","subtitle":"Subtitulo kiwi","image":"assets/images/fruta4.jpg"}'),
      jsonDecode('{"id":"5","title":"Manzanas \\nRojas","subtitle":"Manzanas arandanos","image":"assets/images/fruta5.jpg"}')
    ]; 

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 5.0),
            ListTile(
              trailing: const Icon(Icons.more_horiz, color: Colors.black45, size: 24.0,),
              title:   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Popular Recipes", style: TextStyle(fontSize: 16.0, color: Colors.black45, fontWeight: FontWeight.bold ),),
                      Icon(Icons.keyboard_arrow_down, color: Colors.black45,)
                    ],  
              )
            ),
            for (var item in itemsList)
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Container(
                  child: (Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                          child: Text(
                            item['title'],
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.bold,
                              shadows: AppTheme.primaryShadow
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 20.0),
                          child: Text(
                            item['subtitle'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0, 
                                letterSpacing: 1.1,
                                shadows: AppTheme.primaryShadow),
                          ),
                        )
                      ])),
                  height: deviceSize.width - 180.0,
                  width: double.infinity - 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item['image']), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10.0,
                          spreadRadius: 1.0),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
