import 'package:flutter/material.dart';

void main() {
  runApp(Catalog());
}


class Catalog extends StatelessWidget {
  List<String> product = [
    'Classic Burger',
    'Supreme Pizza',
    'Beef Hotdog',
    'French Fries',
    'Lasagna',
    'Hot Wings',
    'Chili Drumsticks',
    'Milkshake',
    'Cola',
    'Ice Cream'
  ];
  List<int> count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> price = [
    'Harga : Rp. 20.000',
    'Harga : Rp. 35.000',
    'Harga : Rp. 18.000',
    'Harga : Rp. 15.000',
    'Harga : Rp. 27.000',
    'Harga : Rp. 18.000',
    'Harga : Rp. 18.000',
    'Harga : Rp. 15.000',
    'Harga : Rp. 12.000',
    'Harga : Rp. 12.000'
  ];

  Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Menu'),
          ),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(count[index].toString()),
                  ),
                  title: Text(product[index]),
                  subtitle: Text(price[index]),
                  trailing: const Icon(Icons.delete),
                );
              })),
    );
  }
}