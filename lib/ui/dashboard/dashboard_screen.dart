import 'package:flutter/material.dart';
import 'package:pokeapp/core/app_colors.dart';
import 'package:pokeapp/core/app_fonts.dart';
import 'package:pokeapp/core/assets/assets.dart';
import 'package:pokeapp/core/widgets/custom_textfield.dart';
import 'package:pokeapp/core/widgets/pokecard.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'PokeApp',
                  style: AppFonts.w700s48,
                ),
                const SizedBox(
                  width: 7,
                ),
                Image.asset(
                  AppImages.logo,
                  width: 53,
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'Pokemon list',
              style: AppFonts.w600s24,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Find the pokemon you want',
              style: AppFonts.w500s14.copyWith(color: AppColors.white),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_TextField(
                  onChanged: (p0) {},
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 31,
                  height: 31,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.Grey),
                  child: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: AppColors.LightGrey,
                      size: 18.4,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => PokeCard(
                  name: 'Jinglepuff',
                  image: AppImages.pokeimage,
                  onTap: () {
                    print(index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
