import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      //The center widget aligns a widget to the center of the page
      body: Center(
        //Column arranges widgets vertically
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize
              .min, //This ensures that the column will be only large as it content
          children: [
            //circular image => containers. ImageWidget, CircleAvatar,
            //three types of images
            /// asset image: located in the project asset file
            /// file image: located in any file the app can access
            /// network image:these are online images
            // Container(
            //   height: 120,
            //   width: 120,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.amber,
            //     image: DecorationImage(
            //       image: AssetImage('assets/images/John_Wick.jpeg'),
            //     ),
            //   ),
            // ),
            //image.asset('assets/images/John_Wick.jpeg', height:120, width:120)
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/John_Wick.jpeg'),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    // color: Colors.black54,
                    // padding: EdgeInsets.all(8),
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    // child: Text(
                    //   "Hello",
                    //   style: TextStyle(color: Colors.white, fontSize: 20),
                    // ),
                  ),
                ),
              ],
            ),

            // name of person,
            Text(
              "John Wick",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),

            //Title of person
            Text(
              "Serial Hitman/Boogeyman",
              style: TextStyle(fontSize: 16, color: Colors.grey[300]),
            ),
            //socials and contacts of person
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.email, color: Colors.white)],
            ),
          ],
        ),
      ),
      // Custom buttom navigation bar
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(Icons.home, "Home"),
            _buildNavItem(Icons.search, "Search"),
            _buildNavItem(Icons.person, "Profile"),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 28, color: Colors.blue),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.black)),
      ],
    );
  }

  ///Practice will be to
  ///Task 1Recreate the layout but align content to the left and use a Stack to place a badge over the profile image.
  ///Task 2: Build a custom navigation bar using a Row:
  ///•	3 icons spaced evenly
  ///•	Each icon has a text label below (use a Column inside the Row)
}
