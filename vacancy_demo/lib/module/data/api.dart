part of '../../app_imoprts/app_imports.dart';

class JobsApi {
  Future<List<JobModel>> getJobs() async {
    Response response = await get(Uri.parse(AppStrings.apiUrl));
    dynamic body = json.decode(response.body);
    List<JobModel> jobs = [];
    if (response.statusCode == STATUSCODE.Success.value) {
      for (int i = 0; i < body.length; i++) {
        jobs.add(JobModel.fromJson(body[i]));
      }
      return jobs;
    } else {
      ScaffoldMessenger.of(globalKey.currentContext!).showSnackBar(SnackBar(
          content: Text(STATUSCODE.values[response.statusCode].uiName),
          duration: const Duration(seconds: 5)));
    }
    return [];
  }
}
