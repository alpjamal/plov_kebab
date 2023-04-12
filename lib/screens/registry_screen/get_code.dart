import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:pinput/pinput.dart';
import 'package:plov_kebab/screens/global_widgets/cursor.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import '../../utils/constants.dart';
import '../global_widgets/button.dart';

class GetOtpCodeScreen extends StatelessWidget {
  const GetOtpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
                SizedBox(height: 16),
                Center(
                  child: Pinput(
                    keyboardType: TextInputType.number,
                    length: 6,
                    defaultPinTheme: _pinTheme(context, isFocused: false),
                    closeKeyboardWhenCompleted: true,
                    focusedPinTheme: _pinTheme(context, isFocused: true),
                    cursor: CustomCursor(),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Center(child: Text('timer')),
          CustomButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ProjectRoute.homeScreen);
            },
            title: context.localeString(ProjectLocales.conTinue),
          ),
        ],
      ),
    );
  }

  _pinTheme(BuildContext context, {required bool isFocused}) {
    return PinTheme(
      textStyle: ProjectTextStyle.input,
      decoration: BoxDecoration(
        color: ProjectColors.inputFill,
        borderRadius: BorderRadius.all(ProjectRadius.main),
        border: isFocused ? Border.all(color: ProjectColors.primary) : null,
      ),
      width: (MediaQuery.of(context).size.width - 2 * ProjectGap.main) / 6,
      height: 60,
    );
  }
}
