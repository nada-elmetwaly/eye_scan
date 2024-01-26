import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class DropDownField extends StatefulWidget {
  const DropDownField({super.key});

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  List<dynamic> cities = [];
  String? cityId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.cities.add({"val": 1, 'name': 'Mansoura'});
    this.cities.add({"id": 1, 'name': 'Cairo'});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        color: Color(0xFFF4F8F9),
        width: 330,
        height: 28,
        child: FormHelper.dropDownWidget(
          context, 'Enter City', this.cityId, this.cities, (onChangedVal) {
          this.cityId = onChangedVal;
          print("Selected City:$onChangedVal");
        }, (onValidateVal) {
          if (onValidateVal == null) {
            return 'Please Select City';
          }
          return null;
        },
          borderColor: Color(0xFFF4F8F9),
          borderFocusColor: Color(0xFFF4F8F9),
          showPrefixIcon: true,
          borderRadius: 5,
          prefixIconPaddingLeft: 0,

          prefixIcon: PhosphorIcon(
            PhosphorIcons.mapPin(),
            color: Color(0xFF979797),
            size: 24,
          ),
          optionValue: "val",
          optionLabel: 'name',
          validationColor: Color(0xFF979797),
          hintColor:  Color(0xFF979797),


        ),
      ),
    );
  }
}
