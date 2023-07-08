import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/images/user.JPG'),
            ),
            const Text.rich(
              TextSpan(
                // default text style
                children: <TextSpan>[
                  TextSpan(
                      text: '      Rajkishor Rauniyar\n',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: '\n Kyc unverified  '),
                  TextSpan(
                      text: 'Verify now',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            itemProfile('Wallet', 'you have not verify kyc',
                CupertinoIcons.money_dollar),
            const SizedBox(height: 5),
            itemProfile('Booking History', ' ', CupertinoIcons.clock),
            const SizedBox(height: 5),
            itemProfile(
                'Favorite Destination', ' ', CupertinoIcons.paperplane_fill),
            const SizedBox(
              height: 5,
            ),
            itemProfile('settings', ' ', CupertinoIcons.settings),
            const SizedBox(
              height: 5,
            ),
            itemProfile('Feedback', ' ', CupertinoIcons.text_append),
            const SizedBox(
              height: 5,
            ),
            itemProfile('Customer support', ' ', CupertinoIcons.phone_circle),
            const SizedBox(
              height: 5,
            ),
            itemProfile('About us', ' ', CupertinoIcons.person_2),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Log out')),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
