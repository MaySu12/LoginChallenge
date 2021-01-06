import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.pink[300],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/logo.jpg'),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                  icon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  icon: Icon(Icons.lock_open),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.all(1.0),
                    onPressed: () {},
                    child: Text('Login'),
                    color: Colors.pink[300],
                    textColor: Colors.white,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Sign Up'),
                    color: Colors.pink[300],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(1.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
