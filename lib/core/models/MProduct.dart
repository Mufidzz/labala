import 'package:labala/core/models/MProductExchange.dart';

class MProduct {
  int iD;
  int userID;
  String name;
  String size;
  String description;

  MProduct({this.iD, this.userID, this.name, this.size, this.description});

  MProduct.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    userID = json['UserID'];
    name = json['Name'];
    size = json['Size'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['UserID'] = this.userID;
    data['Name'] = this.name;
    data['Size'] = this.size;
    data['Description'] = this.description;
    return data;
  }
}

class MProductWProductExchange extends MProduct {
  List<MProductExchange> productExchanges;

  MProductWProductExchange(
      {iD, userID, name, size, description, this.productExchanges})
      : super(
          iD: iD,
          userID: userID,
          name: name,
          size: size,
          description: description,
        );

  MProductWProductExchange.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    userID = json['UserID'];
    name = json['Name'];
    size = json['Size'];
    description = json['Description'];
    if (json['ProductExchanges'] != null) {
      productExchanges = json['ProductExchanges']
          .map((json) => MProductExchange.fromJson(json))
          .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['UserID'] = this.userID;
    data['Name'] = this.name;
    data['Size'] = this.size;
    data['Description'] = this.description;
    if (this.productExchanges != null) {
      data['ProductExchanges'] =
          this.productExchanges.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
