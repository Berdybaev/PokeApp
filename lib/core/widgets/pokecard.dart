import 'package:flutter/material.dart';
import 'package:pokeapp/core/app_colors.dart';
import 'package:pokeapp/core/app_fonts.dart';
import 'package:pokeapp/core/assets/assets.dart';

class PokeCard extends StatelessWidget {
  const PokeCard({
    required this.name,
    required this.image,
    super.key,
    required this.onTap,
  });

  final String name;
  final String image;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 300,
        height: 124,
        child: Container(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 74,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.Grey),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
                  child: Text(
                    name,
                    style: AppFonts.w500s18,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 24,
                child: Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
