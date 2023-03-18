class Jobs {
  int? id;
  int? locationId;
  int? customerId;
  int? siteId;
  int? equipmentId;
  int? contactPersonId;
  String? jobDate;
  String? jobNumber;
  int? subCategoryId;
  int? reportType;
  String? additionalInfo;
  String? jobDescription;
  String? stateDate;
  bool? isActive;
  int? userId;
  String? equipmentName;
  String? jobStatus;
  String? jobStatusColor;
  int? jobStatusId;
  String? customerName;
  String? workerName;
  String? siteName;
  String? locationName;
  bool? isProject;
  int? phaseId;
  String? phaseName;
  int? categoryId;
  int? skillId;
  int? priorityId;
  int? teamId;
  int? timingWindowId;
  String? timeFrom;
  String? timeTo;
  bool? isTeam;
  double? projectCompletionPercentage;

  Jobs(
      {this.id,
      this.locationId,
      this.customerId,
      this.siteId,
      this.equipmentId,
      this.contactPersonId,
      this.jobDate,
      this.jobNumber,
      this.subCategoryId,
      this.reportType,
      this.additionalInfo,
      this.jobDescription,
      this.stateDate,
      this.isActive,
      this.userId,
      this.equipmentName,
      this.jobStatus,
      this.jobStatusColor,
      this.jobStatusId,
      this.customerName,
      this.workerName,
      this.siteName,
      this.locationName,
      this.isProject,
      this.phaseId,
      this.phaseName,
      this.categoryId,
      this.skillId,
      this.priorityId,
      this.teamId,
      this.timingWindowId,
      this.timeFrom,
      this.timeTo,
      this.isTeam,
      this.projectCompletionPercentage});

  Jobs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    locationId = json['locationId'];
    customerId = json['customerId'];
    siteId = json['siteId'];
    equipmentId = json['equipmentId'];
    contactPersonId = json['contactPersonId'];
    jobDate = json['jobDate'];
    jobNumber = json['jobNumber'];
    subCategoryId = json['subCategoryId'];
    reportType = json['reportType'];
    additionalInfo = json['additionalInfo'];
    jobDescription = json['jobDescription'];
    stateDate = json['stateDate'];
    isActive = json['isActive'];
    userId = json['userId'];
    equipmentName = json['equipmentName'];
    jobStatus = json['jobStatus'];
    jobStatusColor = json['jobStatusColor'];
    jobStatusId = json['jobStatusId'];
    customerName = json['customerName'];
    workerName = json['workerName'];
    siteName = json['siteName'];
    locationName = json['locationName'];
    isProject = json['isProject'];
    phaseId = json['phaseId'];
    phaseName = json['phaseName'];
    categoryId = json['categoryId'];
    skillId = json['skillId'];
    priorityId = json['priorityId'];
    teamId = json['teamId'];
    timingWindowId = json['timingWindowId'];
    timeFrom = json['timeFrom'];
    timeTo = json['timeTo'];
    isTeam = json['isTeam'];
    projectCompletionPercentage = json['projectCompletionPercentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['locationId'] = locationId;
    data['customerId'] = customerId;
    data['siteId'] = siteId;
    data['equipmentId'] = equipmentId;
    data['contactPersonId'] = contactPersonId;
    data['jobDate'] = jobDate;
    data['jobNumber'] = jobNumber;
    data['subCategoryId'] = subCategoryId;
    data['reportType'] = reportType;
    data['additionalInfo'] = additionalInfo;
    data['jobDescription'] = jobDescription;
    data['stateDate'] = stateDate;
    data['isActive'] = isActive;
    data['userId'] = userId;
    data['equipmentName'] = equipmentName;
    data['jobStatus'] = jobStatus;
    data['jobStatusColor'] = jobStatusColor;
    data['jobStatusId'] = jobStatusId;
    data['customerName'] = customerName;
    data['workerName'] = workerName;
    data['siteName'] = siteName;
    data['locationName'] = locationName;
    data['isProject'] = isProject;
    data['phaseId'] = phaseId;
    data['phaseName'] = phaseName;
    data['categoryId'] = categoryId;
    data['skillId'] = skillId;
    data['priorityId'] = priorityId;
    data['teamId'] = teamId;
    data['timingWindowId'] = timingWindowId;
    data['timeFrom'] = timeFrom;
    data['timeTo'] = timeTo;
    data['isTeam'] = isTeam;
    data['projectCompletionPercentage'] = projectCompletionPercentage;
    return data;
  }
}
