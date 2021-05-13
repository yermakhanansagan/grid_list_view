import 'package:flutter/material.dart';
import 'package:flutter_app3/resources/icons.dart';
import 'package:flutter_app3/theme/color_theme.dart';
import 'package:flutter_app3/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearcherTextField extends StatelessWidget {
  final String title;

  const SearcherTextField({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(top: 2),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: title,
          labelStyle:
              TextThemes.body_1.apply(color: ColorPalette.dark_mode_second_color),
          prefixIcon: IconButton(
            icon: SvgPicture.asset(MainIcons.search_icon),
          ),
          suffixIcon: Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: ColorPalette.dark_mode_second_color,
                ),
              ),
            ),
            child: IconButton(
              iconSize: 24,
              icon: SvgPicture.asset(
                MainIcons.filter_icon,
                fit: BoxFit.cover,
              ),
              onPressed: (){},
            ),
          ),
          fillColor: ColorPalette.search_dark_mode_color,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
