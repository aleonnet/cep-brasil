import 'package:flutter/material.dart';
import 'package:cep_brasil/tabs/consultar.dart';
import 'package:cep_brasil/tabs/historico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>  with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(
      length: 2,
      vsync: this
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CEP Brasil'),
        backgroundColor: Colors.green,
        bottomOpacity: 1,
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.yellow,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(
              text: 'Consultar',
            ),
            Tab(
              text: 'Histórico',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Consultar(),
          Historico()
        ],
      ),
    );
  }
}