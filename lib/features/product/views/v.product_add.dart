import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:labala/core/models/MProduct.dart';
import 'package:labala/core/models/MProductExchange.dart';
import 'package:labala/core/theme/theme.dart';
import 'package:labala/core/widgets/widgets.dart';
import 'package:labala/features/product/usecases/uc.product_add.dart';
import 'package:labala/features/product/widgets/product_image_container.dart';

class VProductAdd extends StatefulWidget {
  @override
  _VProductAddState createState() => _VProductAddState();
}

class _VProductAddState extends State<VProductAdd> {
  MProductWProductExchange product;
  GlobalKey<FormState> _formKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _formKey = GlobalKey<FormState>();

    product = new MProductWProductExchange(
      productExchanges: new List(),
    );
    product.productExchanges.add(new MProductExchange());
  }

  @override
  Widget build(BuildContext context) {
    return WSafeArea(
      disableImage: true,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Palette.darker,
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Palette.darker,
                  ),
                  onPressed: () {},
                ),
              ],
              backgroundColor: Colors.white,
              title: Text(
                "Product",
                style: CharacterStyle.normal2(
                  color: Palette.darker,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Spacing * 4,
                    right: Spacing * 4,
                    top: Spacing * 4,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gambar Produk",
                          style: CharacterStyle.medium(
                            color: Palette.darker,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        VSpacing(Spacing * 2),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ProductImageContainer(),
                              ProductImageContainer(),
                              ProductImageContainer(),
                              ProductImageContainer(),
                            ],
                          ),
                        ),
                        VSpacing(Spacing * 4),
                        productInformation(),
                        exchangeInformationList(),
                        VSpacing(Spacing * 4),
                        WButton(
                          backgroundColor: Palette.primary,
                          textColor: Palette.primary,
                          text: "Tambah",
                          onTap: () {
                            setState(() {
                              this
                                  .product
                                  .productExchanges
                                  .add(new MProductExchange());
                            });
                          },
                          isFilled: false,
                        ),
                        VSpacing(Spacing * 4),
                        actionButton(),
                        VSpacing(Spacing * 8),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column productInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gambar Produk",
          style: CharacterStyle.medium(
            color: Palette.darker,
            fontWeight: FontWeight.w500,
          ),
        ),
        VSpacing(Spacing * 2),
        WTextField(
          labelText: "Nama Barang",
          hintText: "Masukkan Nama Barang",
          icon: Icons.assignment_outlined,
          required: true,
          onChanged: (value) {
            product.name = value;
          },
        ),
        Row(
          children: [
            Expanded(
              child: WTextField(
                labelText: "Ukuran Tukar",
                hintText: "Masukkan Ukuran Tukar",
                icon: Icons.workspaces_outline,
                required: true,
                onChanged: (value) {
                  product.size = value;
                },
              ),
            ),
            HSpacing(Spacing * 2),
            Expanded(
              child: Text(
                "Mis. KG, PCS, G, atau lainnya.",
                style: CharacterStyle.smallest(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        VSpacing(Spacing * 4),
        Text(
          "Deskripsi Produk",
          style: CharacterStyle.medium(
            color: Palette.darker,
            fontWeight: FontWeight.w500,
          ),
        ),
        WTextField(
          maxLines: 3,
          labelText: "Deskripsi",
          required: true,
          hintText: "Masukkan Deskripsi Barang",
          keyboardType: TextInputType.multiline,
          onChanged: (value) {
            product.description = value;
          },
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }

  Column actionButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Aksi",
          style: CharacterStyle.medium(
            color: Palette.darker,
            fontWeight: FontWeight.w500,
          ),
        ),
        VSpacing(Spacing * 2),
        WButton(
          backgroundColor: product.iD != 0 ? Palette.red : Colors.grey,
          textColor: product.iD != 0 ? Palette.red : Colors.grey,
          text: "Hapus",
          onTap: () {
            UCProductAdd(context, product: product).deleteProduct();
          },
          isFilled: false,
        ),
        VSpacing(Spacing * 2),
        WButton(
          backgroundColor: Palette.primary,
          textColor: Colors.white,
          text: "Simpan",
          onTap: () {
            if (!_formKey.currentState.validate()) {
              return;
            }

            var _pa = new UCProductAdd(context, product: product);

            print(json.encode(_pa.product.toJson()));
            if (product.iD == 0 || product.iD == null) {
              _pa.createProduct();
            } else {
              _pa.updateProduct();
            }
            return;
          },
        ),
      ],
    );
  }

  Widget exchangeInformationList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Informasi Tukar",
          style: CharacterStyle.medium(
            color: Palette.darker,
            fontWeight: FontWeight.w500,
          ),
        ),
        Column(
          children: List.generate(
            product.productExchanges.length,
            (index) {
              return exchangeInformation(index: index);
            },
          ),
        ),
      ],
    );
  }

  Widget exchangeInformation({int index}) {
    return Column(
      children: [
        VSpacing(Spacing * 2),
        WTextField(
          labelText: "Nama Barang",
          hintText: "Masukkan Nama Barang",
          icon: Icons.assignment_outlined,
          required: true,
          onChanged: (value) {
            product.productExchanges[index].name = value;
          },
        ),
        Row(
          children: [
            Expanded(
              child: WTextField(
                labelText: "Jumlah Tukar",
                hintText: "Masukkan Jumlah Tukar",
                required: true,
                icon: Icons.animation,
                keyboardType: TextInputType.numberWithOptions(
                  signed: false,
                  decimal: false,
                ),
                onChanged: (value) {
                  product.productExchanges[index].amount = int.parse(value);
                },
              ),
            ),
            HSpacing(Spacing * 2),
            Expanded(
              child: WTextField(
                labelText: "Ukuran Tukar",
                hintText: "Masukkan Ukuran Tukar",
                required: true,
                icon: Icons.workspaces_outline,
                onChanged: (value) {
                  product.productExchanges[index].size = value;
                },
              ),
            ),
            HSpacing(Spacing * 2),
            InkWell(
              onTap: () {
                if (product.productExchanges.length > 1) {
                  setState(() {
                    product.productExchanges.removeAt(index);
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: Spacing,
                  horizontal: Spacing,
                ),
                decoration: BoxDecoration(
                  color: product.productExchanges.length > 1
                      ? Palette.red
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(Spacing),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        VSpacing(Spacing * 2),
        Divider(
          color: Palette.darker,
        ),
      ],
    );
  }
}
