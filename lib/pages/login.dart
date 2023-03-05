import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(),
            SizedBox(
              height: 50,
            ),
            _usernameField(),
            SizedBox(
              height: 10,
            ),
            _passwordField(),
            SizedBox(
              height: 25,
            ),
            _loginButton(),
            _forgotPassword()
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          )
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      height: 60,
      padding: EdgeInsets.only(left: 25.0, right: 25),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0)
          )
        ),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(40)
        ),
        onPressed: () {}, 
        child: Text(
          "Log In",
        ),
      ),
    );
  }

  Widget _forgotPassword() {
    return TextButton(
      onPressed: (){}, 
      child: Text(
        "Forgot Password?", 
        style: TextStyle(
          color: Colors.grey,
        ),
      )
    );
  }
}