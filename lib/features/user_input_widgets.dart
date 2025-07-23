import 'package:flutter/material.dart';


class UserInputWidgets extends StatefulWidget {
  const UserInputWidgets({super.key});

  @override
  State<UserInputWidgets> createState() => _UserInputWidgetsState();
}

class _UserInputWidgetsState extends State<UserInputWidgets> {
  //initialize the controller
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
              //TextField,
              // TextField(
              //   controller: _controller,
              //   style: TextStyle(color: Colors.white),
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(12),
              //       borderSide: BorderSide(color: Colors.white, width: 1)
              //     ),
              //     hintText: "Enter your name",
              //     hintStyle: TextStyle(color: Colors.white),
              //   ),
              //   onChanged: (value) {
              //     print(value);
              //     print("this is the controller value: ${_controller.text}");
              //   },
              // ),
              //TextFormField
              TextFormField(
                controller: _controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white, width: 1)
                  ),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                onChanged: (value) {
                  print(value);
                  print("this is the controller value: ${_controller.text}");
                },
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return "Please enter your name";
                  }
                  if(value.length < 3){
                    return "Name must be at least 3 characters";
                  }
                  return null;
                },
              ),
              //buttons
              //ElevatedButton
              SizedBox(height: 12,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  minimumSize: Size(220, 50)
                ),
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Name: ${_controller.text}"))
                    );
                  }
                },
                child: Text("Click me", style: TextStyle(color: Colors.black)),),
              // SizedBox(height: 12,),
              // //OutlinedButton
              // OutlinedButton(
              //   style: OutlinedButton.styleFrom(
              //     backgroundColor: Colors.transparent,
              //     foregroundColor: Colors.black,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(12)
              //     ),
              //   ),
              //     onPressed: (){},
              //     child: Text("Tap me")),
              // //TextButton
              // SizedBox(height: 12,),
              // TextButton(onPressed: () {  }, child: Text("Tap me", style: TextStyle(color: Colors.white),),)
            ],
          ),
        ),
      ),
    );
  }
  /// ASSIGNMENT: DESIGN A LOGIN SCREEN WITH THE FOLLOWING REQUIREMENTS
/// AN IMAGE
/// USERNAME TEXTFIELD
/// PASSWORD TEXTFIELD
/// REMEMBER ME CHECKBOX
/// BUTTON
/// TEXT BUTTON for signup
/// There should be validations on both the textfield and password field
}
