import 'package:flutter/material.dart';
import 'package:flutter_practice/theme/MyAppTheme.dart';

void main() => runApp(new ContactProfilePage());

class ContactProfilePage extends StatefulWidget {
  @override
  _ContactProfilePageState createState() => _ContactProfilePageState();
}

class _ContactProfilePageState extends State<ContactProfilePage> {
  var appTheme = MyAppThemes.appThemeLight();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
        appBar: buildAppBarWidget(),
        body: buildBodyWidget(),
        floatingActionButton: buildFloatingActionButton(),
      ),
    );
  }

  Widget buildAppBarWidget() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.star_border),
          onPressed: () {
            print("Contact is starred");
          },
        ),
      ],
    );
  }

  Widget buildBodyWidget() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "https://avatars.githubusercontent.com/u/12657374?s=400&u=a404bf13493f4ba50245c6cf7d6d9d6c55f0d666&v=4",
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Pallaw Pathak",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: profileActionItems(),
            ),
            buildDivider(),
            mobilePhoneListTile(),
            otherPhoneListTile(),
            buildDivider(),
            emailListTile(),
            buildDivider(),
            addressListTile(),
          ],
        ),
      ],
    );
  }

  Widget profileActionItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
        buildTextButton(),
        buildVideoCallButton(),
        buildEmailButton(),
        buildDirectionsButton(),
        buildPayButton(),
      ],
    );
  }

  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
          ),
          onPressed: () {},
        ),
        Text("Directions"),
      ],
    );
  }

  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
          ),
          onPressed: () {},
        ),
        Text("Pay"),
      ],
    );
  }

  Widget mobilePhoneListTile() {
    return ListTile(
      leading: Icon(
        Icons.call,
        color: Colors.grey,
      ),
      title: Text("330-803-3390"),
      subtitle: Text("mobile"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget otherPhoneListTile() {
    return ListTile(
      leading: Text(""),
      title: Text("440-440-3390"),
      subtitle: Text("other"),
      trailing: IconButton(
        icon: Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget emailListTile() {
    return ListTile(
      leading: Icon(
        Icons.email,
        color: Colors.grey,
      ),
      title: Text("pallaw@pallaw.com"),
      subtitle: Text("work"),
    );
  }

  Widget addressListTile() {
    return ListTile(
      leading: Icon(
        Icons.location_on,
        color: Colors.grey,
      ),
      title: Text("234 Sunset St, Burlingame"),
      subtitle: Text("home"),
      trailing: IconButton(
        icon: Icon(
          Icons.directions,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget buildFloatingActionButton() {
    return FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.threesixty, ),
        ),
        onPressed: () {
          setState(() {
            appTheme = appTheme == MyAppThemes.appThemeLight()
                ? MyAppThemes.appThemeDark()
                : MyAppThemes.appThemeLight();
          });
        });
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
    );
  }
}
