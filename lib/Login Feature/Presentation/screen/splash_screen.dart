import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_task/Login%20Feature/Presentation/screen/welcome_screen.dart';
import 'package:screen_task/core/Utilities/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const WelcomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: AppColors.primary,
        titleTextStyle: const TextStyle(color: AppColors.text),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/image/whitelogo.png'),
            ),
            const SizedBox(
              width: 120,
              child: Text(
                'Skin First',
                style: TextStyle(fontSize: 48, color: AppColors.text),
                textAlign: TextAlign.center,
              ),
            ),
            const Text(
              'Dermatology Center',
              style: TextStyle(fontSize: 12, color: AppColors.text),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}