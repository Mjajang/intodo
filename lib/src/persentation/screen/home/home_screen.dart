import 'package:flutter/material.dart';
import 'package:intodo/src/persentation/screen/home/widgets/custom_location_fab.dart';
import 'package:intodo/src/values/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onPressed: () {},
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.grid_view,
                          size: 25,
                          color: AppColors.textColor,
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
            ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    color: AppColors.lightBackgroundColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Hello World! - $index"),
                    ),
                  ),
                );
              },
            )
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
