import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const inActiveColor0 = Colors.pink;
const inActiveColorX = Colors.pink;
Color inActivColor = Colors.white;

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int count = 1;

  int box_one = 1;
  int box_two = 2;
  int box_three = 3;
  int box_four = 4;
  int box_five = 5;
  int box_six = 6;
  int box_seven = 7;
  int box_eight = 8;
  int box_nine = 9;

  String? value_one = " ";
  String? value_two = " ";
  String? value_three = " ";
  String? value_four = " ";
  String? value_five = ' ';
  String? value_six = ' ';
  String? value_seven = ' ';
  String? value_eight = ' ';
  String? value_nine = ' ';

  bool _firstPress_one = false;
  bool _firstPress_two = false;
  bool _firstPress_three = false;
  bool _firstPress_four = false;
  bool _firstPress_five = false;
  bool _firstPress_six = false;
  bool _firstPress_seven = false;
  bool _firstPress_eight = false;
  bool _firstPress_nine = false;
  String turn = "0's turn";

  @override
  Widget build(BuildContext context) {
    if (count % 2 == 0) {
      turn = " X's turn";
    } else {
      turn = " 0's turn";
    }
    void initialCondidtion() {
      count = 1;

      box_one = 1;
      box_two = 2;
      box_three = 3;
      box_four = 4;
      box_five = 5;
      box_six = 6;
      box_seven = 7;
      box_eight = 8;
      box_nine = 9;

      value_one = " ";
      value_two = " ";
      value_three = " ";
      value_four = " ";
      value_five = ' ';
      value_six = ' ';
      value_seven = ' ';
      value_eight = ' ';
      value_nine = ' ';

      _firstPress_one = false;
      _firstPress_two = false;
      _firstPress_three = false;
      _firstPress_four = false;
      _firstPress_five = false;
      _firstPress_six = false;
      _firstPress_seven = false;
      _firstPress_eight = false;
      _firstPress_nine = false;
    }

    void reset() {
      initialCondidtion();
      Alert(
        context: context,
        title: "Tic Tac Toe",
        desc: "Game Reset",
        image: Image.asset('images/reset.jpg'),
        buttons: [
          DialogButton(
            child: Text(
              "PLAY AGAIN",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
    }

    void checkWinnerForZero() {
      if (box_one == box_two && box_one == box_three && box_one == 0 ||
          box_four == box_five && box_five == box_six && box_four == 0 ||
          box_seven == box_eight && box_eight == box_nine && box_seven == 0 ||
          box_one == box_four && box_four == box_seven && box_one == 0 ||
          box_two == box_five && box_five == box_eight && box_two == 0 ||
          box_three == box_six && box_six == box_nine && box_three == 0 ||
          box_one == box_five && box_five == box_nine && box_one == 0 ||
          box_three == box_five && box_five == box_seven && box_three == 0) {
        Alert(
          context: context,
          title: "winner",
          image: Image.asset('images/zero.jpg'),
          buttons: [
            DialogButton(
              child: Text(
                "PLAY AGAIN",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        initialCondidtion();
      }
    }

    void checkWinnerForX() {
      if (box_one == box_two && box_one == box_three && box_one == 1 ||
          box_four == box_five && box_five == box_six && box_four == 1 ||
          box_seven == box_eight && box_eight == box_nine && box_seven == 1 ||
          box_one == box_four && box_four == box_seven && box_one == 1 ||
          box_two == box_five && box_five == box_eight && box_two == 1 ||
          box_three == box_six && box_six == box_nine && box_three == 1 ||
          box_one == box_five && box_five == box_nine && box_one == 1 ||
          box_three == box_five && box_five == box_seven && box_three == 1) {
        Alert(
          context: context,
          title: "winner",
          image: Image.asset('images/x.jpg'),
          buttons: [
            DialogButton(
              child: Text(
                "PLAY AGAIN",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();

        initialCondidtion();
      }
    }

    void restart(int counter) {
      if (counter == 10) {
        Alert(
          context: context,
          title: "Tic Tac Toe",
          desc: "Game Draw",
          image: Image.asset('images/draw.png'),
          buttons: [
            DialogButton(
              child: Text(
                "PLAY AGAIN",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();

        initialCondidtion();
      }
    }

    return Scaffold(
      backgroundColor: Colors.teal.shade500,
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/f');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),

                    child: Text('Mudasir Pandith',
                    style: knameStyle,),
                  )),
            ],
          ),
        ),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
                flex: 1,
                child: Text(
                  turn,
                  style: kTurnTextStyle,
                )),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButton(
                      symbol_value: value_one,
                      colour: inActivColor,
                      onPressed: _firstPress_one
                          ? null
                          : () {
                              setState(() {
                                _firstPress_one = true;
                                count++;

                                if (count % 2 == 0) {
                                  box_one = 0;
                                  value_one = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_one = 1;
                                  value_one = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_two,
                      onPressed: _firstPress_two
                          ? null
                          : () {
                              setState(() {
                                _firstPress_two = true;
                                count++;

                                if (count % 2 == 0) {
                                  box_two = 0;
                                  value_two = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_two = 1;
                                  value_two = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_three,
                      onPressed: _firstPress_three
                          ? null
                          : () {
                              setState(() {
                                _firstPress_three = true;
                                count++;

                                if (count % 2 == 0) {
                                  box_three = 0;
                                  value_three = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_three = 1;
                                  value_three = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_four,
                      onPressed: _firstPress_four
                          ? null
                          : () {
                              setState(() {
                                _firstPress_four = true;
                                count++;
                                if (count % 2 == 0) {
                                  box_four = 0;
                                  value_four = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_four = 1;
                                  value_four = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_five,
                      onPressed: _firstPress_five
                          ? null
                          : () {
                              setState(() {
                                _firstPress_five = true;
                                count++;
                                if (count % 2 == 0) {
                                  box_five = 0;
                                  value_five = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_five = 1;
                                  value_five = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_six,
                      onPressed: _firstPress_six
                          ? null
                          : () {
                              setState(() {
                                _firstPress_six = true;
                                count++;
                                if (count % 2 == 0) {
                                  box_six = 0;
                                  value_six = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_six = 1;
                                  value_six = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_seven,
                      onPressed: _firstPress_seven
                          ? null
                          : () {
                              setState(() {
                                _firstPress_seven = true;
                                count++;
                                if (count % 2 == 0) {
                                  box_seven = 0;
                                  value_seven = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_seven = 1;
                                  value_seven = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      colour: inActivColor,
                      symbol_value: value_eight,
                      onPressed: _firstPress_eight
                          ? null
                          : () {
                              setState(() {
                                _firstPress_eight = true;
                                count++;

                                if (count % 2 == 0) {
                                  box_eight = 0;
                                  value_eight = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_eight = 1;
                                  value_eight = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                    myButton(
                      symbol_value: value_nine,
                      colour: inActivColor,
                      onPressed: _firstPress_nine
                          ? null
                          : () {
                              setState(() {
                                _firstPress_nine = true;
                                count++;
                                if (count % 2 == 0) {
                                  box_nine = 0;
                                  value_nine = '0';
                                  inActivColor = inActiveColor0;
                                  checkWinnerForZero();
                                } else {
                                  box_nine = 1;
                                  value_nine = 'X';
                                  inActivColor = inActiveColorX;
                                  checkWinnerForX();
                                }
                                restart(count);
                              });
                              print('heko');
                            },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(2.0),
            child: SizedBox(
              width: double.infinity,
              height: 100.0,
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    reset();
                  });
                },
                color: Colors.teal,
                child: Text(
                  'Reset Game',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class myButton extends StatelessWidget {
  myButton({this.symbol_value, this.onPressed, this.colour});

  final String? symbol_value;
  final VoidCallback? onPressed;
  final Color? colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
      ),
      child: SizedBox(
        width: 120.0,
        height: 120.0,
        child: RaisedButton(
          disabledColor: colour,
          color: Colors.green,
          onPressed: onPressed,
          child: Text(
            symbol_value.toString(),
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
