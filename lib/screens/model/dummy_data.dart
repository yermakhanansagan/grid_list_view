import 'package:flutter_app3/resources/images.dart';
import 'package:flutter_app3/screens/model/characters.dart';

Character rick =
    new Character(Images.avatar_rick, "Rick Sanchez", "Human", "Man", true);
Character morty =
new Character(Images.avatar_morty, "Morty Smith", "Human", "Man", true);
Character summer =
new Character(Images.avatar_summer, "Summer Smith", "Human", "Woman", true);
Character eins =
new Character(Images.avatar_eins, "Albert Einstein", "Human", "Man", false);
Character allan =
new Character(Images.avatar_allan, "Allan Rails", "Human", "Man", false);
Character dir =
new Character(Images.avatar_dir, "Agency Director", "Human", "Man", true);

List<Character> characters = [rick, morty, summer, eins, allan, dir];