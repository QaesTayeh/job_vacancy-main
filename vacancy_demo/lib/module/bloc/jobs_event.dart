part of 'jobs_bloc.dart';

@immutable
sealed class JobsEvent {}

class LoadJobsListEvent extends JobsEvent {}

class ClickFavoriteEvent extends JobsEvent {
  final int index;
  ClickFavoriteEvent({required this.index});
}
