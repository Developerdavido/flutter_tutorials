import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      //the center widget aligns a widget to the center of the page
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize:
            MainAxisSize
                .max, // this ensures that the column will only be as large as its contents
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
          Stack(
            children: [
              Column(
                children: [
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
              Container(
                margin: EdgeInsetsGeometry.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '900 Kills',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.home_rounded, color: Colors.amberAccent),
                    Text('Home'),
                  ],
                ),
                Column(children: [Icon(Icons.post_add), Text('Post Bounty')]),
                Column(
                  children: [
                    Icon(Icons.wallet_giftcard_rounded),
                    Text('Balance'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Practice will be to
  ///Task 1Recreate the layout but align content to the left and use a Stack to place a badge over the profile image.
  ///Task 2: Build a custom navigation bar using a Row:
  ///•	3 icons spaced evenly
  ///•  Each icon has a text label below (use a Column inside the Row)
}
