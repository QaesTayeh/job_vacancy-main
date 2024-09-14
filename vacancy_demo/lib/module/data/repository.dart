part of '../../app_imoprts/app_imports.dart';

class JobsRepository {
  final JobsApi jobsApi = JobsApi();
  Future<List<JobModel>> getJobs() async {
    List<JobModel> result = await jobsApi.getJobs();
    return result;
  }
}
