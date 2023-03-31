import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          ' Alert dialogue box',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
        // color: Colors.black,
          onPressed: () {
            showDialog(
                context: context,
                builder: ( context){
                  return Container(
                    child: AlertDialog(
                      title: Text('Question'),
                      content: Text('Safa do you really want to log out?'),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('yes'),),
                        TextButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text('no'),),
                      ],
                    ),
                  );
                }
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black, // Background color
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Show dialog ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.yellow,
            ),
            ),
          ),


        ),
      )
    );
  }
}
