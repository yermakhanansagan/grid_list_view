import 'package:flutter/material.dart';
import 'package:flutter_app3/screens/model/dummy_data.dart';
import 'package:flutter_app3/theme/color_theme.dart';
import 'package:flutter_app3/theme/text_theme.dart';

class CharactersListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final character = characters[index];
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          leading: CircleAvatar(
            radius: 37,
            child: Image.asset(character.avatar),
          ),
          title: Text(
            character.is_alive ? "ALIVE" : "DEAD",
            style: TextThemes.overline.apply(
                color: character.is_alive
                    ? ColorPalette.status_green
                    : ColorPalette.status_red),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.name,
                style: TextThemes.subtitle_1.apply(color: ColorPalette.white),
              ),
              Text(
                character.race + ", " + character.sex,
                style: TextThemes.caption
                    .apply(color: ColorPalette.dark_mode_additional_color),
              )
            ],
          ),
        );
      },
    );
  }
}
