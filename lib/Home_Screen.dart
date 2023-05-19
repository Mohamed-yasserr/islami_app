import 'package:flutter/material.dart';
import 'package:islami/tabs/Ahadeth_tab.dart';
import 'package:islami/tabs/Radio_tab.dart';
import 'package:islami/tabs/Sebha_tab.dart';
import 'package:islami/tabs/Settings_tab.dart';
import 'package:islami/tabs/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget>tabs=[QuranTab(),SebhaTab(),RadioTab(),AhadethTab(),SettingTab()];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset(
          'assets/images/bg3.png',
          fit: BoxFit.fill,
        ),
      ),
      Scaffold(
        appBar: AppBar(
          title: Text("islami",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/quran.png')),
              label: 'quran',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/quran-quran-svgrepo-com.png')),
              label: 'Ahadeth',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/sebha.png')),
              label: 'Sebha ',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/radio.png')),
              label: 'Radio',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setteings',
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
        body: tabs[index],
        ),
        ]
    );
  }
}
