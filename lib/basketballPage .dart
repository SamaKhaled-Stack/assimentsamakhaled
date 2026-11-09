import 'package:flutter/material.dart';

class BasketBallPage extends StatefulWidget {
  BasketBallPage({super.key});

  @override
  State<BasketBallPage> createState() => _BasketBallPageState();
}

class _BasketBallPageState extends State<BasketBallPage> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("BasketBall", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
               
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text("$teamA", style: TextStyle(fontSize: 100)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 1;
                          });
                        },
                        child: Text("Add 1 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text("Add 2 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text("Add 3 Point"),
                      ),
                    ],
                  ),
                ),

                VerticalDivider(color: Colors.black, thickness: 1),

              
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text("$teamB", style: TextStyle(fontSize: 100)),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB += 1;
                          });
                        },
                        child: Text("Add 1 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text("Add 2 Point"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text("Add 3 Point"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                teamA = 0;
                teamB = 0;
              });
            },
            child: Text("Reset"),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}