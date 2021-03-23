import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:labala/core/models/MProduct.dart';
import 'package:http/http.dart' as http;
import 'package:labala/core/routes/routes.dart';

class UCProductAdd {
  final MProductWProductExchange product;
  final BuildContext context;

  UCProductAdd(this.context, {this.product});

  createProduct() async {
    var response = await http.post(
      APIRoute.newProduct.getUri(),
      body: json.encode(product.toJson()),
    );

    if (response.statusCode != 200) {
      print("Create Product Failed");
      print(json.encode(product.toJson()));
      print(response.statusCode);
      print(response.body);
      return;
    }
    print("Create Product Success");
    return;
  }

  updateProduct() async {
    var response = await http.put(
      APIRoute.updateProduct(id: product.iD).getUri(),
      body: json.encode(product.toJson()),
    );

    if (response.statusCode != 200) {
      print("Update Product Failed");
      return;
    }
    print("Update Product Success");
    return;
  }

  deleteProduct() async {
    var response = await http.delete(
      APIRoute.deleteProduct(id: product.iD).getUri(),
      body: json.encode(product.toJson()),
    );

    if (response.statusCode != 200) {
      print("Delete Product Failed");
      return;
    }
    print("Delete Product Success");
    return;
  }
}
