import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/converter_provider.dart';
import '../../models/unit_model.dart';
import '../widgets/custom_dropdown.dart';
import '../widgets/swap_button.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ConverterProvider>(context);
    final units = ConversionData.units[provider.selectedCategory]!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit Converter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  label: const Text('Length'),
                  selected: provider.selectedCategory == UnitCategory.length,
                  onSelected: (selected) {
                    if (selected) provider.setCategory(UnitCategory.length);
                  },
                ),
                const SizedBox(width: 8),
                ChoiceChip(
                  label: const Text('Weight'),
                  selected: provider.selectedCategory == UnitCategory.weight,
                  onSelected: (selected) {
                    if (selected) provider.setCategory(UnitCategory.weight);
                  },
                ),
                const SizedBox(width: 8),
                ChoiceChip(
                  label: const Text('Temp'),
                  selected: provider.selectedCategory == UnitCategory.temperature,
                  onSelected: (selected) {
                    if (selected) provider.setCategory(UnitCategory.temperature);
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('Enter Value', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter value',
              ),
              onChanged: (value) {
                final val = double.tryParse(value) ?? 0.0;
                provider.setInputValue(val);
              },
            ),
            const SizedBox(height: 16),
            const Text('From', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            CustomDropdown(
              value: provider.fromUnit,
              items: units,
              onChanged: (val) {
                if (val != null) provider.setFromUnit(val);
              },
            ),
            const SizedBox(height: 8),
            Center(
              child: SwapButton(
                onPressed: () => provider.swapUnits(),
              ),
            ),
            const SizedBox(height: 8),
            const Text('To', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            CustomDropdown(
              value: provider.toUnit,
              items: units,
              onChanged: (val) {
                if (val != null) provider.setToUnit(val);
              },
            ),
            const SizedBox(height: 24),
            const Text('Result:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Text(
                '${provider.resultValue.toStringAsFixed(4)} ${provider.toUnit}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
