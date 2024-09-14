// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:vacancy_demo/model/job_model.dart';
import '../../app_imoprts/app_imports.dart';

part 'jobs_event.dart';
part 'jobs_state.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  List<JobModel> jobsList = [];
  final JobsRepository jobsRepository = JobsRepository();
  JobsBloc() : super(JobsInitial()) {
    on<LoadJobsListEvent>((event, emit) async {
      emit(LoadingJobsListState());
      jobsList = await jobsRepository.getJobs();
      emit(LoadedJobsListState());
    });
    on<ClickFavoriteEvent>((event, emit) async {
      jobsList[event.index].favorite = !(jobsList[event.index].favorite)!;
      emit(LoadedFavoriteState());
    });
  }
}
