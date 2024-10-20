import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan_basic_ui/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: WelcomePage());
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.03,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/welcome_bg.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "EXPLORE\n",
                style: TextStyle(
                  fontFamily: 'Designer',
                  height: height * 0.0012,
                  fontSize: 50,
                  fontWeight: FontWeight.w100,
                  color: Colors.white.withOpacity(0.8),
                  shadows: [
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 5.0,
                      color: Colors.blue.withOpacity(0.5),
                    ),
                  ],
                ),
                children: [
                  TextSpan(
                    text: "SOLAR\nSYSTEM",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const HomePage(),
                  ),
                );
              },
              icon: Icon(
                Icons.keyboard_double_arrow_right,
                color: Colors.grey[500],
                size: height * 0.080,
              ),
            )
          ],
        ),
      ),
    );
  }
}
