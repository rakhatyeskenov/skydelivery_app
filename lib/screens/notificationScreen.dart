import 'package:flutter/material.dart';
import 'package:skydelivery_app_demo/const/colors.dart';
import 'package:skydelivery_app_demo/utils/helper.dart';
import 'package:skydelivery_app_demo/widgets/customNavBar.dart';

class NotificationScreen extends StatelessWidget {
  static const routeName = "/notiScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Уведомления",
                        style: Helper.getTheme(context).headline5,
                      ),
                    ),
                    Image.asset(
                      Helper.getAssetName("cart.png", "virtual"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              NotiCard(
                title: "Ваш заказ готовиться",
                time: "Сейчас",
              ),
              NotiCard(
                title: "Ваш заказ доставлен",
                time: "3 дня назад",
                color: AppColor.placeholderBg,
              ),
              NotiCard(
                title: "Ваш заказ доставлен",
                time: "5 дней назад",
              ),
              NotiCard(
                title: "Ваш заказ доставлен",
                time: "7 дней назад",
              ),
              NotiCard(
                title: "Ваш заказ доставлен",
                time: "20 Апреля 2023",
                color: AppColor.placeholderBg,
              ),
              NotiCard(
                title: "Ваш заказ доставлен",
                time: "12 Апреля 2023",
                color: AppColor.placeholderBg,
              ),
            ],
          )),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomNavBar(
                menu: true,
              ))
        ],
      ),
    );
  }
}

class NotiCard extends StatelessWidget {
  const NotiCard({
    Key key,
    String time,
    String title,
    Color color = Colors.white,
  })  : _time = time,
        _title = title,
        _color = color,
        super(key: key);

  final String _time;
  final String _title;
  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: _color,
        border: Border(
          bottom: BorderSide(
            color: AppColor.placeholder,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Color.fromRGBO(92, 225, 230, 1),
            radius: 5,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                _title,
                style: TextStyle(
                  color: AppColor.primary,
                ),
              ),
              SizedBox(
                  // height: 5,
                  ),
              Text(_time),
            ],
          )
        ],
      ),
    );
  }
}
