import 'package:flutter/material.dart';

class UserInputWidgets extends StatefulWidget {
  const UserInputWidgets({super.key});

  @override
  State<UserInputWidgets> createState() => _UserInputWidgetsState();
}

class _UserInputWidgetsState extends State<UserInputWidgets> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Textfield
              // TextField(
              //   controller: _controller,
              //   style: TextStyle(color: Colors.white),
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //       borderSide: BorderSide(color: Colors.white, width: 1),
              //     ),
              //     hintText: "Enter Your Name",
              //     hintStyle: TextStyle(color: Colors.white),
              //   ),
              //   onChanged: (value) {
              //     print(value);
              //     print("This is the controller value: ${_controller.text}");
              //   },
              // ),
              //TextFormfield
              TextFormField(
                controller: _controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  print(value);
                  print("This is the controller value: ${_controller.text}");
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  if (value.length < 3) {
                    return "Please return null";
                  }
                  return null;
                },
              ),
              //buttons
              //Elevated Butoon
              SizedBox(height: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: Size(220, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Name: ${_controller.text}")),
                    );
                  }
                },
                child: Text("Click me", style: TextStyle(color: Colors.black)),
              ),
              //outlinebutton
              // OutlinedButton(
              //   style: OutlinedButton.styleFrom(
              //     backgroundColor: Colors.transparent,
              //     foregroundColor: Colors.black,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //   ),
              //   onPressed: () {},
              //   child: Text("Tap me"),
              //   //TextButton
              // ),
              // SizedBox(height: 12),
              // TextButton(
              //   onPressed: () {},
              //   child: Text("Tap me", style: TextStyle(color: Colors.white)),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}



//assignment: design a login screen with ff requiremnets
//an image
// username textfield
//password testfield
//remember me checkbox
//button
//text button for sign up
//there should be validations on both textfields