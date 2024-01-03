import 'package:flutter/material.dart';
import 'package:intodo/src/values/constants/constants.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.lightBackgroundColor,
      elevation: 0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 46.0,
              left: 10.0,
              bottom: 18.0,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "Intodo",
              style: AppTextStyles.blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            shrinkWrap: true,
            itemCount: _menuItem.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ListTile(
                  tileColor: _menuItem[index]['selected']
                      ? AppColors.primaryColor
                      : null,
                  visualDensity: const VisualDensity(vertical: -2.6),
                  horizontalTitleGap: 3,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  leading: _menuItem[index]['icon'],
                  title: Text(
                    _menuItem[index]['title'],
                    style: AppTextStyles.blackTextStyle,
                  ),
                  onTap: () {
                    // if (!_menuItem[index]['selected'])
                    //   _changeSelectedMenu(context, index);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> _menuItem = [
    {
      "title": "Catatan",
      "icon": Icon(
        Icons.lightbulb,
        color: AppColors.textColor,
      ),
      "selected": true,
    },
    {
      "title": "Pengingat",
      "icon": Icon(
        Icons.notifications,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
    {
      "title": "Buat label baru",
      "icon": Icon(
        Icons.add,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
    {
      "title": "Arsip",
      "icon": Icon(
        Icons.archive,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
    {
      "title": "Sampah",
      "icon": Icon(
        Icons.delete,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
    {
      "title": "Setelan",
      "icon": Icon(
        Icons.settings,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
    {
      "title": "Bantuan & masukan",
      "icon": Icon(
        Icons.help,
        color: AppColors.textColor,
      ),
      "selected": false,
    },
  ];

  // void _changeSelectedMenu(BuildContext context, int selectedIndex) {
  //   for (int i = 0; i < _menuItem.length; i++) {
  //     _menuItem[i]['selected'] = (i == selectedIndex);
  //   }
  //   Navigator.pop(context);
  // }
}
