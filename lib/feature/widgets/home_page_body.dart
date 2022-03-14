import 'package:bilsoft_quiz_app/core/shared_widgets/home_category.dart';
import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/feature/domain/entity/album.dart';
import 'package:bilsoft_quiz_app/feature/viewmodel/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 700,
        child: Consumer<HomeProvider>(
          builder:
              (BuildContext context, HomeProvider homeProvider, Widget? child) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: homeProvider.albums.length,
              itemBuilder: (BuildContext ctx, index) {
                return HomeCategory(album: homeProvider.albums[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
