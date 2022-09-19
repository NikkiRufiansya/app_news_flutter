import 'package:flutter/material.dart';
import 'package:kabar/auth/forgot_password.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool _isObscure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 80),
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "Again !",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome back you've\nbeen missed",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 30),
              alignment: Alignment.topLeft,
              child: Text(
                "username",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 5),
              alignment: Alignment.topLeft,
              child: Text(
                "password",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
              height: 40,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey)),
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    checkColor: Colors.blue,
                  ),
                  Text("Remember me"),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: Text(
                          "Forgot the password ?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: ElevatedButton(
                onPressed: (() {}),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // <-- Radius
                    ),
                    minimumSize: const Size.fromHeight(50),
                    elevation: 0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "or continue with",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text(
                        "Facebook",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 225, 224, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // <-- Radius
                        ),
                        minimumSize: const Size.fromHeight(50),
                        elevation: 0,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(left: 15, right: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text(
                        "Google",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 225, 224, 224),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), // <-- Radius
                        ),
                        minimumSize: const Size.fromHeight(50),
                        elevation: 0,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "don’t have an account ?",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      " Sing Up",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
