// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'package:tech_lift_working/model/prodduct.dart';
// import 'package:tech_lift_working/utils/utils.dart';

// class CartPage extends StatelessWidget {
//   const CartPage({super.key, this.products});

//   final List<Product>? products;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor:const Color(0xffE2E2E2),
//         body: SafeArea(
//           child: products!.isEmpty
//               ? const Center(
//                   child: Text('No Data'),
//                 )
//               : Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.fromLTRB(8, 12, 8, 18),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Icon(
//                               Icons.close,
//                               // color: Colors.white,
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               // filter();
//                             },
//                             child: const Icon(
//                               FontAwesome.sliders,
//                               // color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.8,
//                       // color: Colors.white,
//                       child: ListView.builder(
//                         itemCount: products!.length,
//                         itemBuilder: (context, index) {
//                           return Card(
//                             child: ListTile(
//                               leading: CachedNetworkImage(
//                                 // height: MediaQuery.of(context).size.height * 0.5,
//                                 imageUrl: products![index].image.toString(),
//                                 placeholder: (context, url) => const Center(
//                                     child: CircularProgressIndicator()),
//                                 errorWidget: (context, url, error) =>
//                                     const Icon(Icons.error),
//                               ),
//                               title: Text(products![index].name.toString(),
//                                   style: textStyle(
//                                       size: 18, fontWeight: FontWeight.w700)),
//                               subtitle: Text('\$${products![index].price}',
//                                   style: textStyle(
//                                       size: 16, fontWeight: FontWeight.w500)),
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//         ));
//   }
// }
