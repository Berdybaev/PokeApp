import 'package:flutter/material.dart';
import 'package:pokeapp/core/app_colors.dart';
import 'package:pokeapp/core/app_fonts.dart';

class Custom_TextField extends StatelessWidget {
  const Custom_TextField({
    super.key,
    required this.onChanged,
  });

  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.Grey,
      ),
      width: 254,
      height: 31,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: TextField(
          style: AppFonts.w500s12.copyWith(color: AppColors.LightGrey),
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'Search here ...',
            hintStyle: AppFonts.w500s12.copyWith(color: AppColors.LightGrey),
            fillColor: AppColors.Grey,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.Grey),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.Grey),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: AppColors.Grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
