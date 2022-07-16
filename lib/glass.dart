import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'Slider.dart';
import 'home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class GlassC extends StatelessWidget {
  const GlassC({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.40),
          Colors.white.withOpacity(0.10)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.60),
          Colors.white.withOpacity(0.10),
          Colors.lightBlueAccent.withOpacity(0.05),
          Colors.lightBlueAccent.withOpacity(0.6)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 0.39, 0.40, 1.0],
      ),
      blur: 1.0,
      borderWidth: 1.5,
      borderRadius: BorderRadius.circular(15.0),
      elevation: 3.0,
      isFrostedGlass: true,
      shadowColor: Colors.black.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.12,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: const [
          CircleAvatar(
            foregroundImage: AssetImage('images/prof.png'),
            radius: 50.0,
          ),
          SizedBox(height: 20.0),
          Text(
            'آموزش برنامه نویسی | فلاتریها',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Btitr',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          SliderC()
        ],
      ),
    );
  }
}

class GlassCd extends StatelessWidget {
  const GlassCd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.40),
          Colors.white.withOpacity(0.10)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.60),
          Colors.white.withOpacity(0.10),
          Colors.lightBlueAccent.withOpacity(0.05),
          Colors.lightBlueAccent.withOpacity(0.6)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 0.39, 0.40, 1.0],
      ),
      blur: 1.0,
      borderWidth: 1.5,
      borderRadius: BorderRadius.circular(15.0),
      elevation: 3.0,
      isFrostedGlass: true,
      shadowColor: Colors.black.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.12,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCard(
            title: "tel",
            icon: const Icon(Icons.phone),
            onTap: () => launchUrl(Uri.parse('tel:+989213631296')),
          ),
          CustomCard(
            title: "whatsapp",
            icon: const Icon(Icons.phone),
            onTap: () =>
                launchUrl(Uri.parse('api.whatsapp.com/send?phone=9893869340')),
          ),
          CustomCard(
            title: "insta",
            icon: const Icon(Icons.phone),
            onTap: () => launchUrl(Uri.parse('instagram.com/flutteriha')),
          ),
        ],
      ),
    );
  }
}
