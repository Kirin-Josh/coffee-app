import 'package:coffee_delivery/features/theme/theme.dart';
import 'package:coffee_delivery/features/widgets/button.dart';
import 'package:coffee_delivery/models/coffee_model.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class CoffeeDetailPage extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetailPage({super.key, required this.coffee});

  @override
  State<CoffeeDetailPage> createState() => _CoffeeDetailPageState();
}

class _CoffeeDetailPageState extends State<CoffeeDetailPage> {
  int selectedSize = 1;
  int selectedColor = 0;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.chevron_left, size: 24),
              ),
              const Text(
                'Detail',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Iconsax.heart, size: 24)),
            ],
          ),
          const SizedBox(height: 24),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Hero(
              tag: widget.coffee.image,
              child: Image.asset(
                widget.coffee.image,
                width: double.infinity,
                fit: BoxFit.cover,
                height: 260,
              ),
            ),
          ),
          const SizedBox(height: 24),
          bodyHeader(),
          const SizedBox(height: 18),
          Divider(indent: 14, endIndent: 14, color: Colors.black12),
          const SizedBox(height: 18),
          mainBody(),

          const SizedBox(height: 18),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.8,
            color: AppColors.quartColor,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Price',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "\$ ${widget.coffee.price}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.mainColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              width: 240,
              child: PrimaryButtonWidget(
                name: "Buy Now",
                borderRadius: 16,
                onTap: () {},
                buttonColor: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column mainBody() {
    Widget buildSizedOption(int index) {
      final sizes = ['S', 'M', 'L'];
      final isSelected = selectedSize == index;

      return GestureDetector(
        onTap: () => setState(() => selectedSize = index),
        child: Container(
          margin: const EdgeInsets.only(right: 12),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 42),
          decoration: BoxDecoration(
            border: Border.all(
              color:
                  isSelected
                      ? AppColors.mainColor
                      : const Color.fromARGB(255, 236, 236, 236),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(14),
            color: isSelected ? AppColors.quartColor : Colors.white,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              softWrap: false,
              sizes[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isSelected ? AppColors.mainColor : Colors.black,
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Description",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        ReadMoreText(
          widget.coffee.description,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
          moreStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.mainColor,
          ),
          lessStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.mainColor,
          ),
          trimLength: 125,
          trimMode: TrimMode.Length,
          trimCollapsedText: " Read More",
          trimExpandedText: " Read Less",
        ),
        const SizedBox(height: 20),
        const Text(
          "Size",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [...List.generate(3, (index) => buildSizedOption(index))],
        ),
      ],
    );
  }

  Row bodyHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              widget.coffee.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.coffee.type,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.star, size: 18, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  "${widget.coffee.rate}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  "(${widget.coffee.review})",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children:
              [
                "assets/icons/bike.png",
                "assets/icons/coffee.png",
                "assets/icons/drink.png",
              ].map((e) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(e, height: 25, width: 25),
                );
              }).toList(),
        ),
      ],
    );
  }
}
