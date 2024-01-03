import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intodo/src/persentation/blocs/view_home/view_home_cubit.dart';
import 'package:intodo/src/persentation/routes/routes.dart';
import 'package:intodo/src/persentation/screen/home/widgets/custom_location_fab.dart';
import 'package:intodo/src/values/constants/constants.dart';

import 'widgets/build_grid_view.dart';
import 'widgets/build_list_view.dart';
import 'widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 25,
                          color: AppColors.textColor,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: AppColors.textColor,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.go,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            hintText: "Search...",
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<ViewHomeCubit>().toogleView();
                        },
                        icon: BlocBuilder<ViewHomeCubit, ViewHome>(
                          builder: (context, state) {
                            return Icon(
                              state == ViewHome.grid
                                  ? Icons.grid_view
                                  : Icons.view_agenda_outlined,
                              size: 25,
                              color: AppColors.textColor,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.textColor,
                          child: Text(
                            'JM',
                            style: AppTextStyles.whiteTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            BlocBuilder<ViewHomeCubit, ViewHome>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: viewOptions[state.index],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.zero,
            ),
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.check_box,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.textColor
                    : AppColors.darkTextColor,
              ),
              onPressed: () {
                // Handle the onPressed event for the "check" item
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.textColor
                    : AppColors.darkTextColor,
              ),
              onPressed: () {
                // Handle the onPressed event for the "canvas" item
              },
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.textColor
                    : AppColors.darkTextColor,
              ),
              onPressed: () {
                // Handle the onPressed event for the "record" item
              },
            ),
            IconButton(
              icon: Icon(
                Icons.image,
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors.textColor
                    : AppColors.darkTextColor,
              ),
              onPressed: () {
                // Handle the onPressed event for the "picture" item
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          isExtended: true,
          onPressed: () {
            Navigator.pushNamed(context, Routes.noteScreen);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Icon(
            Icons.add,
            color: Theme.of(context).brightness == Brightness.light
                ? AppColors.primaryColor
                : AppColors.darkPrimaryColor,
            size: 32,
          )),
      floatingActionButtonLocation: const CustomFloatingActionButtonLocation(),
    );
  }

  final List<Widget> viewOptions = [
    const BuildGridView(),
    const BuildListView(),
  ];
}
