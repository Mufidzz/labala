class MUser {
  int iD;
  String createdAt;
  String updatedAt;
  Null deletedAt;
  String userDefinedID;
  String email;
  String password;
  String fullName;
  String bio;
  String whatsapp;
  int access;
  int passwordTokenID;
  int registerTokenID;
  int privilegesLevel;

  MUser(
      {this.iD,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.userDefinedID,
      this.email,
      this.password,
      this.fullName,
      this.bio,
      this.whatsapp,
      this.access,
      this.passwordTokenID,
      this.registerTokenID,
      this.privilegesLevel});

  MUser.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    createdAt = json['CreatedAt'];
    updatedAt = json['UpdatedAt'];
    deletedAt = json['DeletedAt'];
    userDefinedID = json['UserDefinedID'];
    email = json['Email'];
    password = json['Password'];
    fullName = json['FullName'];
    bio = json['Bio'];
    whatsapp = json['Whatsapp'];
    access = json['Access'];
    passwordTokenID = json['PasswordTokenID'];
    registerTokenID = json['RegisterTokenID'];
    privilegesLevel = json['PrivilegesLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['CreatedAt'] = this.createdAt;
    data['UpdatedAt'] = this.updatedAt;
    data['DeletedAt'] = this.deletedAt;
    data['UserDefinedID'] = this.userDefinedID;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['FullName'] = this.fullName;
    data['Bio'] = this.bio;
    data['Whatsapp'] = this.whatsapp;
    data['Access'] = this.access;
    data['PasswordTokenID'] = this.passwordTokenID;
    data['RegisterTokenID'] = this.registerTokenID;
    data['PrivilegesLevel'] = this.privilegesLevel;
    return data;
  }
}

class MUserCredential {
  String email;
  String password;

  MUserCredential({this.email, this.password});

  MUserCredential.fromJson(Map<String, dynamic> json) {
    email = json['Email'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Email'] = this.email;
    data['Password'] = this.password;
    return data;
  }
}
