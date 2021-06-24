import 'package:bank_slip_manager/modules/home/home_controller.dart';
import 'package:bank_slip_manager/shared/themes/app_colors.dart';
import 'package:bank_slip_manager/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final pages = [
    Container(color: Colors.blue,),
    Container( color: Colors.blueGrey,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(TextSpan(
                  text: "Hello, ",
                  style: TextStyles.titleRegular,
                  children: [
                    TextSpan(
                        text: "Mrs.Unknow",
                        style: TextStyles.titleBoldBackground)
                  ])),
              subtitle: Text(
                "keep your expenses up to date",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(152),
      ),
      body: pages[controller.currentPage],
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  controller.setPage(0);
                  setState(() {
                    
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary,
                )),
            GestureDetector(
              onTap: () {
                print("clicou");
              },
              child: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  controller.setPage(1);
                  setState(() {
                    
                  });
                },
                icon: Icon(
                  Icons.description_outlined,
                  color: AppColors.body,
                )),
          ],
        ),
      ),
    );
  }
}
