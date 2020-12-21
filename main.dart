import 'package:flutter/material.dart';


import 'anaSayfa.dart';
import 'uyeOl.dart';
import 'sifremiUnuttum.dart';

final Color darkBlue = Colors.white;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/anaSayfa': (context) => anaSayfa(),
        '/uyeOl': (context) => uyeOl(),
        '/sifremiUnuttum': (context) => sifremiUnuttum(),
      }, 
    );

  }
}
class LoginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<LoginPage> {

String userName;
String password;

final degerKey = GlobalKey<FormState>();

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
                children :[
                    //mainAxisAlignment: MainAxisAlignment.center,
                     
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
                   labelText: "Kullanıcı Adı",
                   labelStyle: TextStyle(color:Colors.white,),
                   border: OutlineInputBorder(),
                  ),
                  cursorColor: Colors.white,
              
                  onSaved: (value) {
                  userName = value;

                  },
                 ),
                SizedBox(height: 20.0,
                ),
                 TextFormField(
                  
                 decoration: InputDecoration(
                       filled: true,
                      fillColor: Colors.pink,
                   labelText: "Şifre",
                   labelStyle: TextStyle(color:Colors.white,),
                   border: OutlineInputBorder(),
                   
                 
                  ),
                   cursorColor: Colors.green,
                  onSaved: (value) {
                    password = value;
                  },
                 ),
                 SizedBox(height: 20.0,
                ),
                Row(
                   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     MaterialButton(   
                         
                         color:Colors.purple,                
                       child: Text("Üye Ol"),
                       textColor: Colors.white,
                       onPressed: () {
                       debugPrint("Üye ol tıklandı.");
                       Navigator.pushNamed(context, '/uyeOl');
                       } ,
                     ),
                     MaterialButton(
                         
                         color:Colors.purple,
                       child: Text("Şifremi unuttum!"),
                       textColor: Colors.white,
                       onPressed: () {
                         debugPrint("Şifremi unuttum tıklandı.");
                        Navigator.pushNamed(context, '/sifremiUnuttum');
                       } ,
                       ),
                     ],
                    ),
                    Center(
                  child: RaisedButton (
                      
                    color:Colors.purple,
                    child: Text("Giriş"),
                    textColor: Colors.white,
                    onPressed: () {
                    degerKey.currentState.save();
                    debugPrint("userName : $userName , password : $password");
                    if (userName =="demo" && password == "demo") {
                        debugPrint("Giriş başarılı, ana sayfaya yönlendiriliyorsunuz.");
                        Navigator.of(context).pushReplacementNamed('/anaSayfa');
                    } else {
                    debugPrint("Kullanıcı adı veya şifre hatalı, lütfen tekrar deneyiniz!");
                    } 
                    },

                   ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
