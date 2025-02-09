// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/views/counterView.dart';
import 'package:flutter_widget/mvvm/views/postView.dart';
import 'package:flutter_widget/widgets/MyBottomAppBar.dart';
import 'package:flutter_widget/widgets/alert.dart';
import 'package:flutter_widget/widgets/assetsImage.dart';
import 'package:flutter_widget/widgets/cardview/cardView.dart';
import 'package:flutter_widget/widgets/clip_r_rect.dart';
import 'package:flutter_widget/widgets/container.dart';
import 'package:flutter_widget/widgets/cupertinoDatePicker.dart';
import 'package:flutter_widget/widgets/cupertinoW.dart';
import 'package:flutter_widget/widgets/expaned.dart';
import 'package:flutter_widget/widgets/expansionTile.dart';
import 'package:flutter_widget/widgets/gridview/gridview.dart';
import 'package:flutter_widget/widgets/listview/listview.dart';
import 'package:flutter_widget/widgets/mediaQ.dart';
import 'package:flutter_widget/widgets/myDrawer.dart';
import 'package:flutter_widget/widgets/refreshPage.dart';
import 'package:flutter_widget/widgets/responsive_screen.dart';
import 'package:flutter_widget/widgets/richText.dart';
import 'package:flutter_widget/widgets/youtopPlayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<Widget> pages = [
    const Center(child: ContainerW()),
    const Center(child: ExpanedW()),
    Center(child: MyListView()),
    Center(child: MyClipRRect()),
    Center(child: MyAssetsImage()),
    Center(child: MyGridView()),
    Center(child: MyBottomAppBar()),
    Center(child: MycardViewPage()),
    Center(child: RefreshPage()),
    Center(child: MediaQPage()),
    Center(child: AlertPage()),
    Center(child: RichTextPage()),
    Center(child: MyCupertinoWidget()),
    Center(child: MyDatePicker()),
    Center(child: YoutopPlayer()),
    Center(child: ExpansiontilePage()),
    Center(child: ResponsiveScreen()),
    Center(child: CounterView()),
    Center(child: PostView()),
    Center(child: ContainerW()),
    Center(child: ContainerW()),
    Center(child: ContainerW()),
    Center(child: ContainerW()),
    Center(child: ContainerW()),
    Center(child: ContainerW()),
  ];
  List<Widget> tab = [
    const Text('Container'),
    const Text('Expaned'),
    const Text('ListView'),
    const Text('ClipRRect'),
    const Text('AssetsImage'),
    const Text('GridView'),
    const Text('BottomAppBar'),
    const Text('CardView'),
    const Text('RefreshPage'),
    const Text('MediaQuery'),
    const Text('Alert'),
    const Text('RichText'),
    const Text('CupertinoWidget'),
    const Text('DatePicker'),
    const Text('YoutobePlayer'),
    const Text('expansionTile'),
    const Text('responsiveScreen'),
    const Text('CounterView'),
    const Text('Api Post View'),
    const Text('contact'),
    const Text('contact'),
    const Text('contact'),
    const Text('contact'),
    const Text('contact'),
    const Text('contact'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home Page"),
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.label,
            controller: tabController,
            isScrollable: true,
            tabs: tab,
          )),
      drawer: MyDrawer(),
      body: TabBarView(
        physics: AlwaysScrollableScrollPhysics(),
        controller: tabController,
        children: pages,
      ),
      persistentFooterButtons: [
        TextButton(onPressed: () {}, child: Text('submit')),
        DropdownMenu(dropdownMenuEntries: [])
      ],
    );
  }
}
