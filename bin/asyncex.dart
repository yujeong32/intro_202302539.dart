//import 'dart:io';

class Wrapper {
  int t1 = 0, t2 = 0, t3 = 0;
  String local = 'Somewhere';
  wrapper() {
    t1 = 0;
    t2 = 0;
    t3 = 0;
  }
}

Future<void> main() async {
  Wrapper wr = Wrapper();
  //weather(wr);
  //temp(wr);
  //dust(wr);
  //int start = DateTime.now().millisecondsSinceEpoch;
  await weather(wr);
  temp(wr);
  dust(wr);
  //int end = DateTime.now().millisecondsSinceEpoch;
  //print(end - start);
  //print('time : ${wr.t3 - wr.t1}');
}

String getLocal() {
  return 'Seoul';
}

Future<void> weather(Wrapper wr) async {
  wr.t1 = DateTime.now().millisecondsSinceEpoch;
  Duration time = Duration(milliseconds: 2500);
  return Future.delayed(time, () {
    wr.local = getLocal();
    print('${wr.local} is cloudy~ : ${wr.t1}');
  });
}

Future<void> temp(Wrapper wr) async {
  Duration time = Duration(milliseconds: 2000);
  return Future.delayed(time, () {
    wr.t2 = DateTime.now().millisecondsSinceEpoch;
    print('${wr.local} is 20 degrees... : ${wr.t2}');
  });
}

Future<void> dust(Wrapper wr) async {
  Duration time = Duration(milliseconds: 1500);
  return Future.delayed(time, () {
    wr.t3 = DateTime.now().millisecondsSinceEpoch;
    print('${wr.local} is BAD!!! : ${wr.t3}');
  });
}
