import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      //the center widget aligns a widget to the center of the page
      body: Center(
        //Column arranges widgets vertically
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize:
              MainAxisSize
                  .min, // this ensures that the column will only be as large as its contents
          children: [
            //circular image => Containers, ImageWidget, CircleAvatar,
            //three types of images
            /// asset image: located in the project's asset file
            /// file image: located in any file the app can access
            /// network image: these are online images

            // Container(
            //   height: 120,
            //   width: 120,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.amber,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/john_wick.jpg'),
            //     ),
            //   ),
            // ),

            //Image.asset('assets/images/john_wick.jpg', height: 120, width: 120),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/john_wick.jpg'),
            ),

            // name of person,
            Text(
              "John Wick",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            //title of person,
            Text(
              "Serial Hitman/Boogeyman",
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
            //socials and contacts of person
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.email, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.phone, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.link, color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Practice will be to
  //Recreate the layout but align content to the left and use a Stack to place a badge over the profile image.
}
