import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool rememberMe = false;
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //body section of our sign up using the center center
      body: Center(
        //Column arranges the widgets vertically
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // THIS IS THE SECTION FOR COMPANY LOGO
            Column(
              children: [
                Container(
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    //color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/spot2-logo.png"),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Log in to Spotify",
                  style: TextStyle(fontSize: 35, color: Colors.black),
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
                        hintText: "Enter your username",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (value) {
                        print(value);
                        print("This is the username: ${_userName.text}");
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
                    SizedBox(height: 10),
                    //password textfield
                    TextFormField(
                      controller: _password,
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
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      onChanged: (value) {
                        print(value);
                        print("This is the password value: ${_password.text}");
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
                    // SizedBox(height: 2),
                    Row(
                      children: [
                        Checkbox(
                          value: rememberMe,
                          onChanged: (bool? newValue) {
                            setState(() {
                              rememberMe = newValue ?? false;
                              print("Remember Me: $rememberMe");
                            });
                          },
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ],
                    ),
                    //elevated button
                    SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 82, 194, 86),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize: Size(220, 50),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Name: ${_userName.text}")),
                          );
                        }
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
