import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/settings_page.dart';
import '../services/auth/auth_service.dart';
import '../themes/theme_provider.dart';

class MyDrawer extends StatelessWidget{
   const MyDrawer({super.key});

   void logout(){
     final auth = AuthService();
     auth.signOut();
   }

   @override
   Widget build(BuildContext context) {
     return Drawer(
       backgroundColor: Theme.of(context).colorScheme.background,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Column(
             children: [
               DrawerHeader(
                 child: Icon(
                   Icons.message,
                   size: 40,
                   color: Theme.of(context).colorScheme.inversePrimary,
                 ),
               ),

               const SizedBox(height: 25.0),

               Padding(
                 padding: const EdgeInsets.only(left: 25.0),
                 child: ListTile(
                   leading: const Icon(Icons.home),
                   title: const Text('H O M E'),
                   onTap: (){
                     Navigator.pop(context);
                   },
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 25.0),
                 child: ListTile(
                   leading: const Icon(Icons.settings),
                   title: const Text('S E T T I N G S'),
                   onTap: (){
                     Navigator.pop(context);

                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const SettingsPage()
                       ),
                     );
                   },
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.only(left: 25.0),
                 child: ListTile(
                   leading: const Icon(Icons.nights_stay_outlined),
                   title: const Text('N I G H T'),
                   trailing: CupertinoSwitch(
                     value: Provider.of<ThemeProvider>(context).isDarkMode,
                     onChanged: (value) {
                       Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                     },
                   ),
                 ),
               ),
             ],
           ),

           Padding(
             padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
             child: ListTile(
               leading: const Icon(Icons.logout),
               title: const Text('L O G O U T'),
               onTap: (){
                 Navigator.pop(context);

                 logout();
               },
             ),
           )
         ],
       ),
     );
   }
}