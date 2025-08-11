import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:tasker/utilities.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Image.asset(
                  'assets/images/coffee.jpg',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            HBox(16),
            Text(
              "Aero D.",
              style: TextStyle().copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Help your friends, get \$10"),
            ),
            ListTile(
              leading: Text("Account"),
              trailing: Text("ayarsen@mail.ru"),
            ),
            ListTile(
              leading: Text("Change Password"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Text("Payment"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Text("Promos"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Text("Notification"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Text("Support"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Text("About"),
              trailing: Icon(Icons.chevron_right),
            ),
            TextButton(onPressed: (){}, child: Text("Become a Tasker")),
            TextButton(onPressed: (){}, child: Text("Log out")),

          ],
        ),
      ),
    );
  }
}
