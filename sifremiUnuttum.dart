import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(sifremiUnuttum());
}
String email;
final degerKey = GlobalKey<FormState>();
class sifremiUnuttum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          
        resizeToAvoidBottomPadding: false,
        body: Form(
            key: degerKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(               
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/cicek.png'),
              ),    
                    Container(
                    child:Text("202855028 - Ayşegül Örül",style: TextStyle(fontSize: 20,
        color: Colors.black,
      ),),
      ),              
                SizedBox(height: 10.0, ),
                TextFormField(
                  decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.pink,
                    labelText: "E-mail adresi giriniz",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                   onSaved: (value) {
                  email = value;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                        color:Colors.purple,
                        textColor: Colors.white,
                      child: Text("Şifremi Sıfırla"),
                      onPressed: () {
                           degerKey.currentState.save();
                     debugPrint("$email , adresine sıfırlama kodu gönderilmiştir.");
                        Navigator.pushNamed(
                            context, '/');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
