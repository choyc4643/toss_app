import 'package:flutter/material.dart';
import 'remittance.dart';
import 'colors.dart';
import 'text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toss App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TossApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> pList = [
    'assets/KB_bankcom.png',
    'assets/shinhan_bankcom.png',
    'assets/hana_bankcom.png',
    'assets/woori_bankcom.png',
    'assets/BC_bankcom.png',
    'assets/samsung_bankcom.png',
    'assets/lotte_bankcom.png',
    'assets/hyundai_bankcom.png',
    'assets/citi_bankcom.png',
  ];
  int _selectedIndex = 0;
  String userName = 'YC';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: grey[200],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),        )
        ),
        
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedFontSize:11,
            unselectedFontSize:11,
            unselectedItemColor:Colors.grey[400],
            selectedItemColor: Colors.grey[900],
            iconSize:20,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index){
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                title: Text('홈'),
                icon: ImageIcon(
                  AssetImage('assets/bottombar_home.png')
                ) 
              ),
              BottomNavigationBarItem(
                title: Text('혜택'),
                icon: ImageIcon(
                  AssetImage('assets/bottombar_dia.png')
                ) 
              ),
              BottomNavigationBarItem(
                title: Text('송금'),
                icon: ImageIcon(
                  AssetImage('assets/bottombar_send.png')
                ) 
              ),
              BottomNavigationBarItem(
                title: Text('주식'),
                icon: ImageIcon(
                  AssetImage('assets/bottombar_stock.png')
                ) 
              ),
              BottomNavigationBarItem(
                title: Text('전체'),
                icon: ImageIcon(
                  AssetImage('assets/bottombar_menu.png')
                ) 
              )
            ],
            ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffECF5FE),
              Color(0xffF3F4F6),
            ],
          )
        ),
        child: ListView(children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              appBarSection(),
              cardSection(),
              const SizedBox(
                height: 12,
              ),
              accountSection(),
              const SizedBox(
                height: 12,
              ),
              consumptionSection(),
              const SizedBox(
                height: 12,
              ),
              extraList(),
              const SizedBox(
                height: 41,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 160),
                child: Text(
                  '편집 · 금액 숨기기',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Container extraList() => Container(
        margin: EdgeInsets.only(left: 20),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 121,
              height: 162,
              child: Column(
                children: [
                  Container(
                    // alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: Text(
                        '1분 만에',
                        // textAlign: TextAlign.left,
                        style: subtitle2style(),
                      )),
                  Container(
                      // margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: Text(
                        '내 보험\n전부 조회',
                        style: 
                            body2style(),
                            ),
                      ),
                  Container(
                    margin: EdgeInsets.fromLTRB(40, 16, 10, 20),
                    child: Image.asset(
                      'assets/home_inspector.png',
                      height: 33,
                      width: 33,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 121,
              height: 162,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: Text(
                        '혜택 주는',
                         style: subtitle2style(),
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: Text(
                        '차 보험료\n조회',
                        style: body2style(),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(70, 16, 10, 20),
                    child: Image.asset(
                      'assets/home_car.png',
                      height: 33,
                      width: 33,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 121,
              height: 162,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: Text(
                        '자주',
                        style: subtitle2style()
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: Text(
                        '돈 같이\n모으기',
                        style: body2style(),
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(70, 16, 10, 20),
                    child: Image.asset(
                      'assets/home_people.png',
                      height: 33,
                      width: 33,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 121,
              height: 162,
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 23, 0, 0),
                      child: Text(
                        '인기',
                        style: subtitle2style(),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        '더보기',
                        style: body2style(),
                      )),
                ],
              ),
            ),
          ],
        ),
      );

  Container consumptionSection() {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        width: 341,
        height: 163,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(26, 26, 26, 26),
              alignment: Alignment.centerLeft,
              child: Text(
                '소비',
                style: heading7style(),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(28, 0, 20, 0),
                  // padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                  width: 34,
                  height: 49,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[100]),
                  child: Image.asset(
                    'assets/card.png',
                    height: 26,
                    width: 26,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 100,
                      child: Text(
                        '이번 달 쓴 금액',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 100,
                      child: Text(
                        '40,700원',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                // Expanded(child: SizedBox(height: 42)),
                Container(
                  padding: EdgeInsets.only(right: 25, left: 49),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        minimumSize: Size(54, 33),
                        primary: Colors.grey[100],
                        textStyle: TextStyle(color: Colors.black)),
                    onPressed: () {},
                    child: const Text(
                      '내역',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Container accountSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 341,
      height: 306,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
                child: Text(
                  '계좌',
                  style: heading7style(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 33, 35, 0),
                  child: Icon(Icons.arrow_right_rounded))
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25, 25, 20, 0),
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: lightPrimary2),
                child: Image.asset(
                  'assets/woori_bankcom.png',
                  height: 26,
                  width: 26,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '우리은행 계좌',
                      style: subtitle2style(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '잔액보기',
                      style:  body2style(),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 25, left: 49),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                      minimumSize: Size(54, 33),
                      primary: Colors.grey[100],
                      textStyle: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const remittance()));
                  },
                  child: Text(
                    '송금',
                    style: subtitle2style(color: black),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25, 25, 20, 0),
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                width: 42,
                height: 42,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: logo),
                child: Image.asset(
                  'assets/account_toss.png',
                  height: 26,
                  width: 26,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '토스머니',
                      style: subtitle2style(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '1,924원',
                      style:  body2style(),
                    ),
                  ),
                ],
              ),
              // Expanded(child: SizedBox(height: 42)),
              Container(
                padding: EdgeInsets.only(right: 25, left: 49),
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(54, 33),
                      primary: Colors.grey[100],
                      textStyle: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const remittance()));
                  },
                  child: Text(
                    '송금',
                    style: subtitle2style(color: black),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(25, 25, 20, 0),
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                width: 42,
                height: 42,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: logo),
                child: Image.asset(
                  'assets/account_toss.png',
                  height: 26,
                  width: 26,
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '토스 투자증권 계좌',
                      style: subtitle2style(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 103,
                    child: Text(
                      '2,866원',
                      style: body2style(),
                    ),
                  ),
                ],
              ),
              // Expanded(child: SizedBox(height: 42)),
              Container(
                padding: EdgeInsets.only(right: 25, left: 49),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      minimumSize: Size(54, 33),
                      primary: Colors.grey[100],
                      textStyle: TextStyle(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const remittance()));
                  },
                  child: Text(
                    '송금',
                    style: subtitle2style(color: black),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container cardSection() {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 341,
      height: 498,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 33, 0, 29),
            // padding: const EdgeInsets.fromLTRB(25, 33, 0, 9),
            alignment: Alignment.centerLeft,
            child: Text(
              '$userName님,\n어떤 카드 쓰세요?',
              style: heading5style(),
            ),
          ),
          Container(
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 9, //item 개수
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1 / 1, //item 의 가로 1, 세로 2 의 비율
                mainAxisSpacing: 25, //수평 Padding
                crossAxisSpacing: 25, //수직 Padding
              ),
              itemBuilder: (BuildContext context, int index) {
                //item 의 반목문 항목 형성
                return Container(
                  // margin: EdgeInsets.fromLTRB(12.5, 12.5, 12.5, 12.5),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: 77,
                  height: 77,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[100]),
                  child: Image.asset(
                    pList[index],
                    height: 45,
                    width: 45,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            margin: EdgeInsets.fromLTRB(0, 21, 0, 0),
            alignment: Alignment.bottomCenter,
            child: TextButton(
              child: Text(
                '카드 안 써요',
                style: button2style(color: black),
                textAlign: TextAlign.center,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Row appBarSection() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(25, 34, 0, 34),
          height: 24,
          child: Image.asset('assets/logo_won.png'),
        ),
        Expanded(
          child: Container(
            height: 92,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 34, 26, 34),
          height: 24,
          child: Image.asset('assets/icon_QR.png'),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 34, 30, 34),
          height: 24,
          child: Image.asset('assets/icon_chat.png'),
        ),
      ],
    );
  }
}
