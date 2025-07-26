import 'package:flutter/material.dart';
import 'dart:developer';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool rememberMe = false;
  bool _obscurePassword = true;
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.grey[300],
      //body section of our sign up using the center center
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            //Column arranges the widgets vertically
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // THIS IS THE SECTION FOR COMPANY LOGO
                  Column(
                    children: [
                      Transform.translate(
                        offset: Offset(0, 30),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            //color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/images/new-spot.png"),
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(width: 8),
                      Text(
                        "Log in to Spotify",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  //FORM SECTION
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Username textfield
                          SizedBox(height: 8),
                          TextFormField(
                            controller: _userName,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            onChanged: (value) {
                              log(value);
                              log("This is the username: ${_userName.text}");
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your user name";
                              }
                              if (value.length < 3) {
                                return "Username must be at least 3 characters long";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15),
                          //password textfield
                          TextFormField(
                            controller: _password,
                            obscureText: _obscurePassword,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                            ),
                            onChanged: (value) {
                              log(value);
                              log(
                                "This is the password value: ${_password.text}",
                              );
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password";
                              }
                              if (value.length < 8) {
                                return "Password must be at least 8 characters";
                              }
                              return null;
                            },
                          ),
                          // FORGOT ME BUTTON
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Remember me checkbox
                              Row(
                                children: [
                                  Transform.scale(
                                    scale: 0.9,
                                    child: Checkbox(
                                      value: rememberMe,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          rememberMe = newValue ?? false;
                                          log("Remember Me: $rememberMe");
                                        });
                                      },
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(-6, 0),
                                    child: Text(
                                      "Remember Me",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: TextButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          "User has forgotten the password",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "forgot password?",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        99,
                                        98,
                                        98,
                                      ),
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //elevated button
                          //SizedBox(height: 2),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 30, 215, 96),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              minimumSize: Size(220, 50),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                String enteredPass = _password.text;
                                String maskPass = "*" * enteredPass.length;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "User successfuly loged in \nName: ${_userName.text} \nPassword: $maskPass received ✅",
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Text("Login"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dont have an account?",
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 99, 98, 98),
                                  fontSize: 14,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("User wants to Sign Up"),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
