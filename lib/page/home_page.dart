import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_portfoilio/model/menu_item.dart';
import 'package:flutter_web_portfoilio/utils/const_string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuList _menuList = MenuList();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: size.width,
          height: size.height,
          color: Theme.of(context).primaryColor,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset('images/my_image.png'),
              Container(
                width: size.width,
                height: size.height,
                child: Row(
                  children: [
                    Container(
                        width: size.width * 3 / 5,
                        height: size.height * 3 / 4,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 65, right: 65),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 80,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Reza \nTaghizadeh.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 87,
                                            height: 0.9,
                                          ),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Container(
                                        width: 100,
                                        height: 10,
                                        color: Theme.of(context).accentColor),
                                  ],
                                ),
                                Row(children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.github,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.linkedinIn,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: FaIcon(
                                      FontAwesomeIcons.twitter,
                                      color: Colors.white,
                                    ),
                                  )
                                ])
                              ],
                            ))),
                    Container(
                      width: size.width * 2 / 5,
                      height: size.height * 3 / 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 65, right: 65),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: _menuList.items.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: InkWell(
                                        child: Column(
                                          children: [
                                            Text(
                                              _menuList.items[index].text,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline2
                                                  .copyWith(
                                                    color: _menuList
                                                            .items[index]
                                                            .isSelected
                                                        ? Colors.white
                                                        : Colors.white
                                                            .withOpacity(0.5),
                                                  ),
                                            ),
                                            Container(
                                              width: 8,
                                              height: 8,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  color: _menuList.items[index]
                                                          .isSelected
                                                      ? Theme.of(context)
                                                          .accentColor
                                                      : Colors.transparent),
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _menuList.selectedIndex(index);
                                          });
                                        },
                                      ),
                                    );
                                  }),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '- Introduction',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                          color: Colors.white.withOpacity(0.6),
                                          letterSpacing: 2.0),
                                ),
                                SizedBox(height: 16),
                                Text('Flutter, Android and IOS Developer',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                SizedBox(height: 36),
                                Text(
                                    'My Name Is Reza and I have 11 years of experience in different aspects of computer science. I like my job and also I think I am in love with flutter.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            height: 2.0)),
                              ],
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('My Story',
                                      style:
                                          Theme.of(context).textTheme.button),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(CupertinoIcons.arrow_right,
                                        color: Theme.of(context).accentColor))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
