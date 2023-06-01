// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_vector_icons/flutter_vector_icons.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:tech_lift_working/controllers/cart_provider.dart';
// import 'package:tech_lift_working/utils/utils.dart';
// import 'package:tech_lift_working/views/pages/task1/cart_page.dart';

// import '../../../model/prodduct.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var listProvider =
//         Provider.of<FavoritListsProvider>(context, listen: false);
//     return Scaffold(
//       backgroundColor: const Color(0xffE2E2E2),
//       body: SafeArea(
//         child: Consumer<FavoritListsProvider>(
//             builder: (context, favoritListsProvider, widget) {
//           return Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(8, 12, 8, 18),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         // Navigator.pop(context);
//                       },
//                       child: const Icon(
//                         Icons.arrow_back,
//                         // color: Colors.white,
//                       ),
//                     ),
//                     Text(
//                       'DashBord',
//                       style: textStyle(size: 20, fontWeight: FontWeight.w700),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => CartPage(
//                                 products: listProvider.favoritLists,
//                               ),
//                             ));
//                       },
//                       child: Badge(
//                         label: Text(favoritListsProvider.favoritLists.length
//                             .toString()),
//                         child: const Icon(
//                           Icons.favorite,
//                           size: 30,
//                           // color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       height: 50,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [Icon(Icons.sort), Text('Sort')],
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       width: 100,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10)),
//                       child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Icon(
//                             FontAwesome.sliders,
//                           ),
//                           Text('Filter')
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Expanded(
//                 flex: 2,
//                 child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 5,
//                     crossAxisSpacing: 5,
//                   ),
//                   itemCount: listProvider.produtList.length,
//                   //  products.length,
//                   itemBuilder: (context, index) {
//                     // Product product = products[index];
//                     return GestureDetector(
//                       onTap: () async {
//                         listProvider.addToCart(
//                             listProvider.produtList[index], context);
                        
//                         // addToCart( listProvider.produtList[index]);
//                       },
//                       child: Container(
//                         margin: const EdgeInsets.symmetric(
//                             horizontal: 5, vertical: 5),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Stack(
//                           children: [
//                             Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: CachedNetworkImage(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.5,
//                                     imageUrl: listProvider
//                                         .produtList[index].image
//                                         .toString(),
//                                     placeholder: (context, url) => const Center(
//                                         child: CircularProgressIndicator()),
//                                     errorWidget: (context, url, error) =>
//                                         const Icon(Icons.error),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   // height: MediaQuery.of(context).size.height * 0.3,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(left: 15),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Expanded(
//                                           child: Text(
//                                             listProvider.produtList[index].name
//                                                 .toString(),
//                                             style: textStyle(
//                                                 size: 20,
//                                                 fontWeight: FontWeight.w700),
//                                           ),
//                                         ),
//                                         Expanded(
//                                             child: Text(
//                                                 '\$${listProvider.produtList[index].price.toString()}',
//                                                 style: textStyle(
//                                                     size: 16,
//                                                     fontWeight:
//                                                         FontWeight.w600))),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Positioned(
//                                 top: 10,
//                                 right: 10,
//                                 child: listProvider.favoritLists.contains(
//                                         listProvider.produtList[index])
//                                     ? const Icon(
//                                         Icons.favorite,
//                                       )
//                                     : const Icon(Icons.favorite_outline))
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               )
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }
