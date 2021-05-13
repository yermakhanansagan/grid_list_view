import 'package:flutter/material.dart';
import 'package:flutter_app3/screens/model/dummy_data.dart';
import 'package:flutter_app3/theme/color_theme.dart';
import 'package:flutter_app3/theme/text_theme.dart';

class CharactersGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 24,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return Column(
          children: [
            CircleAvatar(
              child: Image.asset(character.avatar),
              radius: 60,
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              character.is_alive ? "ALIVE" : "DEAD",
              style: TextThemes.overline.apply(
                  color: character.is_alive
                      ? ColorPalette.status_green
                      : ColorPalette.status_red),
            ),
            Text(
              character.name,
              style: TextThemes.subtitle_2.apply(color: ColorPalette.white),
            ),
            Text(
              character.race + ", " + character.sex,
              style: TextThemes.caption
                  .apply(color: ColorPalette.dark_mode_additional_color),
            )
          ],
        );
      },
    );
  }
}
