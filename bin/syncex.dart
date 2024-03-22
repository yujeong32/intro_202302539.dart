import 'dart:io';

void weather() {
  Duration t = Duration(milliseconds: 1000);
  sleep(t);
  print('It is cloudy.');
}

void temp() {
  Duration t = Duration(milliseconds: 2000);
  sleep(t);
  print('It is 20 degrees.');
}

void dust() {
  Duration t = Duration(milliseconds: 1500);
  sleep(t);
  print('It is bad.');
}

void main() {
  int start = DateTime.now().millisecondsSinceEpoch;
  weather();
  temp();
  dust();
  int end = DateTime.now().millisecondsSinceEpoch;
  print(end - start);
}
