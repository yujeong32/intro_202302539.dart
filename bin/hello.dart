import 'dart:io';
import 'package:basic_project/basic_project.dart' as basic_project;

void main(List<String> arguments) {
  print('Hello world: ${basic_project.calculate()}!');
  print(arguments);

  stdout.write('Press any key if you want to close.');
  stdin.readLineSync();
}
