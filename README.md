# Dart: Handling potential exceptions in JSON parsing

This repository demonstrates a common error in Dart when parsing JSON responses and provides a solution for robust error handling.  The `bug.dart` file shows the original code with potential exceptions. The `bugSolution.dart` file presents an improved version with proper error handling and null checks.  The issue lies in directly accessing elements in the JSON without verifying their existence or bounds, which can lead to runtime exceptions.