import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/persentation/pages/auth/forgot_password.dart';
import 'package:kabar/persentation/pages/auth/signup.dart';
import 'package:kabar/persentation/pages/auth/verification.dart';
import 'package:kabar/utils/colors.dart';

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
                margin: const EdgeInsets.only(left: 15, top: 80),
                child: Text(
                  "Hello",
                  style: GoogleFonts.poppins(
                      color: body_text,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                )),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 15),
                child: Text(
                  "Again ! ",
                  style: GoogleFonts.poppins(
                      color: primary,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                )),
            Container(
              margin: const EdgeInsets.only(left: 15, top: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome back you've\nbeen missed",
                style: GoogleFonts.poppins(fontSize: 18, color: body_text),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, top: 30),
              alignment: Alignment.topLeft,
              child: Text(
                "Username",
                style: GoogleFonts.poppins(color: body_text, fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey))),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, top: 5),
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: GoogleFonts.poppins(color: body_text, fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
              height: 40,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: const OutlineInputBorder(
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
                  Text("Remember me",
                      style: GoogleFonts.poppins(color: body_text)),
                  const Spacer(),
                  Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const ForgotPassword())),
                        child: Text(
                          "Forgot the password ?",
                          style: GoogleFonts.poppins(),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verification()));
                }),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), // <-- Radius
                    ),
                    minimumSize: const Size.fromHeight(50),
                    elevation: 0),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "or continue with",
                style: GoogleFonts.poppins(color: body_text, fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text(
                        "Facebook",
                        style: GoogleFonts.poppins(
                            color: button_text, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button,
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
                    margin: const EdgeInsets.only(left: 15, right: 10),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.network(
                        "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text(
                        "Google",
                        style: GoogleFonts.poppins(
                            color: button_text, fontWeight: FontWeight.w600),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: button,
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
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "don???t have an account ?",
                      style:
                          GoogleFonts.poppins(color: body_text, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Text(
                        " Sign Up",
                        style: GoogleFonts.poppins(color: primary),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
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
