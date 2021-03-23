class MProductExchange {
  int iD;
  String name;
  int amount;
  String size;
  int productID;

  MProductExchange(
      {this.iD, this.name, this.amount, this.size, this.productID});

  MProductExchange.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    amount = json['Amount'];
    size = json['Size'];
    productID = json['ProductID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Amount'] = this.amount;
    data['Size'] = this.size;
    data['ProductID'] = this.productID;
    return data;
  }
}
