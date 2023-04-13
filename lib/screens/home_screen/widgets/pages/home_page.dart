import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/screens/global_widgets/loading_indicator.dart';
import 'package:plov_kebab/screens/home_screen/widgets/home_page_body.dart';

import '../../../../data/bloc/menu/menu_bloc.dart';
import '../../../../utils/constants.dart';
import '../appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        if (state is MenuLoading) {
          return LoadingIndicator();
        }
        if (state is MenuLoaded) {
          return Column(
            children: [
              CustomAppBar(state.menu),
              SizedBox(height: ProjectGap.main),
              HomePageBody(state.menu),
            ],
          );
        }
        return Center(child: Text('Oops, an error has occured, please try again later!'));
      },
    );
  }
}
