import 'package:freezed_annotation/freezed_annotation.dart';
part 'theme_model.g.dart';
part 'theme_model.freezed.dart';

@freezed
class ThemeModel with _$ThemeModel {
  factory ThemeModel({@Default(false) bool darkMode}) = _ThemeModel;
  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}


// final themeProvider =
//     ChangeNotifierProvider<ThemeModel>((ref) => ThemeModel());

// class ThemeModel extends ChangeNotifier {
//   bool _darkMode = false;

//   // Constructors
//   ThemeModel() {
//     // Load from shared preferences
//     _loadTheme();
//     debugPrint("Running $_darkMode theme");
//   }

//   // Getters
//   bool get darkMode {
//     return _darkMode;
//   }

//   switchTheme() async {
//     debugPrint("Entered switchTheme() with $_darkMode");
//     _darkMode ^= true;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     debugPrint("Setting $_darkMode theme");
//     await prefs.setBool("darkMode", _darkMode);
//     debugPrint("Set ${prefs.getBool("darkMode")} theme");
//     notifyListeners();
//   }

//   void _loadTheme() async {
//     debugPrint("Entered loadTheme()");
//     SharedPreferences.getInstance().then((prefs) {
//       _darkMode = prefs.getBool("darkMode")!;
//       notifyListeners();
//       debugPrint("Loaded $_darkMode");
//     });
//   }
// }
