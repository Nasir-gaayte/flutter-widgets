import 'package:flutter/material.dart';
import 'package:flutter_widget/mvvm/model_views/userViewModel.dart';
import 'package:provider/provider.dart';

class AuthenticaedView extends StatefulWidget {
  const AuthenticaedView({super.key});

  @override
  State<AuthenticaedView> createState() => _AuthenticaedViewState();
}

class _AuthenticaedViewState extends State<AuthenticaedView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController tokenController = TextEditingController();

  bool viewPassword = false;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Authenticated View'),
      ),
      body: user.isAuthenticated == false
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    obscureText: true,
                    controller: tokenController,
                    decoration: InputDecoration(hintText: 'Token'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      user.login(emailController.text, tokenController.text);
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email: ${user.user!.email}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      viewPassword
                          ? Text('Token: .....')
                          : Text('Token: ${user.user!.token}'),
                      IconButton(
                        icon: Icon(viewPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            viewPassword = !viewPassword;
                          });
                        },
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      user.logout();
                    },
                    child: Text('Logout'),
                  ),
                ],
              ),
            ),
    );
  }
}
