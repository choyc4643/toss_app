import 'package:flutter/material.dart';
import 'package:toss_app/text_style.dart';

class remittance extends StatefulWidget {
  const remittance({ Key? key }) : super(key: key);

  @override
  _remittanceState createState() => _remittanceState();
}

class _remittanceState extends State<remittance> {

    List<String> bankList = [
'bank_nonghyup.png',
'bank_KB.png',
'bank_kakaobank.png',
'bank_shinhan.png',
'bank_woori.png',
'bank_IBK.png',
'bank_hana.png',
'bank_saemaul.png',
    ];
    List<String> bankName = [
      'NH농협',
      'KB국민',
      '카카오뱅크',
      '신한',
      '우리',
      'IBK기업',
      '하나',
      '새마을'
    ];
    List<String> stockBankList = [
'bank_nonghyup.png',
'stock_hankook.png',
'bank_shinhan.png',
'bank_hana.png',
'stock_kiwoom.png',
'stock_mirae.png',
'bank_KB.png',
    ];
    List<String> stockBankName = [
      'NH투자',
      '한국투자',
      '신한금융투자',
      '하나금융',
      '키움',
      '미래에셋',
      'KB국민',
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.fromLTRB(25, 82, 0, 44),
          alignment: Alignment.centerLeft,
          child: Text('어디로 돈을 보낼까요?',
          style: heading4style()),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 8, 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                childAspectRatio: 103 / 87, 
                mainAxisSpacing: 8, 
                crossAxisSpacing: 8, 
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 103,
                  height: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      shape: BoxShape.rectangle, color: Colors.grey[100]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/'+bankList[index],
                        height: 26,
                        width: 26,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 11),
                        child: Text(bankName[index],
                        style: body3style(),),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 34, 0, 11),
            alignment: Alignment.centerLeft,
            child: Text(
              '증권사 선택',
              style: subtitle1style(),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: 7, 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, 
                childAspectRatio: 103 / 87, 
                mainAxisSpacing: 8, 
                crossAxisSpacing: 8,
              ),
              itemBuilder: (BuildContext context, int index) {

                return Container(
                  padding: EdgeInsets.only(top: 16),
                  width: 103,
                  height: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      shape: BoxShape.rectangle, color: Colors.grey[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/'+stockBankList[index],
                        height: 26,
                        width: 26,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 11),
                        child: Text(stockBankName[index],
                        style: body3style(),),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 103
          )
      ],),
    );
  }
}