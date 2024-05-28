import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlanCard extends StatelessWidget {
  final String time1, minute1, time2, minute2, planName, member1;
  final String? member2, member3, member4;
  final Color color;
  const PlanCard(
      {super.key,
      required this.planName,
      required this.time1,
      required this.minute1,
      required this.time2,
      required this.minute2,
      required this.color,
      required this.member1,
      this.member2,
      this.member3,
      this.member4});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color,
      ),
      height: 180,
      width: 450,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //젤 왼쪽 시간
                Column(
                  children: [
                    Text(
                      time1,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      minute1,
                      style: const TextStyle(fontSize: 10),
                    ),
                    const Text("|"),
                    Text(
                      time2,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      minute2,
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                          strutStyle: const StrutStyle(fontSize: 40),
                          text: TextSpan(
                            text: planName,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 40,
                ),
                Text(
                  member1,
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(width: 15),
                Text(member2 ?? ""),
                const SizedBox(width: 15),
                Text(member3 ?? ""),
                const SizedBox(width: 15),
                Text(member4 ?? ""),
              ],
            )
          ],
        ),
      ),
    );
  }
}
