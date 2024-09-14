part of '../../app_imoprts/app_imports.dart';

class VacancyScreen extends StatelessWidget {
  static String routeName = ROUTENAME.VacancyScreen.name;
  const VacancyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    JobsBloc jobsBloc = context.read<JobsBloc>()..add(LoadJobsListEvent());
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
//!--------------------------------------< App Bar >--------------------------------------
            appBar: AppBar(
                title: TextViewCustom(
                    text: AppStrings.vacancyTitle,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                    size: 18)),
//!----------------------------------------< Body >---------------------------------------
            body: BlocBuilder<JobsBloc, JobsState>(builder: (context, state) {
              return state is LoadingJobsListState
                  ? const Loader()
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: .6,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 15),
                          physics: const BouncingScrollPhysics(),
                          itemCount: jobsBloc.jobsList.length,
                          itemBuilder: (BuildContext contest, int index) {
                            return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Card(
                                    child: SizedBox(
                                        width: 200,
                                        height: 300,
                                        child: Column(children: [
//*----------------------------------------< Image >---------------------------------------
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10)),
                                              child: ImageNetwork(
                                                  image: jobsBloc
                                                          .jobsList[index]
                                                          .imageUrl ??
                                                      AppStrings.nullString,
                                                  height: 100,
                                                  width: double.infinity)),
                                          const Gap(15),
//*----------------------------------------< Title >---------------------------------------
                                          TextViewCustom(
                                              textAlign: TextAlign.center,
                                              maxLine: 3,
                                              color: AppColors.primary,
                                              fontWeight: FontWeight.w600,
                                              size: 15,
                                              text: jobsBloc
                                                      .jobsList[index].title ??
                                                  AppStrings.nullString),
                                          const Gap(10),
//*---------------------------------------< Company >--------------------------------------
                                          Row(children: [
                                            const Gap(10),
                                            const Icon(
                                                FontAwesomeIcons.building,
                                                size: 16),
                                            const Gap(5),
                                            TextViewCustom(
                                                maxLine: 2,
                                                text: jobsBloc.jobsList[index]
                                                        .company ??
                                                    AppStrings.nullString)
                                          ]),
                                          const Gap(5),
//*-----------------------------------------< Date >---------------------------------------
                                          Row(children: [
                                            const Gap(10),
                                            const Icon(
                                                FontAwesomeIcons.calendarDays,
                                                size: 16),
                                            const Gap(5),
                                            TextViewCustom(
                                                maxLine: 2,
                                                text: jobsBloc.jobsList[index]
                                                        .datePosted ??
                                                    AppStrings.nullString)
                                          ]),
                                          const Gap(5),
//*--------------------------------------< Description >-----------------------------------
                                          Expanded(
                                              child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: TextViewCustom(
                                                      maxLine: 3,
                                                      text: jobsBloc
                                                              .jobsList[index]
                                                              .description ??
                                                          AppStrings
                                                              .nullString))),
//*----------------------------------< View Details Button >-------------------------------
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: ButtonCustom(
                                                  onPressed: () =>
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  BlocProvider
                                                                      .value(
                                                                    value:
                                                                        jobsBloc,
                                                                    child: VacancyDetailsScreen(
                                                                        index:
                                                                            index),
                                                                  ))),
                                                  text: AppStrings.viewDetails,
                                                  height: 25,
                                                  width: 100))
                                        ]))));
                          }));
            })));
  }
}
