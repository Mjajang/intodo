import 'package:flutter/material.dart';
import 'package:intodo/src/persentation/screen/home/widgets/custom_location_fab.dart';
import 'package:intodo/src/values/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onPressed: () {},
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
}
