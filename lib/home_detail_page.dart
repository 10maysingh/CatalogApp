import 'package:flutter/material.dart';
import 'package:new_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc9ccff ),
      ),
      backgroundColor: MyTheme.grey,
    bottomNavigationBar: Container(
      color: Color(0xffc9fffc),
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.xl5.make(),
          ElevatedButton(onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyTheme.darkblue,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )
              ),
              child: "Add to cart".text.make()).wh(130, 50)
        ],
      ).p32(),
    ),
    body: SafeArea(
      bottom: false,

      child: Column(children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
        ).h32(context),
        Expanded(child: VxArc(
          height: 30.0,
          arcType: VxArcType.CONVEY,
          edge: VxEdge.TOP,
          child: Container(
            color: Color(0xffc9fffc),
            width: context.screenWidth,
            child: Column(
              children: [
                catalog.name.text.bold.xl4.make(),
                15.heightBox,
                catalog.desc.text.xl2.textStyle(context.captionStyle).make(),
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.".text.xs.textStyle(context.captionStyle).make().p16(),

              ],
            ).py64(),
          ),
        )
        ),
  ],
      ),
    ),
    );
  }
}
