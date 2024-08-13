import 'package:ecommerce/Core/Constants/fonts.dart';
import 'package:ecommerce/Core/Constants/images.dart';
import 'package:ecommerce/Views/Home/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({super.key});

  @override
  _WelcomeSplashScreenState createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _imageAnimation;
  late Animation<double> _textFadeAnimation;
  late Animation<double> _textScaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _imageAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _textFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _textScaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward().then((_) => _navigateToNextPage());
  }

  void _navigateToNextPage() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _textFadeAnimation.value,
                child: Transform.scale(
                  scale: _textScaleAnimation.value,
                  child: Text(
                    "Welcome to",
                    style: Fonts.splashText2,
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _imageAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _imageAnimation.value,
                child: child,
              );
            },
            child: Image.asset(
              Images.splash,
              height: h * .5,
              fit: BoxFit.cover,
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _textFadeAnimation.value,
                child: Transform.scale(
                  scale: _textScaleAnimation.value,
                  child: Text(
                    "Market IN",
                    style: Fonts.splashText2,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
