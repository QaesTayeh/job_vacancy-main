part of 'jobs_bloc.dart';

@immutable
sealed class JobsState {}

final class JobsInitial extends JobsState {}

class LoadingJobsListState extends JobsState {}

class LoadedJobsListState extends JobsState {}

class LoadedFavoriteState extends JobsState {}
