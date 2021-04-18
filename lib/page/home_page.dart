import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_portfoilio/model/menu_item.dart';
import 'package:flutter_web_portfoilio/utils/const_string.dart';
import 'package:flutter_web_portfoilio/utils/responsive_controller.dart';
import 'package:flutter_web_portfoilio/widget/description_text_widget.dart';
import 'package:flutter_web_portfoilio/widget/header_text_widget.dart';
import 'package:flutter_web_portfoilio/widget/skill_object_widget.dart';
import 'package:flutter_web_portfoilio/widget/small_title_text_widget.dart';
import 'package:flutter_web_portfoilio/widget/small_web_icon_button_widget.dart';
import 'package:flutter_web_portfoilio/widget/title_text_widget.dart';
import 'package:flutter_web_portfoilio/widget/web_button_widget.dart';
import 'package:flutter_web_portfoilio/widget/web_icon_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuList _menuList = MenuList();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              ResponsiveController.getScreenSize(size) == ScreenSize.small
                  ? Size.fromHeight(50.0)
                  : Size.fromHeight(0.0),
          // here the desired height
          child: AppBar(
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Theme.of(context).primaryColor,
            iconTheme: new IconThemeData(color: Colors.white),
            // ...
          )),
      drawer: ResponsiveController.getScreenSize(size) == ScreenSize.small
          ? Drawer(
              child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Text('Reza Taghizadeh',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    color: Theme.of(context).accentColor)),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: _menuList.items.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              splashColor: Colors.yellow,
                              child: Padding(
                                padding: const EdgeInsets.all(14),
                                child: Text(
                                  _menuList.items[index].text,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pop();
                                });
                              },
                            );
                          }),
                    ],
                  )),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHomePage(size, context),
            buildSkillContactPage(size, context),
          ],
        ),
      ),
    );
  }

  Widget buildHomePage(Size size, BuildContext context) {
    return Container(
        width: size.width,
        constraints: BoxConstraints(
          minHeight: size.height,
        ),
        color: Theme.of(context).primaryColor,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Visibility(
                visible: ResponsiveController.getScreenSize(size) ==
                    ScreenSize.large,
                child: Image.asset('images/my_image.png')),
            Container(
              width: size.width,
              child: Row(
                children: [
                  Visibility(
                    visible: ResponsiveController.getScreenSize(size) ==
                        ScreenSize.small,
                    child: Container(
                        width: size.width,
                        constraints: BoxConstraints(
                          minHeight: size.height,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: size.width / 25, right: size.width / 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            size.width / 3),
                                        child: Image.asset(
                                          'images/mobile_photo.jpg',
                                          width: size.width / 3,
                                          height: size.width / 3,
                                          fit: BoxFit.fitHeight,
                                        )),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            ConstString.fullName,
                                            maxLines: 2,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1
                                                .copyWith(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 40,
                                                  height: 0.9,
                                                ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                              width: 40,
                                              height: 5,
                                              color: Theme.of(context)
                                                  .accentColor),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SmallTitleTextWidget(
                                    text: ConstString.jobTitleSmall),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
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
                  ),
                  Visibility(
                    visible: ResponsiveController.getScreenSize(size) !=
                        ScreenSize.small,
                    child: Container(
                        width: ResponsiveController.getScreenSize(size) ==
                                ScreenSize.large
                            ? size.width * 3 / 5
                            : size.width / 2,
                        constraints: BoxConstraints(
                          minHeight: size.height * 3 / 4,
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: size.width / 25, right: size.width / 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 80,
                                ),
                                Container(
                                  width: ResponsiveController.getScreenSize(
                                              size) ==
                                          ScreenSize.large
                                      ? size.width * 3 / 5
                                      : size.width / 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        ConstString.fullName,
                                        maxLines: 2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(
                                              fontWeight: FontWeight.w800,
                                              fontSize: ResponsiveController
                                                          .getScreenSize(
                                                              size) ==
                                                      ScreenSize.small
                                                  ? 45
                                                  : 87,
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
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
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
                  ),
                  Visibility(
                    visible: ResponsiveController.getScreenSize(size) !=
                        ScreenSize.small,
                    child: Container(
                      width: ResponsiveController.getScreenSize(size) ==
                              ScreenSize.large
                          ? size.width * 2 / 5
                          : size.width / 2,
                      constraints: BoxConstraints(
                        minHeight: size.height * 3 / 4,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: size.width / 25, right: size.width / 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: size.width * 2 / 5,
                              child: ListView.builder(
                                  shrinkWrap: false,
                                  physics: NeverScrollableScrollPhysics(),
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
                                HeaderTextWidget(
                                  text: '- Introduction',
                                ),
                                SizedBox(height: 16),
                                TitleTextWidget(
                                  text: ConstString.jobTitle,
                                ),
                                SizedBox(height: 36),
                                DescriptionTextWidget(
                                    text: ConstString.description),
                              ],
                            ),
                            WebButtonWidget(text: 'My Story'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildSkillContactPage(Size size, BuildContext context) {
    bool isMedium =
        ResponsiveController.getScreenSize(size) == ScreenSize.medium;
    return Container(
      width: size.width,
      color: Theme.of(context).primaryColorDark,
      child: ResponsiveController.getScreenSize(size) != ScreenSize.small
          ? Row(
              children: [
                Container(
                    width: size.width / 2,
                    constraints: BoxConstraints(
                      minHeight: size.height,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width / 11,
                          vertical: size.height / 6),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeaderTextWidget(text: '- Contact'),
                                SizedBox(height: 16),
                                TitleTextWidget(
                                    text: 'Any Type Of Query & Discussion'),
                              ],
                            ),
                            DescriptionTextWidget(
                                text: ConstString.contactDescription),
                            Visibility(
                              visible: !isMedium,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WebIconButtonWidget(
                                    text: 'Alirezataghizadeh66@gmail.com',
                                    data: FontAwesomeIcons.envelope,
                                  ),
                                  WebIconButtonWidget(
                                    text: '+905366526420',
                                    data: FontAwesomeIcons.whatsapp,
                                  ),
                                  WebIconButtonWidget(
                                    text: 'alirezat_66',
                                    data: FontAwesomeIcons.telegram,
                                  )
                                ],
                              ),
                            ),
                            Visibility(
                              visible: isMedium,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SmallWebIconButtonWidget(
                                    text: 'Alirezataghizadeh66@gmail.com',
                                    data: FontAwesomeIcons.envelope,
                                  ),
                                  SmallWebIconButtonWidget(
                                    text: '+905366526420',
                                    data: FontAwesomeIcons.whatsapp,
                                  ),
                                  SmallWebIconButtonWidget(
                                    text: 'alirezat_66',
                                    data: FontAwesomeIcons.telegram,
                                  )
                                ],
                              ),
                            ),
                          ]),
                    )),
                Container(
                  width: size.width / 2,
                  constraints: BoxConstraints(
                    minHeight: size.height,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width / 11, vertical: size.height / 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeaderTextWidget(text: '-Professional Skills'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillObjectWidget(
                              title: 'Programming:',
                              skills: 'Flutter, Dart, Android Java, Swift',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Coding Architecture:',
                              skills:
                                  'Bloc, Provider, Clean Architecture, MVP, MVVM, MVC',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Management Tools:',
                              skills: 'Trello, Notion, Jira, Taiga',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Database ORM:',
                              skills: 'SQfentity, Realm, Room',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Usage Technology',
                              skills:
                                  'Design patterns, Restful, SOAP, Socket programming, Firebase Services, Dagger2, Rxjava',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Container(
                    width: size.width,
                    height: size.height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeaderTextWidget(text: '- Contact'),
                                SizedBox(height: 16),
                                TitleTextWidget(
                                    text: 'Any Type Of Query & Discussion'),
                              ],
                            ),
                            DescriptionTextWidget(
                                text: ConstString.contactDescription),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallWebIconButtonWidget(
                                  text: 'Alirezataghizadeh66@gmail.com',
                                  data: FontAwesomeIcons.envelope,
                                ),
                                SmallWebIconButtonWidget(
                                  text: '+905366526420',
                                  data: FontAwesomeIcons.whatsapp,
                                ),
                                SmallWebIconButtonWidget(
                                  text: 'alirezat_66',
                                  data: FontAwesomeIcons.telegram,
                                )
                              ],
                            ),
                          ]),
                    )),
                Container(
                  height: size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeaderTextWidget(text: '-Professional Skills'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillObjectWidget(
                              title: 'Programming:',
                              skills: 'Flutter, Dart, Android Java, Swift',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Coding Architecture:',
                              skills:
                                  'Bloc, Provider, Clean Architecture, MVP, MVVM, MVC',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Management Tools:',
                              skills: 'Trello, Notion, Jira, Taiga',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Database ORM:',
                              skills: 'SQfentity, Realm, Room',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObjectWidget(
                              title: 'Usage Technology',
                              skills:
                                  'Design patterns, Restful, SOAP, Socket programming, Firebase Services, Dagger2, Rxjava',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
