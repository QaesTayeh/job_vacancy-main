enum ROUTENAME {
  // ignore: constant_identifier_names
  VacancyDetailsScreen(),
  // ignore: constant_identifier_names
  VacancyScreen();

  const ROUTENAME();
}

enum STATUSCODE {
  // ignore: constant_identifier_names
  Success(200, 'Success'),
  // ignore: constant_identifier_names
  Unauthorized(401, 'Unauthorized'),
  // ignore: constant_identifier_names
  NotFound(404, 'Not Found'),
  // ignore: constant_identifier_names
  MethodNotAllowed(405, 'Method Not Allowed');

  const STATUSCODE(this.value, this.uiName);
  final int value;
  final String uiName;
}
