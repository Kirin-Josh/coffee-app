import 'package:coffee_delivery/features/pages/main_screen.dart';
import 'package:coffee_delivery/features/theme/theme.dart';
import 'package:coffee_delivery/features/widgets/button.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black45,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/entryPage.png",
                height: size.height / 1.5,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 45,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Fall in Love with Coffee in Blissful Delight!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      textAlign: TextAlign.center,
                      'Welcome to BrewHube coffee corner, where every cup is deightful for you.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.white54,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 20),
                    PrimaryButtonWidget(
                      name: 'Get Started',
                      borderRadius: 20,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CoffeAppMainScreen(),
                          ),
                        );
                      },
                      buttonColor: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
