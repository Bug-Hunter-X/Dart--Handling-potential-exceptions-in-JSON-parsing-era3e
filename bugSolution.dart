```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      //Safe access using if condition
      if(jsonData.isNotEmpty && jsonData[0].containsKey('name')){
        print(jsonData[0]['name']);
      }else{
        print("Element not found");
      }

      // Use a try-catch block to handle potential exceptions
      try {
        if(jsonData.length > 10 && jsonData[10].containsKey('age')){
          print(jsonData[10]['age']);
        } else {
          print("Index out of bounds or key not found");
        }
      } catch (e) {
        print('Error accessing element at index 10: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```