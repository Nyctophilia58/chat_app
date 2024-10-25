import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/services/chat/chat_services.dart';
import 'package:flutter/material.dart';
import '../components/my_drawer.dart';
import '../components/user_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget{
  HomePage({super.key});

  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('H O M E'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey,
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(
      stream: chatService.getUserStream(),
      builder: (context, snapshot){
        if(snapshot.hasError){
          return const Text("Error");
        }

        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView(
          children: snapshot.data!.map<Widget>((userData) => _buildUserListItem(userData, context)).toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context){
    if(userData["email"] != authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) =>
                  ChatPage(
                    receiverEmail: userData["email"],
                    receiverID: userData["uid"],
                  )
          ),
          );
        }
      );
    }
    else {
      return Container();
    }
  }
}