import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());          // Myapp 실행
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {      // 여기에 코드 짜기 시작

      return MaterialApp(     // 이 위에는 형식적인 거고 여기에다가 기본적인 메인 화면을 짜면 됨
        home: Scaffold(       // 앱을 상중하로 나눠 주는 위젯 -> 거의 다 상중하로 나뉘어져 있음!
          appBar: AppBar(title: Text('ㅎㅇㅎㅇ')),   // 상단에 들어갈 위젯
          body: Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: double.infinity, height: 50, 
                    decoration: BoxDecoration(          // 섬세한 박스 디자인 -> decoration
                      border: Border.all(color: const Color.fromARGB(255, 201, 73, 73))
                    ),
                ),
                Text(
                  'ㅎㅇㅎㅇ',
                  style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ElevatedButton(  
                  child: Text('글자'),
                  onPressed: (){},
                  )
              ],
            ),
          ),                                  // 중단에 들어갈 위젯
          bottomNavigationBar: BottomAppBar( 
            child: SizedBox(         // Row를 Container라는 위젯으로 싸맴. height를 줄 수 있음, Container, SizedBox 똑같음. width, height, child만 필요한 경우엔 SizedBox
              height: 70,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround, 
                children: [
                  Icon(Icons.question_mark),
                  Icon(Icons.task_alt),
                  Icon(Icons.settings)
                  ],
                ),
            )
            ), 
          )   // 하단에 들어갈 위젯 
          // 위젯 <div/> 같은 느낌... 대문자로 시작하고 괄호가 있으면 다 위젯임
      );
  }
}
