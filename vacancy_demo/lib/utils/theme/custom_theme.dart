part of '../../app_imoprts/app_imports.dart';

class CustomTheme {
  static const String enFont = 'YsabeauInfant-VariableFont_wght';
  static const String arFont = 'YsabeauInfant-VariableFont_wght';
  static String? fontFamily(BuildContext context) => enFont;
//!------------------------------------------------< Light >-----------------------------------------------
  static ThemeData lightTheme(BuildContext context) {
    String? fontApp = fontFamily(context);
    return ThemeData.light().copyWith(
        primaryColor: AppColors.primary,
        secondaryHeaderColor: AppColors.secondary,
        colorScheme: ThemeData(fontFamily: fontApp).colorScheme.copyWith(
            primary: AppColors.primary, secondary: AppColors.secondary),
        dividerTheme: DividerThemeData(color: Colors.grey.shade400),
        shadowColor: Colors.grey,
        primaryTextTheme:
            Theme.of(context).textTheme.apply(fontFamily: fontApp),
//*---------------------------------------------< Icon Theme >--------------------------------------------
        iconTheme: IconThemeData(color: AppColors.secondary),
//*--------------------------------------------< App Bar Theme >------------------------------------------
        appBarTheme: AppBarTheme(
            toolbarHeight: 60,
            backgroundColor: AppColors.backgroundColor,
            centerTitle: true,
            elevation: 0,
            titleTextStyle: CustomTextStyle.h6(context).copyWith(
                color: Colors.black,
                fontFamily: fontApp,
                fontWeight: FontWeight.bold)),
//*---------------------------------------------< Card Theme >--------------------------------------------
        cardTheme: const CardTheme().copyWith(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            margin: const EdgeInsets.all(0),
            surfaceTintColor: Colors.white,
            color: Colors.white),
//*---------------------------------------------< Text Theme >--------------------------------------------
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black,
            fontFamily: fontApp,
            displayColor: AppColors.secondary));
  }
}
