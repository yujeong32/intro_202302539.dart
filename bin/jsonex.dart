import 'dart:convert';

void main() {
  print("JSON -> array");
  jsonDecoding();
  print("array -> JSON");
  jsonEncoding();
}

// JSON -> array
void jsonDecoding() {
// NOTE: Be sure to use double quotes ("),
// not single quotes ('), inside the JSON string.
// This string is JSON, not Dart.
  var jsonString = '''
  [
    {"score1": 40},
    {"score2": 80}
  ]
''';

  print("JSON");
  print(jsonString);

  var scores = jsonDecode(jsonString); // dart:convert Function

  print("ARRAY");
  print(scores);

  print("ARRAY:Map(0)");
  Map firstScore = scores[0];
  print(firstScore);
  print("ARRAY:Map(key, value)");
  print('${firstScore.keys}, ${firstScore.values}');
}

// array -> JSON
void jsonEncoding() {
  var scores = [
    {'score': 40},
    {'score': 80},
    {'score': 100, 'overtime': true, 'special_guest': null}
  ];

  print("ARRAY");
  print(scores);

  var jsonText = jsonEncode(scores); // dart:convert Function

  print("JSON");
  print(jsonText);
}
