import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:pinput/pinput.dart';
import '../../utils/constants.dart';

class GetOtpCodeScreen extends StatelessWidget {
  const GetOtpCodeScreen({super.key});
  static const routeName = '/get-otp-code-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(ProjectGap.main),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
            SizedBox(height: 16),
            Center(
              child: Pinput(
                keyboardType: TextInputType.number,
                length: 6,
                defaultPinTheme: _pinTheme(context, false),
                closeKeyboardWhenCompleted: true,
                focusedPinTheme: _pinTheme(context, true),
                cursor: _cursor(),
              ),
            ),
            Spacer(),
            Center(
              child: Text(
                'timer',
                textAlign: TextAlign.center,
                style: ProjectTextStyle.input,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: LocaleText(ProjectLocales.conTinue, style: ProjectTextStyle.input),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  _cursor() {
    return SizedBox(
      height: 30,
      child: VerticalDivider(thickness: 2, color: ProjectColors.primary),
    );
  }

  _pinTheme(BuildContext context, bool isFocused) {
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
