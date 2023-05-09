import 'package:flutter/material.dart';
import 'package:skydelivery_app_demo/const/colors.dart';
import 'package:skydelivery_app_demo/utils/helper.dart';
import 'package:skydelivery_app_demo/widgets/customNavBar.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/aboutScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
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
                          "О нас",
                          style: Helper.getTheme(context).headline5,
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName("cart.png", "virtual"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      AboutCard(),
                      SizedBox(
                        height: 20,
                      ),
                      // AboutCard(),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // AboutCard(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutCard extends StatelessWidget {
  const AboutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromRGBO(92, 225, 230, 1),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              "Sky delivery solutions помогает службам доставки еды и продуктов, а также сервисам доставки ценных грузов оптимизировать логистические процессы через автоматизацию и быструю доставку с помощью дронов",
              style: TextStyle(
                color: AppColor.primary,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromRGBO(92, 225, 230, 1),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              "Проблемы, которые мы решаем: Курьерская доставка ограничена инфраструктурой города, длительное время ожидания заказа, экология",
              style: TextStyle(
                color: AppColor.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
