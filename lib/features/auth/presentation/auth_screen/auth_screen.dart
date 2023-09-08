import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sayakat/core/functions/push_router_func.dart';
import 'package:sayakat/routes/mobile_auto_router.gr.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthForm(),
    );
  }
}

class AuthForm extends StatelessWidget {
  const AuthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20.0), // Добавляем отступы от краев
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Логин',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Действие по восстановлению пароля
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              child: const Text('Забыли пароль?'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                pushAndPopUntilFunction(const BottomNavigatorRoute());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00BCFB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Авторизоваться'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Или авторизуйтесь через:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Действие по авторизации через Facebook
                  },
                  icon: const Icon(Icons.facebook),
                  color: Colors.blue,
                ),
                const SizedBox(width: 20.0),
                IconButton(
                  onPressed: () {
                    // Действие по авторизации через Google
                  },
                  icon: const Icon(Icons.check),
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                // Действие по переходу к регистрации
              },
              child: const Text('Регистрация'),
            ),
          ],
        ),
      ),
    );
  }
}
