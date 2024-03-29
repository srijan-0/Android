import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/logo/appLogoSmall.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: AppLogoSmall(),
        title: const Text("Profile"),
        actions: [
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 36.0,
              backgroundImage: NetworkImage(
                "https://wallpapers.com/images/featured/letter-s-pictures-e4fvpmoza2t2ru3h.webp",
              ),
            ),
            Text(
              "Srijan Shrestha",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "srijan.shrestha000@gmail.com",
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("Edit Profile"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("Change Password"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("Privacy Policy"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              title: Text("herm of Service"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ),
            Divider(),
            ListTile(
              minLeadingWidth: 0.0,
              onTap: ()=>controller.doLogOut(),
              title: Text("Logout",style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
                ),
              ),
            Divider(),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
