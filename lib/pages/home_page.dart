import 'package:flutter/material.dart';
import 'package:flutter3/components/product_item.dart';
import 'package:flutter3/models/product.dart';

final List<Product> products = [
  Product(
    "1727088258",
    "Демисезонное пальто",
    "Демисезонное пальто из полушерстяной ткани, утепленное синтепоном. Модель полуприталенного силуэта с узким английским воротником, прорезными карманами и застежкой на пуговицы.",
    "assets/1.jpg",
    "2519 руб.",
  ),
  Product(
    "1727108578",
    "Классическое пальто",
    "Пальто в классическом стиле со съемной утепленной синтепоном подстежкой на молнии с трикотажным воротником. Модель полуприталенного силуэта с английским воротником, прорезными карманами и застежкой на пуговицы.",
    "assets/2.jpg",
    "2238 руб.",
  ),
  Product(
    "1727127024",
    "Демисезонное пальто",
    "Демисезонное пальто из полушерстяной ткани, утепленное синтепоном. Модель полуприталенного силуэта с узким английским воротником, прорезными карманами и застежкой на пуговицы.",
    "assets/3.jpg",
    "4441 руб."),
  Product(
    "1727127095",
    "Демисезонное пальто",
    "Демисезонное пальто из полушерстяной ткани, утепленное синтепоном. Модель полуприталенного силуэта с узким английским воротником, прорезными карманами и застежкой на пуговицы.",
    "assets/4.jpg",
    "2469 руб."),
  Product(
    "1727127227",
    "Классическое пальто",
    "Пальто в классическом стиле со съемной утепленной синтепоном подстежкой на молнии с трикотажным воротником. Модель полуприталенного силуэта с английским воротником, прорезными карманами и застежкой на пуговицы.",
    "assets/5.jpg",
    "1007 руб."),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Каталог товаров",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 6 / 12,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: products.length,
                itemBuilder: (BuildContext ctx, index) {
                  return ProductItem(product: products[index]);
                })));
  }
}