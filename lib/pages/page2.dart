// ignore_for_file: unnecessary_new
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tareas1/theme/apptheme.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  get title => null;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    List<dynamic> itemsList = [
      jsonDecode(
          '{"id":"1","title":"Arandanos","rating":3,"type":"Pastas","image":"assets/images/fruta1.jpg"}'),
      jsonDecode(
          '{"id":"2","title":"Naranjas","rating":5,"type":"Tipico","image":"assets/images/fruta2.jpg"}'),
      jsonDecode(
          '{"id":"3","title":"Fresas","rating":1,"type":"Marino","image":"assets/images/fruta3.jpg"}'),
      jsonDecode(
          '{"id":"4","title":"Kiwi","rating":5,"type":"Pastas","image":"assets/images/fruta4.jpg"}'),
      jsonDecode(
          '{"id":"5","title":"Manzanas","rating":2,"type":"Postre","image":"assets/images/fruta5.jpg"}')
    ];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 5.0),
          const ListTile(
            trailing: Icon(
              Icons.more_horiz,
              color: AppTheme.primaryColor,
              size: 24.0,
            ),
            leading: Icon(
              Icons.keyboard_arrow_left,
              color: AppTheme.primaryColor,
              size: 34.0,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: AppTheme.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                    const SizedBox(height: 5.0),
                Container(
                  decoration: BoxDecoration(color: const Color.fromRGBO(224, 224, 224, 1), borderRadius: BorderRadius.circular(30.0),),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(child: ListTile(
                          leading: const Icon(
                            Icons.search,
                            color: AppTheme.primaryColor,
                            size: 20.0,
                          ),
                          title: TextFormField( decoration: const InputDecoration( border: InputBorder.none, hintText: "Search", contentPadding: EdgeInsets.all(0.0)),),
                          trailing: const Icon(
                            Icons.mic,
                            color: AppTheme.primaryColor,
                            size: 20.0,
                          ),
                        ), )
                        
                      ]),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Most Liked Recipes", style: TextStyle(color: Colors.black87, fontSize: 16.0),), 
                  ],
                ),
                for (var item in itemsList)
                  /* Padding(
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
                    ),*/
                  const SizedBox(height: 30.0)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
