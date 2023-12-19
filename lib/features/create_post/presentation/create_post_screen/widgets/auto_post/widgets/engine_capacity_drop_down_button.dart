import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/spaces.dart';

class EngineCapacityDropDownButton extends StatefulWidget {
  const EngineCapacityDropDownButton({super.key});

  @override
  State<EngineCapacityDropDownButton> createState() =>
      _EngineCapacityDropDownButtonState();
}

class _EngineCapacityDropDownButtonState
    extends State<EngineCapacityDropDownButton> {
  final List<double> endines = List.generate(80, (index) => index / 10);
  double? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<double>(
        hint: Text(
          'Объем двигателя',
          style: AppTextStyles.s15W400(),
        ),
        items: endines
            .map(
              (double item) => DropdownMenuItem<double>(
                value: item,
                child: Text(
                  item.toString(),
                  style: AppTextStyles.s15W400(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: context.width,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: AppColors.orangeff5733,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: context.width - 38,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all(6),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 14),
        ),
      ),
    );
  }
}
