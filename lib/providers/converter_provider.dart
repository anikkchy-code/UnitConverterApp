import 'package:flutter/foundation.dart';
import '../models/unit_model.dart';

class ConverterProvider with ChangeNotifier {
  UnitCategory _selectedCategory = UnitCategory.length;
  String _fromUnit = 'Meter';
  String _toUnit = 'Kilometer';
  double _inputValue = 0.0;
  double _resultValue = 0.0;

  UnitCategory get selectedCategory => _selectedCategory;
  String get fromUnit => _fromUnit;
  String get toUnit => _toUnit;
  double get inputValue => _inputValue;
  double get resultValue => _resultValue;

  void setCategory(UnitCategory category) {
    _selectedCategory = category;
    _fromUnit = ConversionData.units[category]![0];
    _toUnit = ConversionData.units[category]![1];
    _inputValue = 0.0;
    _resultValue = 0.0;
    notifyListeners();
  }

  void setFromUnit(String unit) {
    _fromUnit = unit;
    _calculateConversion();
    notifyListeners();
  }

  void setToUnit(String unit) {
    _toUnit = unit;
    _calculateConversion();
    notifyListeners();
  }

  void setInputValue(double value) {
    _inputValue = value;
    _calculateConversion();
    notifyListeners();
  }

  void swapUnits() {
    final temp = _fromUnit;
    _fromUnit = _toUnit;
    _toUnit = temp;
    _calculateConversion();
    notifyListeners();
  }

  void _calculateConversion() {
    if (_selectedCategory == UnitCategory.length) {
      if (_fromUnit == 'Meter' && _toUnit == 'Kilometer') {
        _resultValue = _inputValue / 1000;
      } else if (_fromUnit == 'Kilometer' && _toUnit == 'Meter') {
        _resultValue = _inputValue * 1000;
      } else {
        _resultValue = _inputValue;
      }
    } else if (_selectedCategory == UnitCategory.weight) {
      if (_fromUnit == 'Gram' && _toUnit == 'Kilogram') {
        _resultValue = _inputValue / 1000;
      } else if (_fromUnit == 'Kilogram' && _toUnit == 'Gram') {
        _resultValue = _inputValue * 1000;
      } else {
        _resultValue = _inputValue;
      }
    } else if (_selectedCategory == UnitCategory.temperature) {
      if (_fromUnit == 'Celsius' && _toUnit == 'Fahrenheit') {
        _resultValue = (_inputValue * 9 / 5) + 32;
      } else if (_fromUnit == 'Fahrenheit' && _toUnit == 'Celsius') {
        _resultValue = (_inputValue - 32) * 5 / 9;
      } else {
        _resultValue = _inputValue;
      }
    }
  }
}
