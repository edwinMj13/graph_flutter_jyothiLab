
class PdpReviewUserQnDetailsList {
  int? id;
  int? result;
  String? employeeId;
  String? questionare;
  double? weightage;
  double? totalWeightage;
  String? status;
  bool? isActive;
  bool? isEditable;
  String? remarks;
  String? expectedResult;

  PdpReviewUserQnDetailsList(
      {this.id,
        this.result,
        this.employeeId,
        this.questionare,
        this.weightage,
        this.totalWeightage,
        this.status,
        this.isActive,
        this.isEditable,
        this.remarks,
        this.expectedResult});

  PdpReviewUserQnDetailsList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    result = json['Result'];
    employeeId = json['EmployeeId'];
    questionare = json['Questionare'];
    weightage = json['Weightage'];
    totalWeightage = json['TotalWeightage'];
    status = json['Status'];
    isActive = json['isActive'];
    isEditable = json['isEditable'];
    remarks = json['Remarks'];
    expectedResult = json['ExpectedResult'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Result'] = result;
    data['EmployeeId'] = employeeId;
    data['Questionare'] = questionare;
    data['Weightage'] = weightage;
    data['TotalWeightage'] = totalWeightage;
    data['Status'] = status;
    data['isActive'] = isActive;
    data['isEditable'] = isEditable;
    data['Remarks'] = remarks;
    data['ExpectedResult'] = expectedResult;
    return data;
  }
}
