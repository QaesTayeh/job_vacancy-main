class JobModel {
  String? jobId;
  String? title;
  String? company;
  String? location;
  String? description;
  String? longDescription;
  String? salary;
  String? datePosted;
  String? imageUrl;
  bool? favorite = false;

  JobModel(
      {this.jobId,
      this.title,
      this.company,
      this.location,
      this.description,
      this.longDescription,
      this.salary,
      this.datePosted,
      this.imageUrl,
      this.favorite});

  JobModel.fromJson(Map<String, dynamic> json) {
    jobId = json['job_id'];
    title = json['title'];
    company = json['company'];
    location = json['location'];
    description = json['description'];
    longDescription = json['long_description'];
    salary = json['salary'];
    datePosted = json['date_posted'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['job_id'] = jobId;
    data['title'] = title;
    data['company'] = company;
    data['location'] = location;
    data['description'] = description;
    data['long_description'] = longDescription;
    data['salary'] = salary;
    data['date_posted'] = datePosted;
    data['image_url'] = imageUrl;
    return data;
  }
}
