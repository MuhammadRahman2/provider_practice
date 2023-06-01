// import 'package:flutter/material.dart';
// import 'package:tech_lift_working/model/prodduct.dart';

// class FavoritListsProvider extends ChangeNotifier {
//   List<Product> _favoritLists = [];

//   List<Product> get favoritLists => _favoritLists;

//   // void addToFavrt(index) {
//   //   _favoritLists.add(_products[index]);
//   //   print("data in list ${_favoritLists}");
//   //   notifyListeners();
//   // }

//   void addToCart(Product item, BuildContext context) async {
//     // SharedPreferences pref = await SharedPreferences.getInstance();
//     if (_favoritLists.isNotEmpty && _favoritLists.contains(item)) {
//       _favoritLists.remove(item);
//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('${item.id} id data is remove')));
//       print('${item.id} data is remove');
//       // await pref
//       //     .remove('item')
//       //     .then((value) => print('data is remove from shared pref'));
//     } else {
//       _favoritLists.add(item);
//       print('${item.id} data is add');
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('${item.id} id data is add')));

//       // await pref.setStringList('item', [item.toString()]).then((value) {
//       //   print('item is add in shared preference ${item.id}');
//       // });
//     }
//     notifyListeners();
//   }

//   List get produtList => _products;

//   final List<Product> _products = [
//     Product(
//         id: '01',
//         name: 'UltraBoost Shoes',
//         imageUrl:
//             'https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp',
//         price: '99'),
//     Product(
//         id: '02',
//         name: 'Originals Superstar',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/58282ea3-b815-4d26-9f4f-382aa62f67cf-HP5404_a1.webp",
//         price: '99'),
//     Product(
//         id: '03',
//         name: 'Originals Superstar',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp",
//         price: '99'),
//     Product(
//         id: '04',
//         name: 'Originals Superstar',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/58282ea3-b815-4d26-9f4f-382aa62f67cf-HP5404_a1.webp",
//         price: '99'),
//     Product(
//         id: '05',
//         name: 'Originals NMD R1',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/e32f065b-358a-4d26-a91e-5dcb35bb040f-HP9662_a1.webp",
//         price: '99'),
//     Product(
//         id: '06',
//         name: 'Originals Superstar',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/58282ea3-b815-4d26-9f4f-382aa62f67cf-HP5404_a1.webp",
//         price: '99'),
//     Product(
//         id: '07',
//         name: 'UltraBoost Shoes',
//         image:
//             'https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp',
//         price: '99'),
//     Product(
//         id: '08',
//         name: 'Originals NMD R1',
//         image:
//             "https://d326fntlu7tb1e.cloudfront.net/uploads/3d2b87c6-6450-4751-be73-7b13b2f7e284-GV9439_a1.webp",
//         price: '99'),
//   ];
// }
