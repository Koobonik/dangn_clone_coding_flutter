import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'model/goods.dart';

void main() {
  runApp(const MyApp());
}

List<Goods> list = [
  Goods(id: 1, title: "밀리터리 야전 백1", description: "description", createdAt: "2021-12-19 17:10:00", imageList: ['http://fuhrer1.godo.co.kr/shop/data/goods/1308988824_m_0.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백2", description: "description", createdAt: "2021-12-17 04:10:00", imageList: ['https://image.production.fruitsfamily.com/public/product/resized%40width1125/cTfX6sCrm8-Screenshot_20210326-033911_Instagram.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백3", description: "description", createdAt: "2021-12-13 12:10:00", imageList: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmf4JIU_YLMtfEMkZ-ouJg8gXfygIaUvAqxA&usqp=CAU'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백1", description: "description", createdAt: "2021-12-19 17:10:00", imageList: ['http://fuhrer1.godo.co.kr/shop/data/goods/1308988824_m_0.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백2", description: "description", createdAt: "2021-12-17 04:10:00", imageList: ['https://image.production.fruitsfamily.com/public/product/resized%40width1125/cTfX6sCrm8-Screenshot_20210326-033911_Instagram.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백3", description: "description", createdAt: "2021-12-13 12:10:00", imageList: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmf4JIU_YLMtfEMkZ-ouJg8gXfygIaUvAqxA&usqp=CAU'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백1", description: "description", createdAt: "2021-12-19 17:10:00", imageList: ['http://fuhrer1.godo.co.kr/shop/data/goods/1308988824_m_0.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백2", description: "description", createdAt: "2021-12-17 04:10:00", imageList: ['https://image.production.fruitsfamily.com/public/product/resized%40width1125/cTfX6sCrm8-Screenshot_20210326-033911_Instagram.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백3", description: "description", createdAt: "2021-12-13 12:10:00", imageList: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmf4JIU_YLMtfEMkZ-ouJg8gXfygIaUvAqxA&usqp=CAU'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백1", description: "description", createdAt: "2021-12-19 17:10:00", imageList: ['http://fuhrer1.godo.co.kr/shop/data/goods/1308988824_m_0.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백2", description: "description", createdAt: "2021-12-17 04:10:00", imageList: ['https://image.production.fruitsfamily.com/public/product/resized%40width1125/cTfX6sCrm8-Screenshot_20210326-033911_Instagram.jpg'], price: 100000, location: "경기도 의정부시"),
  Goods(id: 1, title: "밀리터리 야전 백3", description: "description", createdAt: "2021-12-13 12:10:00", imageList: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmf4JIU_YLMtfEMkZ-ouJg8gXfygIaUvAqxA&usqp=CAU'], price: 100000, location: "경기도 의정부시"),


];
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.red,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0.4),
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.orange,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(_counter);
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  final List<String> _valueList = ['서울', '인천', '수원', '대전', '대구', '광주', '부산'];
  String _selectedValue = '서울';


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
        centerTitle: false,
        title : DropdownButton(
          icon: const Icon(Icons.keyboard_arrow_down),
          elevation: 0,
          underline: const SizedBox.shrink(),
          value: _selectedValue, items: _valueList.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedValue = value as String;
            });
          },),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search,),
          ),

          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu),
          ),

          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications_none_outlined),
          )
        ],
      )
      ,
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView.builder(
          itemCount: list.length,
            itemBuilder: (context1, index){
          return Padding(
            padding: const EdgeInsets.only( right: 15.0, left: 15.0, bottom: 12),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: list[index].imageList.first,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(list[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,

                            ),
                          ),
                          const SizedBox(height: 8),
                          Text("${list[index].location} : ${list[index].createdAt}", style:const  TextStyle(
                            color: Colors.grey,
                            fontSize: 11
                          ),),
                          const SizedBox(height: 8),
                          Text("${NumberFormat("###,###,###,###").format(list[index].price)}원", style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15
                          ),)


                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                if(index != list.length -1)
                const Divider(height: 1, thickness: 0.2, color: Colors.grey,)
              ],
            ),
          );
        })
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: Colors.white, size: 40,),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
