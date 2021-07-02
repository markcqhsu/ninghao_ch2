import 'package:flutter/material.dart';
import './Demo/drawer_demo.dart';
import './Demo/bottom_navigation_demo.dart';
import './Demo/listview_demo.dart';
import './Demo/basic_demo.dart';
import './Demo/layout_demo.dart';
import './Demo/sliver_demo.dart';
import 'Demo/animation/animation_demo.dart';
import 'Demo/bloc/bloc_demo.dart';
import 'Demo/http/http_demo.dart';
import 'Demo/i18n/i18n_demo.dart';
import 'Demo/navigator_demo.dart';
import './Demo/form_demo.dart';
import './Demo/material_components.dart';
import 'Demo/rxdart/rxdart_demo.dart';
import 'Demo/state/state_management_demo.dart';
import './Demo/stream/stream_demo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './Demo/i18n/map/ninghao_demo_localization.dart';

void main() => runApp(
      App(), //自己定義的Widget
    );

class App extends StatelessWidget {
  final ColorScheme colorScheme = const ColorScheme(
    primary: Colors.black,
    // <---- I set white color here
    primaryVariant: Color(0xFF117378),
    secondary: Color.fromRGBO(3, 54, 255, 1.0),
    secondaryVariant: Color(0xFFFAFBFB),
    background: Color(0xFF636363),
    surface: Color(0xFF808080),
    onBackground: Colors.white,
    error: Colors.redAccent,
    onError: Colors.redAccent,
    onPrimary: Colors.redAccent,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  @override
  Widget build(BuildContext context) {
    //Widget build...這裡的Widget代表返回值
    return MaterialApp(
      // locale: Locale("en", "US"),//在應用裡面設定程式的語言和地區
      //決定程式的語言
      // localeResolutionCallback:
      //     (Locale? locale, Iterable<Locale> supportedLocales ) {
      //   return Locale("en", "US");//返回的值就是應用使用的設定
      // },

      //國際化
      //localizationsDelegates這個列表裡面會去生成一些本地化的值
      localizationsDelegates: [
        NinghaoDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate, //會提供應用裡面Material本地化的字符串
        GlobalWidgetsLocalizations.delegate, //會提供小部件的文字方向,
      ],
      supportedLocales: [
        //設定應用支持的語言
        Locale("en", "US"),
        Locale("zh", "TW"),
      ],
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/i18n',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page2(title: "About title"),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
        // '/state-management':(context)=> StateManagementDemo(),
      },
      // home: Home(),
      // home: SliverDemo(),
      theme: ThemeData(
        primarySwatch: Colors.blue, //底部導航欄項目顏色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70, //水波紋效果
        // accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        colorScheme: colorScheme,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          //一般都會用在Scaffold裏面
          // leading: IconButton(
          //   icon: const Icon(Icons.menu),
          //   tooltip: "Navigation",
          //   onPressed: () => debugPrint("Navigation button is pressed"),
          // ),
          title: Text("塑蓋"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: "Search",
              onPressed: () => debugPrint("Search button is pressed"),
            ),
          ],
          elevation: 0.0,
          bottom: const TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        // body: ListViewDemo(),
        body: TabBarView(
          children: <Widget>[
            //----把第一個視圖換成ListViewDemo
            // Icon(
            //   Icons.local_florist,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            ListViewDemo(),

            //----把第二個視圖換成Basic_Demo
            // Icon(
            //   Icons.change_history,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            BasicDemo(),

            //----把第三個視圖換成Layout_Demo
            // Icon(
            //   Icons.directions_bike,
            //   size: 128.0,
            //   color: Colors.black12,
            // ),
            LayoutDemo(),

            // viewDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationDemo(),
      ),
    );
  }
}
