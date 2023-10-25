import 'package:flutter/material.dart';

class PreSplash extends StatefulWidget {
  @override
  _PreSplashScreenState createState() => _PreSplashScreenState();
}

class _PreSplashScreenState extends State<PreSplash>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 600),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 0.7).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E7D9),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 4,
                    width: _animation.value * MediaQuery.of(context).size.width,
                    color: Color.fromARGB(255, 110, 109, 33),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
