import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:pinput/pinput.dart';
import 'package:plov_kebab/screens/global_widgets/cursor.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import '../../data/bloc/auth/auth_bloc.dart';
import '../../utils/constants.dart';
import '../global_widgets/button.dart';

class GetOtpCodeScreen extends StatefulWidget {
  const GetOtpCodeScreen({super.key});

  @override
  State<GetOtpCodeScreen> createState() => _GetOtpCodeScreenState();
}

class _GetOtpCodeScreenState extends State<GetOtpCodeScreen> with SingleTickerProviderStateMixin {
  late final CustomTimerController _timerController;
  late final TextEditingController _pinController;
  final _formKey = GlobalKey<FormState>();
  String _code = '';

  @override
  void initState() {
    super.initState();

    _timerController = CustomTimerController(
      vsync: this,
      begin: Duration(seconds: 60),
      end: Duration(),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.seconds,
    );
    _timerController.start();
    _pinController = TextEditingController();
  }

  @override
  void dispose() {
    _timerController.finish();
    _timerController.dispose();
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is CodeConfirmSuccessState) {
            Navigator.of(context).pushReplacementNamed(ProjectRoute.homeScreen);
          } else if (state is CodeConfirmErrorState) {
            _formKey.currentState!.validate();
          }
        },
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              children: [
                CustomContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
                      SizedBox(height: 16),
                      Center(
                        child: Pinput(
                          pinputAutovalidateMode: PinputAutovalidateMode.disabled,
                          controller: _pinController,
                          keyboardType: TextInputType.number,
                          length: 6,
                          autofocus: true,
                          defaultPinTheme: _pinTheme(isFocused: false),
                          closeKeyboardWhenCompleted: true,
                          focusedPinTheme: _pinTheme(isFocused: true),
                          errorPinTheme: _pinTheme(isFocused: true, color: Colors.red),
                          onChanged: (value) => _code = value,
                          validator: (value) => 'Wrong code',
                          cursor: CustomCursor(),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomTimer(
                  controller: _timerController,
                  builder: (timerState, time) {
                    bool timerRunning = time.duration.inSeconds > 0;
                    return TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: timerRunning
                          ? null
                          : () {
                              _pinController.clear();
                              if (state is GetCustomerSuccessState) {
                                BlocProvider.of<AuthBloc>(context).add(GetCustomer(state.customer.phone));
                              } else if (state is CustomerRegisterSuccessState) {
                                BlocProvider.of<AuthBloc>(context).add(RegisterCustomer(state.name, state.phone));
                              }
                            },
                      child: Text(timerRunning ? '${time.minutes}:${time.seconds}' : 'Resend SMS code',
                          style: TextStyle(color: Colors.black)),
                    );
                  },
                ),
                CustomButton(
                  title: context.localeString(ProjectLocales.conTinue),
                  onPressed: () {
                    if (_code.isEmpty) {
                      _formKey.currentState!.validate();
                      return;
                    }
                    String finalNumber = '';
                    if (state is GetCustomerSuccessState) {
                      finalNumber = state.customer.phone;
                    } else if (state is CustomerRegisterSuccessState) {
                      finalNumber = state.phone;
                    }
                    BlocProvider.of<AuthBloc>(context).add(ConfirmCode(_code, finalNumber));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _pinTheme({required bool isFocused, Color color = ProjectColors.primary}) {
    return PinTheme(
      textStyle: ProjectTextStyle.input,
      decoration: BoxDecoration(
        color: ProjectColors.inputFill,
        borderRadius: BorderRadius.all(ProjectRadius.main),
        border: isFocused ? Border.all(color: color) : null,
      ),
      width: (MediaQuery.of(context).size.width - 2 * ProjectGap.main) / 6,
      height: 60,
    );
  }
}
