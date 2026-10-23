enum UnitCategory { length, weight, temperature }

class ConversionData {
  static const Map<UnitCategory, List<String>> units = {
    UnitCategory.length: ['Meter', 'Kilometer'],
    UnitCategory.weight: ['Gram', 'Kilogram'],
    UnitCategory.temperature: ['Celsius', 'Fahrenheit'],
  };
}
