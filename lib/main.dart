import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterchallenge_0528/widget/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Column(
              children: [
                // 아바타
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/cat.jpg'),
                      ),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    )
                  ],
                ),
                const SizedBox(height: 25),
                //달력 옆으로 스크롤 되면 더 좋음
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "화요일",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.85)),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '28',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.58)),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                              "오늘",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 40),
                            ),
                            const SizedBox(width: 12),
                            Icon(
                              Icons.fiber_manual_record,
                              color: Colors.blue.shade500,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              "내일",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 30),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "모래",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 30),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "글피",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 30),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "사흘",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 30),
                            ),
                            const SizedBox(width: 20),
                            Text(
                              "나흘",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.85),
                                  fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                //카드들
                const Column(
                  children: [
                    PlanCard(
                        planName: "와아아아웅 자동으로 두줄도 된다아",
                        time1: "11",
                        minute1: "22",
                        time2: "12",
                        minute2: "44",
                        member1: "윤대선",
                        color: Colors.yellow),
                    SizedBox(height: 15),
                    PlanCard(
                      planName: "근데 이거 Fade적용이 왜안되징",
                      time1: "05",
                      minute1: "28",
                      time2: "06",
                      minute2: "29",
                      color: Colors.blue,
                      member1: "주스",
                      member2: "보라",
                      member3: "기선?",
                      member4: "대빌",
                    ),
                    SizedBox(height: 15),
                    PlanCard(
                      planName: "카드 위에것도 진짜 달력 데이터로 하고싶은데",
                      time1: "05",
                      minute1: "28",
                      time2: "06",
                      minute2: "29",
                      color: Colors.green,
                      member1: "주스",
                      member4: "대빌",
                    ),
                    SizedBox(height: 15),
                    PlanCard(
                      planName: "아오 어렵다 어려워",
                      time1: "04",
                      minute1: "11",
                      time2: "06",
                      minute2: "6",
                      color: Colors.amber,
                      member1: "주스",
                      member2: "대선",
                      member3: "보라",
                      member4: "기선?",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
