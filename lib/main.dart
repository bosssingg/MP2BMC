import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //TODO: implement build

      return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(title: Text('Christian Guillermo'),
            backgroundColor: Colors.blue,
            ),
            body:Builder(builder:(context)=> Center (
              child: Column (children: [
              Text(
                'Hello Computer',
                style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent[900]),
              ),

              Text(
                'Computer Design',
                  style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
               ),

                Image.network('https://th.bing.com/th/id/OIP.t4wKGITF2K4ZFH04mjFfHgHaE7?rs=1&pid=ImgDetMain.jpg', height: 500,
                ),

                ElevatedButton(
                  child: Text('Contact Us'),
                  onPressed: () => contactUs(context),
                )

           ]
           )))));

  }
}//end line of my class

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext){
       return AlertDialog(
         title: Text('Contact Us'),
         content: Text('mail us at kyahsisa@gmail.com'),
         actions: <Widget>[
           TextButton(
             child: Text('Close'),
             onPressed: () => Navigator.of(context).pop(),
           )
         ],
       );
     }
  );
}