```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing elements directly
      print(jsonData[0]['name']); // This might throw an error if jsonData is empty or the element doesn't have a 'name' property. 
      print(jsonData[10]['age']); // This might throw an error if the index is out of bounds
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```