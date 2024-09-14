part of './app_imoprts/app_imports.dart';

class VacancyDemo extends StatelessWidget {
  const VacancyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.lightTheme(context),
        color: AppColors.primary,
        title: AppStrings.appTitle,
        home: BlocProvider(
            create: (context) => JobsBloc(), child: const VacancyScreen()));
  }
}
