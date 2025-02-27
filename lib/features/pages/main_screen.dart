import 'package:coffee_delivery/features/theme/theme.dart';
import 'package:coffee_delivery/models/icons_model.dart';
import 'package:flutter/material.dart';

class CoffeAppMainScreen extends StatefulWidget {
  const CoffeAppMainScreen({super.key});

  @override
  State<CoffeAppMainScreen> createState() => _CoffeAppMainScreenState();
}

class _CoffeAppMainScreenState extends State<CoffeAppMainScreen> {
  @override
  Widget build(BuildContext context) {
    int menuIndex = 0;
    return Scaffold(
      backgroundColor: AppColors.tertColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: List.generate(menu.length, (index) {
            Map items = menu[index];
            bool isActive = menuIndex == index;
            return Expanded(
              child: InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20),
                      Icon(
                        items['icon'],
                        size: 25,
                        color:
                            isActive
                                ? AppColors.mainColor
                                : AppColors.tertColor,
                      ),
                      if (isActive) const SizedBox(height: 8),
                      if (isActive)
                        Container(
                          height: 5,
                          width: 10,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
