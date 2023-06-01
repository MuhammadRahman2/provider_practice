import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_lift_working/controllers/product_provider.dart';
import 'package:tech_lift_working/model/prodduct.dart';
import 'package:tech_lift_working/utils/utils.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    final manShoesProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE2E2E2E2),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/top_image.png'),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 8, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Althletic Shoes \nCollection',
                        style: TextStyle(
                            fontSize: 30, color: Colors.white, height: 1),
                      ),
                    ),
                    TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        isScrollable: true,
                        controller: _tabController,
                        labelColor: Colors.white,
                        labelStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                        tabs: const [
                          Tab(text: 'Men Shoes'),
                          Tab(text: 'Women Shoes'),
                          Tab(text: 'kids shoes'),
                        ]),
                  ],
                ),
              ),
            ),
            Positioned(
              // padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.25,
              // ),
              left: 10.0,
              right: 0.0,
              bottom: 0.0,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.65,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: manShoesProvider.manShoes.length,
                          itemBuilder: (context, index) {
                            final manShoes = manShoesProvider.manShoes;
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(5.0),
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      manShoes[index].imageUrl![0].toString(),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          manShoes[index].name.toString(),
                                          style: textStyleWithHt(
                                              size: 22,
                                              height: 1,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          manShoes[index].category.toString(),
                                          style: textStyle(
                                              size: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(manShoes[index].price.toString())
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Latest Shoes'),
                          Row(
                            children: [
                              Text('Show All'),
                              Icon(Icons.play_arrow)
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: manShoesProvider.manShoes.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Image.network(
                                manShoesProvider.manShoes[index].imageUrl![1]
                                    .toString(),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(height: 50, width: 100, color: Colors.pink),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Container(height: 50, width: 100, color: Colors.purple),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
