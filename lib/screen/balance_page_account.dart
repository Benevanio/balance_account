import 'package:creditcard/model/user.dart';
import 'package:flutter/material.dart';

class BalancePageAccount extends StatelessWidget {
  const BalancePageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User(
      firstName: "Benevanio",
      lastName: "Santos",
      balance: 100000.00,
      accountNumber: "123456789",
    );

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Informações Bancárias')),
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
        gradient: const LinearGradient(
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
            _buildInfoTile(
                Icons.account_balance, "Número da Conta", user.accountNumber),
            _buildInfoTile(Icons.person, "Nome", user.firstName),
            _buildInfoTile(Icons.person_outline, "Sobrenome", user.lastName),
            _buildInfoTile(Icons.attach_money, "Saldo",
                "\$${user.balance.toStringAsFixed(2)}"),
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
