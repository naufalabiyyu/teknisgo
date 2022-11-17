import 'package:flutter/material.dart';
import 'package:teknisigo/theme.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> choiceList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  const MultiSelectChip({
    super.key,
    required this.choiceList,
    this.onSelectionChanged,
    this.onMaxSelected,
    this.maxSelection,
  });

  @override
  State<MultiSelectChip> createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoice = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.choiceList.forEach(
      (item) {
        choices.add(
          Container(
            padding: const EdgeInsets.all(2.0),
            child: ChoiceChip(
              label: Text(
                item,
                style: TextStyle(
                  color: selectedChoice.contains(item)
                      ? Colors.white
                      : accentColor,
                ),
              ),
              padding: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              selected: selectedChoice.contains(item),
              selectedColor: primaryColor,
              backgroundColor: containerColor,
              onSelected: (selected) {
                if (selectedChoice.length == (widget.maxSelection ?? -1) &&
                    !selectedChoice.contains(item)) {
                  widget.onMaxSelected?.call(selectedChoice);
                } else {
                  setState(() {
                    selectedChoice.contains(item)
                        ? selectedChoice.remove(item)
                        : selectedChoice.add(item);
                    widget.onSelectionChanged?.call(selectedChoice);
                  });
                }
              },
            ),
          ),
        );
      },
    );

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
