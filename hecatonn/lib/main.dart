import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:toast/toast.dart';

void main() => runApp(App());



class App extends StatelessWidget {

  final pages = [
    PageViewModel(
        pageColor: const Color(0xFFFFFFFF),

        bubble: Image.asset('assets/images/heyecanlı.jpg'),
        body: Text(
          'Hadi mülakat öncesi stresini alalım',
        ),
        title: Text(
          'Mülakata Hazırlık',
        ),
        titleTextStyle:
            TextStyle(fontFamily: 'MyFont', color: Colors.black, fontSize: 30),
        bodyTextStyle:
            TextStyle(fontFamily: 'MyFont', color: Colors.black, fontSize: 30),
        mainImage: Image.asset(
          'assets/images/heyecanlı.jpg',
          height: 280.0,
          width: 280.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFFFFFFFF),
      iconImageAssetPath: 'assets/images/sakin.jpg',
      body: Text(
        'Mülakatınla alakalı bu soruları görerek heyecanını azaltabilirsin ',
      ),
      title: Text('Mülakata Hazırlık'),
      mainImage: Image.asset(
        'assets/images/sakin.jpg',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle:
          TextStyle(fontFamily: 'MyFont', color: Colors.black, fontSize: 30),
      bodyTextStyle:
          TextStyle(fontFamily: 'MyFont', color: Colors.black, fontSize: 25),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mülakata Hazırlık', 
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Questions(),
              ), 
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
          ),
        ), 
      ), 
    ); 
  }
}

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  dynamic selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  final List<String> sorular = [
    "Aşşağıdakilerin hangisi web sayfasının içeriğini 'Hello World' ile değiştirir ?",
    "Aşağıdakilerin hangisi inline bir elemandır ? ",
    "Document objesi hangi objenin bir elemandır ?",
    "Aşağıdakilerin hangisi bir JavaScript objesi değildir ?",
    "What does \$ represents in dom",
    "Aşağıdakilerin hangisi true döner ? ",
    "Aşağıdakilerin hangisi arr arrayinin son elemanını döndürür ?",
    "Aşağıdakilerin hangisi bir callback fonksiyonun görevini en iyi açıklar ?",
    "Aşağıdakilerin hangisi box modelinin içeriden dışarıya sıralamasıdır ?",
    "Frontend Developer olarak çalışsanız aşağıdaki tech stacklerden sizi en çok hangisi memnun ederdi ?",
  ];
  final List<String> cevaplar = [
    "document.body.innerHTML = 'HELLO WORLD';",
    "<div>",
    "Window",
    "var obj = {name= 'Steve'};",
    "Bir String",
    "'hello' === 'hello'",
    "arr[arr.lenght-1]",
    "Başka bir fonksiyon çağırmak",
    "content, padding, border, margin",
    "HTML, JavaScript, CSS, jQuery, React.js",
  ];
  final List<dynamic> siklar = [
    [
      "document.innerHTML('HELLO WORLD');",
      "document.body.html = 'HELLO WORLD';",
      "document.body.innerHTML = 'HELLO WORLD';",
      "document.innerHTML = 'HELLO WORLD';"
    ],
    ["<p>", "<strong>", "<section>", "<div>"],
    ["Tree", "System", "Window", "Hiçbiri"],
    [
      "var obj = {};",
      "var obj = {name: 'Steve'};",
      "var obj = {name= 'Steve'};",
      "var obj = new Object();"
    ],
    ["Bir fonksiyon", "jQuery", "Bir String", "Hiçbir şey"],
    ["5 == 5", "5 === '5'", "'hello' === 'hello'", "Hepsi"],
    ["arr[arr.lenght]", "arr[arr.lenght-1]", "arr[arr.lenght+1]", "arr[last]"],
    [
      "Belirli olaylar sonucu belli bir kod çalıştırmak",
      "Dom eventlerini tetiklemek",
      "Başka bir fonksiyon çağırmak",
      "Asenkron isteklerle senkron çalışabilmek"
    ],
    [
      "margin, border, padding, content",
      "content, padding, border, margin",
      "border, margin, content, padding",
      "padding, content, margin, border"
    ],
    [
      "Figma, Photoshop, HTML, CSS",
      "HTML, JavaScript, CSS, jQuery, React.js",
      "HTML, CSS, Python, React.js",
      "HTML, JAVA, C#"
    ],
  ];
  dynamic puan = 0;
  dynamic isaretle(int a) {
    print(puan);
    if (a == 0) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 1) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 2) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 3) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 4) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 5) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 6) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 7) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 8) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
      }
    } else if (a == 9) {
      if (cevaplar[a] == selectedRadio) {
        puan += 1;
        print(puan);
        Toast.show("puanınız $puan", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      } else {
        Toast.show("puanınız $puan", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      }
    }
  }

  Timer _timer;
  int seconds = 59;
  int minutes = 14;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (seconds < 0) {
            Toast.show("Süreniz bitmiştir", context,
                duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
          } else {
            seconds = seconds - 1;
            if (seconds < 0) {
              minutes -= 1;
              seconds = 59;
              if (minutes < 0) {
                Toast.show("Süreniz Bitmiştir", context,
                    duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                timer.cancel();
              }
            }
          }
        },
      ),
    );
  }

  setSelectedRadio(dynamic val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Front-End Web Developer", style: TextStyle(fontSize: 18)),
        actions: <Widget>[
          Text("$minutes:$seconds", style: TextStyle(fontSize: 20)),
          SizedBox(width: 35),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Konular'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Front-End Web Developer'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Back-End Web Developer'),
              onTap: () {
              },
            ),
            ListTile(
              title: Text('Mobile Developer'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Container(
              width: 500,
              height: 530,
              padding: new EdgeInsets.all(10.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 40),
                    Text(
                      "${sorular[i]}",
                      style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
                    ),
                    SizedBox(height: 130),
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      ListTile(
                        title: Text(
                          "${siklar[i][0]}",
                        ),
                        leading: Radio(
                          value: "${siklar[i][0]}",
                          groupValue: selectedRadio,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setSelectedRadio(val);
                            isaretle(i);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("${siklar[i][1]}"),
                        leading: Radio(
                          value: "${siklar[i][1]}",
                          groupValue: selectedRadio,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setSelectedRadio(val);
                            isaretle(i);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("${siklar[i][2]}"),
                        leading: Radio(
                          value: "${siklar[i][2]}",
                          groupValue: selectedRadio,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setSelectedRadio(val);
                            isaretle(i);
                          },
                        ),
                      ),
                      ListTile(
                        title: Text("${siklar[i][3]}"),
                        leading: Radio(
                          value: "${siklar[i][3]}",
                          groupValue: selectedRadio,
                          activeColor: Colors.green,
                          onChanged: (val) {
                            setSelectedRadio(val);
                            isaretle(i);
                          },
                        ),
                      )
                    ])
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


