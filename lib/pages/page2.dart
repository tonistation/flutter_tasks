// ignore_for_file: unnecessary_new
import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_tareas1/theme/apptheme.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  get title => null;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    List<dynamic> itemsList = [
      jsonDecode(
          '{"id":"1","title":"Arandanos","number_downloads_text":"6.2k","rating":3.0,"type":"Pastas","image":"assets/images/fruta1.jpg"}'),
      jsonDecode(
          '{"id":"2","title":"Naranjas","number_downloads_text":"3.4k","rating":5.0,"type":"Tipico","image":"assets/images/fruta2.jpg"}'),
      jsonDecode(
          '{"id":"3","title":"Fresas","number_downloads_text":"2.1k","rating":1.0,"type":"Marino","image":"assets/images/fruta3.jpg"}'),
      jsonDecode(
          '{"id":"4","title":"Kiwi","number_downloads_text":"2.8k","rating":5.0,"type":"Pastas","image":"assets/images/fruta4.jpg"}'),
      jsonDecode(
          '{"id":"5","title":"Manzanas","number_downloads_text":"4.7k","rating":2.0,"type":"Postre","image":"assets/images/fruta5.jpg"}')
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(224, 224, 224, 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: ListTile(
                            leading: const Icon(
                              Icons.search,
                              color: AppTheme.primaryColor,
                              size: 20.0,
                            ),
                            title: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search",
                                  contentPadding: EdgeInsets.all(0.0)),
                            ),
                            trailing: const Icon(
                              Icons.mic,
                              color: AppTheme.primaryColor,
                              size: 20.0,
                            ),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          Container(
            padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Most Liked Recipes",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 18.0),
          Container(
            padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var item in itemsList)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: deviceSize.width * .35,
                              width: deviceSize.width * .35,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10.0,
                                      spreadRadius: 1.0),
                                ],
                                image: DecorationImage(
                                    image: AssetImage(item['image']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20.0),
                              )),
                          const SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(item["title"],
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                          const SizedBox(height: 5.0),
                          RatingBarIndicator(
                            rating: item["rating"],
                            itemCount: 5,
                            itemSize: 18,
                            unratedColor: Colors.black26,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.black45,
                            ),
                          ),
                          //Text(item["rating"])
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text("Popular Recipes",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                for (var item in itemsList)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Container(
                          height: deviceSize.width * .14,
                          width: deviceSize.width * .15,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(item['image']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: deviceSize.width * .15,
                            //width: deviceSize.width * .45,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5.0),
                                Text(item['title'],
                                    style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 3.0),
                                Text(item['type'],
                                    style: const TextStyle(
                                      color: Colors.black38,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 6.0),
                                RatingBarIndicator(
                                  rating: item["rating"],
                                  itemCount: 5,
                                  itemSize: 18,
                                  unratedColor: Colors.black26,
                                  physics: const BouncingScrollPhysics(),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item["number_downloads_text"],
                                  style: const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Cooked",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15.0,
                                  ),
                                ),
                                 const Text(
                                  "",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
