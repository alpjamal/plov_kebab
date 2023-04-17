import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/data/bloc/data/data_bloc.dart';
import 'package:plov_kebab/screens/global_widgets/loading_indicator.dart';
import 'package:plov_kebab/screens/home_screen/widgets/home_page_body.dart';

import '../../../../utils/constants.dart';
import '../appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataBloc, DataState>(
      builder: (context, state) {
        if (state is DataLoading) {
          return LoadingIndicator();
        }
        if (state is InitialDataLoaded) {
          return Column(
            children: [
              CustomAppBar(state.data),
              SizedBox(height: ProjectGap.main),
              HomePageBody(initialData: state.data, banner: state.banner),
            ],
          );
        }
        return Center(child: Text('Oops, an error has occured, please try again later!'));
      },
    );
  }
}
