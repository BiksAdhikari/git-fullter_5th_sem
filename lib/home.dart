import 'package:flutter/material.dart';
import 'login.dart';
import './profile.dart';
class HomePage extends StatelessWidget {
  get floatingActionButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
  
  drawer: Drawer(
    child:ListView(
      children: <Widget>[   
           
        UserAccountsDrawerHeader(
          
          accountName: Text("Bikram Adhikari"),
          accountEmail: Text("BiksTechnology10@gmail.com"),
         decoration: BoxDecoration
            (image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage("https://img0.imguh.com/2019/02/03/images-2ec410a4f75f2fe61.jpg"))),
            currentAccountPicture: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ProfilePage())),
              child: CircleAvatar(backgroundImage: NetworkImage(" https://img0.imguh.com/2019/02/03/IMG_20190117_084149d0e47ab861cb14b0.jpg"),),
            ),
           
          ),
         ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: (){ Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>HomePage()
        )
        );
                   
                  
          },
        ),
        ListTile(
          leading: Icon(Icons.blur_circular),
          title: Text("Menu"),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: Text("Favourites"),
          onTap: (){
             
          },
        ),
        Divider(),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
        Divider(),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Setting"),
        ),
  
        Divider(),
        ListTile(title: Text("Logout"),
        trailing: Icon(Icons.arrow_back),
        onTap: (){
           Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context)=>LoginPage()
        )
        );
        }
        ),
      ],
    )
  ),
    );
  }
}