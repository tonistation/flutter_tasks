 
import 'package:flutter/material.dart';


class HomeTempTarea extends StatefulWidget {
  const HomeTempTarea({Key? key}) : super(key: key);

  @override
  _HomeTempTareaState createState() => _HomeTempTareaState();
}

class _HomeTempTareaState extends State<HomeTempTarea>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  String title = 'Tarea Title 11';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final imgSup = Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(20),
            semanticContainer: true, 
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/img1.jpg',
              fit:BoxFit.fitWidth,
            ),  
        );
 
  /*
    final controller =  AnimationController(vsync: this, duration: Duration(seconds: 2));
    final colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    final sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);*/

      const styleTitle = TextStyle(color: Colors.greenAccent, fontSize: 18.0);
    const styleSubTitle = TextStyle(color: Colors.white70, fontSize: 16.0);

    
    return Scaffold(
      body: Container(
            color: Colors.black87,
            child:
               Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Flexible( 
                        child: imgSup,
                      ), 
                      
                     
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      Flexible( child:  ListTile( 
                        contentPadding:const EdgeInsets.symmetric(  horizontal: 40  ),
                        title: const Text("Salt Lake Ville", style: styleTitle),
                        subtitle: const Text('The beautiful nature in a picture.', style: styleSubTitle), 
                        trailing: Wrap(
                          spacing: 12, // space between two icons
                          children: const <Widget>[
                            Icon(Icons.star, color: Colors.yellowAccent,), // icon-1
                            Text("41", style: styleTitle,)
                          ],
                        ),
                      )  )
                      
                     
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 25.0),
                         child: Wrap( 
                           spacing: 80,  
                           children: [ 
                             Column( 
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.greenAccent,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      "CALL",
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.send,
                                      color: Colors.greenAccent,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      "ROUTE",
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                         fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.greenAccent,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      "SHARE",
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                         fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                             
                           ],
                         ),
                       )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      

                          Expanded(  
                             
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: RichText(
                                overflow: TextOverflow.ellipsis, 
                                maxLines: 100,
                                softWrap: false,
                                text: const TextSpan(
                                  text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                                  style: TextStyle(color: Colors.white70, fontSize: 12.0), 
                                ),
                              ),
                            ),
                          ), 
                    ]
                  )
                ]
    
              ),
    
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
          ),

    );

  }
}
