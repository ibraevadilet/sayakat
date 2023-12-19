import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/formatters/enums.dart';
import 'package:sayakat/theme/app_colors.dart';
import 'package:sayakat/theme/app_text_styles.dart';
import 'package:sayakat/widgets/spaces.dart';

class PostTypeDropDownButton extends StatefulWidget {
  const PostTypeDropDownButton({super.key, required this.onChange});
  final Function(PostType? selectedType) onChange;

  @override
  State<PostTypeDropDownButton> createState() => _PostTypeDropDownButtonState();
}

class _PostTypeDropDownButtonState extends State<PostTypeDropDownButton> {
  final List<String> postTypes = [
    'Туры',
    'Центры отдыха',
    'Аренда авто',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        hint: Text(
          'Выберите тип объявления',
          style: AppTextStyles.s15W400(),
        ),
        items: postTypes
            .map(
              (String item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
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
          if (selectedValue == 'Туры') {
            widget.onChange(PostType.tour);
          } else if (selectedValue == 'Центры отдыха') {
            widget.onChange(PostType.place);
          } else if (selectedValue == 'Аренда авто') {
            widget.onChange(PostType.auto);
          }
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
