Entendi, vamos atualizar o README para refletir o `main.dart` atualizado. Aqui está o README completo:

---

# Balance Page Account

Este projeto Flutter exibe informações bancárias de um usuário fictício em uma interface de usuário atraente e moderna.

## Pré-requisitos

- [Flutter](https://flutter.dev/docs/get-started/install) deve estar instalado na sua máquina.
- Editor de código, como [Visual Studio Code](https://code.visualstudio.com/) ou [Android Studio](https://developer.android.com/studio).

## Instalação

1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/balance-page-account.git
```

2. Navegue até o diretório do projeto:

```bash
cd balance-page-account
```

3. Instale as dependências:

```bash
flutter pub get
```

## Execução

Para executar o aplicativo, use o comando abaixo:

```bash
flutter run
```

Certifique-se de que você tem um dispositivo emulado ou físico conectado.

## Estrutura do Projeto

- `main.dart`: O ponto de entrada do aplicativo Flutter.
- `model/user.dart`: Classe que define o modelo do usuário.
- `screen/balance_page_account.dart`: Widget principal que constrói a interface do usuário.

## Estrutura do Código

### `main.dart`

```dart
import 'package:creditcard/screen/balance_page_account.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco Bene',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BalancePageAccount(),
      debugShowCheckedModeBanner: false,
    );
  }
}
```

### `model/user.dart`

```dart
class User {
  final String firstName;
  final String lastName;
  final double balance;
  final String accountNumber;

  User({
    required this.firstName,
    required this.lastName,
    required this.balance,
    required this.accountNumber,
  });
}
```

### `screen/balance_page_account.dart`

```dart
import 'package:flutter/material.dart';
import '../model/user.dart';

class BalancePageAccount extends StatelessWidget {
  const BalancePageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    // Exemplo de usuário fictício
    final User user = User(
      firstName: "Carlos",
      lastName: "Silva",
      balance: 100000.00,
      accountNumber: "123456789",
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Informações Bancárias'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(user),
            const SizedBox(height: 20),
            _buildInfoCard(user),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(User user) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.tealAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${user.firstName} ${user.lastName}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Saldo: \$${user.balance.toStringAsFixed(2)}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(User user) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInfoTile(Icons.account_balance, "Número da Conta", user.accountNumber),
            _buildInfoTile(Icons.person, "Nome", user.firstName),
            _buildInfoTile(Icons.person_outline, "Sobrenome", user.lastName),
            _buildInfoTile(Icons.attach_money, "Saldo", "\$${user.balance.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String label, String value) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
```

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua modificação (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -am 'Adicionei uma nova feature'`).
4. Faça um push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença

Este projeto está licenciado sob a Licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

