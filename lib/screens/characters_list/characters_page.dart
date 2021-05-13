import 'package:flutter/material.dart';
import 'package:flutter_app3/components/searcher.dart';
import 'package:flutter_app3/resources/icons.dart';
import 'package:flutter_app3/screens/characters_list/characters_grid_view.dart';
import 'package:flutter_app3/screens/characters_list/characters_list_view.dart';
import 'package:flutter_app3/screens/model/dummy_data.dart';
import 'package:flutter_app3/theme/color_theme.dart';
import 'package:flutter_app3/theme/text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  bool isList = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearcherTextField(
              title: "Search Character",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "TOTAL CHARACTERS: " + characters.length.toString(),
                    style: TextThemes.overline
                        .apply(color: ColorPalette.dark_mode_second_color),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(isList
                        ? MainIcons.grid_view_icon
                        : MainIcons.list_view_icon),
                    onPressed: () {
                      setState(
                        () {
                          isList = !isList;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            isList ? CharactersListView() : CharactersGridView(),
          ],
        ),
      ),
    );
  }
}
