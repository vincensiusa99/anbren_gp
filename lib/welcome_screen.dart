import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  static const _backgroundAsset = 'assets/jorge-martin-unsplash.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(_backgroundAsset, fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.27, sigmaY: 6.27),
              child: Container(color: Colors.transparent),
            ),
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const _GlassLogoContent(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GlassLogoContent extends StatelessWidget {
  const _GlassLogoContent();

  static const _logoAsset = 'assets/disco-ball.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 156,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, 0.00),
          end: Alignment(1.00, 1.00),
          colors: [
            Color.fromRGBO(15, 15, 15, 0.15),
            Color.fromRGBO(15, 15, 15, 0.15),
          ],
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 2,
            color: Color.fromRGBO(15, 15, 15, 0.15),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 132,
            height: 132,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_logoAsset),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            child: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'anbren',
                    style: TextStyle(
                      color: Color(0xFF0F0F0F),
                      fontSize: 24,
                      fontFamily: 'MGPDisplay',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'gp',
                    style: TextStyle(
                      color: Color(0xFF0F0F0F),
                      fontSize: 24,
                      fontFamily: 'MGPInline',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
