import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_portfoilio/model/menu_item.dart';
import 'package:flutter_web_portfoilio/utils/const_string.dart';
import 'package:flutter_web_portfoilio/utils/responsive_controller.dart';
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
    print(size);
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
                                SmallTitleText(text: ConstString.jobTitleSmall),
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
                                HeaderText(
                                  text: '- Introduction',
                                ),
                                SizedBox(height: 16),
                                TitleText(
                                  text: ConstString.jobTitle,
                                ),
                                SizedBox(height: 36),
                                DescriptionText(text: ConstString.description),
                              ],
                            ),
                            WebButton(text: 'My Story'),
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
                                HeaderText(text: '- Contact'),
                                SizedBox(height: 16),
                                TitleText(
                                    text: 'Any Type Of Query & Discussion'),
                              ],
                            ),
                            DescriptionText(
                                text: ConstString.contactDescription),
                            Visibility(
                              visible: !isMedium,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  WebIconButton(
                                    text: 'Alirezataghizadeh66@gmail.com',
                                    data: FontAwesomeIcons.envelope,
                                  ),
                                  WebIconButton(
                                    text: '+905366526420',
                                    data: FontAwesomeIcons.whatsapp,
                                  ),
                                  WebIconButton(
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
                                  SmallWebIconButton(
                                    text: 'Alirezataghizadeh66@gmail.com',
                                    data: FontAwesomeIcons.envelope,
                                  ),
                                  SmallWebIconButton(
                                    text: '+905366526420',
                                    data: FontAwesomeIcons.whatsapp,
                                  ),
                                  SmallWebIconButton(
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
                        HeaderText(text: '-Professional Skills'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillObject(
                              title: 'Programming:',
                              skills: 'Flutter, Dart, Android Java, Swift',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Coding Architecture:',
                              skills:
                                  'Bloc, Provider, Clean Architecture, MVP, MVVM, MVC',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Management Tools:',
                              skills: 'Trello, Notion, Jira, Taiga',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Database ORM:',
                              skills: 'SQfentity, Realm, Room',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
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
                                HeaderText(text: '- Contact'),
                                SizedBox(height: 16),
                                TitleText(
                                    text: 'Any Type Of Query & Discussion'),
                              ],
                            ),
                            DescriptionText(
                                text: ConstString.contactDescription),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmallWebIconButton(
                                  text: 'Alirezataghizadeh66@gmail.com',
                                  data: FontAwesomeIcons.envelope,
                                ),
                                SmallWebIconButton(
                                  text: '+905366526420',
                                  data: FontAwesomeIcons.whatsapp,
                                ),
                                SmallWebIconButton(
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
                        HeaderText(text: '-Professional Skills'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SkillObject(
                              title: 'Programming:',
                              skills: 'Flutter, Dart, Android Java, Swift',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Coding Architecture:',
                              skills:
                                  'Bloc, Provider, Clean Architecture, MVP, MVVM, MVC',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Management Tools:',
                              skills: 'Trello, Notion, Jira, Taiga',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
                              title: 'Database ORM:',
                              skills: 'SQfentity, Realm, Room',
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SkillObject(
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

class SkillObject extends StatelessWidget {
  final String title;
  final String skills;
  const SkillObject({
    Key key,
    this.title,
    this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Theme.of(context).accentColor),
                ),
              ),
              SizedBox(width: 4),
              SubTitleText(text: title),
            ],
          ),
          DescriptionText(text: skills)
        ]);
  }
}

class WebIconButton extends StatelessWidget {
  final String text;
  final IconData data;
  const WebIconButton({
    Key key,
    this.text,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: FaIcon(data, color: Theme.of(context).accentColor),
      ),
      SizedBox(width: 4),
      TextButton(
        onPressed: () {},
        child: Text(text, style: Theme.of(context).textTheme.button),
      ),
    ]);
  }
}

class SmallWebIconButton extends StatelessWidget {
  final String text;
  final IconData data;
  const SmallWebIconButton({
    Key key,
    this.text,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: FaIcon(data, color: Theme.of(context).accentColor),
      ),
      SizedBox(width: 4),
      TextButton(
        onPressed: () {},
        child: Text(text,
            style: Theme.of(context).textTheme.button.copyWith(fontSize: 14)),
      ),
    ]);
  }
}

class WebButton extends StatelessWidget {
  final String text;

  const WebButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: AutoSizeText(
            text,
            style: Theme.of(context).textTheme.button,
            maxLines: 1,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.arrow_right,
                color: Theme.of(context).accentColor))
      ],
    );
  }
}

class DescriptionText extends StatelessWidget {
  final String text;
  const DescriptionText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 3,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Colors.white.withOpacity(0.8), height: 2.0));
  }
}

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 2, style: Theme.of(context).textTheme.bodyText1);
  }
}

class SmallTitleText extends StatelessWidget {
  final String text;
  const SmallTitleText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 2,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ));
  }
}

class SubTitleText extends StatelessWidget {
  final String text;
  const SubTitleText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(text,
        maxLines: 2, style: Theme.of(context).textTheme.bodyText2);
  }
}

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6.copyWith(
          color: Colors.white.withOpacity(0.6),
          fontWeight: FontWeight.w700,
          letterSpacing: 2.0),
    );
  }
}
