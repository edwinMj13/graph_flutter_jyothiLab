
class JconnectViewPdpList {
  int? id;
  int? result;
  String? qn;
  String? expectedResult;
  double? weightage;
  bool? isActive;
  bool? isEdit;
  String? status;
  String? type;
  String? createdDate;
  String? financialYear;
  int? logsCount;

  JconnectViewPdpList(
      {this.id,
        this.result,
        this.qn,
        this.expectedResult,
        this.weightage,
        this.isActive,
        this.isEdit,
        this.status,
        this.type,
        this.createdDate,
        this.financialYear,
        this.logsCount});

  JconnectViewPdpList.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    result = json['Result'];
    qn = json['Qn'];
    expectedResult = json['ExpectedResult'];
    weightage = json['Weightage'];
    isActive = json['isActive'];
    isEdit = json['isEdit'];
    status = json['Status'];
    type = json['Type'];
    createdDate = json['CreatedDate'];
    financialYear = json['FinancialYear'];
    logsCount = json['LogsCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Result'] = result;
    data['Qn'] = qn;
    data['ExpectedResult'] = expectedResult;
    data['Weightage'] = weightage;
    data['isActive'] = isActive;
    data['isEdit'] = isEdit;
    data['Status'] = status;
    data['Type'] = type;
    data['CreatedDate'] = createdDate;
    data['FinancialYear'] = financialYear;
    data['LogsCount'] = logsCount;
    return data;
  }
}
