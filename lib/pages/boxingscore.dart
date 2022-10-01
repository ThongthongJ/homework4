import 'package:flutter/material.dart';

class Boxingscore extends StatefulWidget {
  const Boxingscore({Key? key}) : super(key: key);

  @override
  State<Boxingscore> createState() => _BoxingscoreState();
}

int _scoreRed = 9 ;
int _scoreBlue = 9;
int _sumRed = 0;
int _sumBlue = 0;
int _round = 0;

class _BoxingscoreState extends State<Boxingscore> {
  @override
  Widget build(BuildContext context) {
    print(_round);
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Color(0xFF880000),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/logo.png', width: 300),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Women's Light  (57 - 60 kg) Semi-final",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.black,
                  height: 25,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                color: Color(0xFFA00000),
                size: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/flag_ireland.png', scale: 10),
                      SizedBox(width: 10),
                      Text(
                        'IRELAND',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'HARRINGTON Kellie Anne',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.person,
                color: Color(0xFF0000A0),
                size: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/flag_thailand.png', scale: 10),
                      SizedBox(width: 10),
                      Text(
                        'THAILAND',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'SEESONDEE Sudaporn',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(color: Color(0xFFA00000), height: 5),
              ),
              Expanded(
                child: Container(color: Color(0xFF0000A0), height: 5),
              ),
            ],
          ),
          SizedBox(height: 20),
          // score board

          Column(
            children: [
              Text(
                'ROUND 1',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$_scoreRed',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '$_scoreBlue',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Divider(
                color: Color(0xCD949494),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'ROUND 2',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$_scoreRed',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '$_scoreBlue',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Divider(
                color: Color(0xCD949494),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'ROUND 3',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$_scoreRed',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '$_scoreBlue',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Divider(
                color: Color(0xCD949494),
              ),
            ],
          ),
          SizedBox(height: 10), // score board TOTAL
          Column(
            children: [
              Text(
                'TOTAL',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$_sumRed',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '$_sumBlue',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Divider(
                color: Color(0xCD949494),
              ),
            ],
          ),
          _round == 3 ? _resetButton() : _scoreButton(),
        ],
      ),
    );
  }

  Widget _scoreButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            //RED
            onPressed: () {
              _round++;
              setState(() {
                _sumRed += _scoreRed + 1;
                _sumBlue += 9;
              });
            },
            child: Icon(Icons.person),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFA00000),
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: ElevatedButton(
            //Blue
            onPressed: () {
              _round++;
              setState(() {
                _sumBlue += _scoreBlue + 1;
                _sumRed += 9;
              });
            },
            child: Icon(Icons.person),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF0000A0),
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _resetButton() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                if (_round == 3) {
                  _sumRed = 0;
                  _sumBlue = 0;
                  _round = 0;
                }
              });
            },
            child: Icon(Icons.clear),
            style: ElevatedButton.styleFrom(
              primary: Color(0xCD949494),
              padding: EdgeInsets.symmetric(vertical: 20),
            ),
          ),
        ),
      ],
    );
  }
}