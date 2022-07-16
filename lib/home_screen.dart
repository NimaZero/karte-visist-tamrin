import 'package:flutter/material.dart';
import 'glass.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // final Uri url = Uri.parse('https://flutteriha.com');

   launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: const [
              Expanded(
                flex: 4,
                child: GlassC(
                ),
              ),
              Expanded(
                child: GlassCd(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CustomCard extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const CustomCard({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: InkWell(
          onTap: onTap,
          child: Image(
            image: AssetImage('images/$title.png'),
          )),
    );
  }
}
