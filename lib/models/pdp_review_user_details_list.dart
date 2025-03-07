
class PdpReviewUserDetailsList {
  String? userId;
  int? result;
  String? userName;
  String? qnCount;
  bool? isEditable;
  bool? isActive;
  String? status;
  double? totalWeightage;
  String? type;
  String? createdDate;
  String? financialYear;
  String? dept;
  String? designation;
  String? location;
  String? zone;
  String? attribute1;
  String? attribute2;
  String? attribute3;

  PdpReviewUserDetailsList(
      {this.userId,
        this.result,
        this.userName,
        this.qnCount,
        this.isEditable,
        this.isActive,
        this.status,
        this.totalWeightage,
        this.type,
        this.createdDate,
        this.financialYear,
        this.dept,
        this.designation,
        this.location,
        this.zone,
        this.attribute1,
        this.attribute2,
        this.attribute3});

  PdpReviewUserDetailsList.fromJson(Map<String, dynamic> json) {
    userId = json['UserId'];
    result = json['Result'];
    userName = json['UserName'];
    qnCount = json['QnCount'];
    isEditable = json['isEditable'];
    isActive = json['isActive'];
    status = json['Status'];
    totalWeightage = json['TotalWeightage'];
    type = json['Type'];
    createdDate = json['CreatedDate'];
    financialYear = json['FinancialYear'];
    dept = json['Dept'];
    designation = json['Designation'];
    location = json['Location'];
    zone = json['Zone'];
    attribute1 = json['Attribute1'];
    attribute2 = json['Attribute2'];
    attribute3 = json['Attribute3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UserId'] = userId;
    data['Result'] = result;
    data['UserName'] = userName;
    data['QnCount'] = qnCount;
    data['isEditable'] = isEditable;
    data['isActive'] = isActive;
    data['Status'] = status;
    data['TotalWeightage'] = totalWeightage;
    data['Type'] = type;
    data['CreatedDate'] = createdDate;
    data['FinancialYear'] = financialYear;
    data['Dept'] = dept;
    data['Designation'] = designation;
    data['Location'] = location;
    data['Zone'] = zone;
    data['Attribute1'] = attribute1;
    data['Attribute2'] = attribute2;
    data['Attribute3'] = attribute3;
    return data;
  }
}
