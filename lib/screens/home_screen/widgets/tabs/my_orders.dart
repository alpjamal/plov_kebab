import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../../../utils/constants.dart';

class MyOrdersTab extends StatelessWidget {
  const MyOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: LocaleText(ProjectLocales.myOrders)),
        body: Column(
          children: [
            _tabBar(),
            _body(),
          ],
        ),
      ),
    );
  }

  _body() {
    return Expanded(
      child: TabBarView(
        children: [
          Center(child: Text('Current orders')),
          Center(child: Text('Orders history')),
        ],
      ),
    );
  }

  _tabBar() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        decoration: BoxDecoration(
          color: ProjectColors.inputFill,
          borderRadius: BorderRadius.all(ProjectRadius.main),
        ),
        child: TabBar(
          indicatorPadding: EdgeInsets.all(4),
          tabs: [
            Tab(child: LocaleText(ProjectLocales.currentOrders)),
            Tab(child: LocaleText(ProjectLocales.orderHistory)),
          ],
        ),
      ),
    );
  }
}
