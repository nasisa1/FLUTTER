void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  var avg = <String, double>{};
  for (var student in students) {
    var scores = student['scores'] as List<int>;
    var average = scores.reduce((a, b) => a + b) / scores.length;
    avg[student['name']] = double.parse(average.toStringAsFixed(2));
  }

  var sorted = avg.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  print('{');
  for (var entry in sorted) {
    print('  "${entry.key}": ${entry.value},');
  }
  print('}');
}
