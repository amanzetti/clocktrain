import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/presentation/pages/profile/profile_page_vm.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  final String userId = 'user123';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _surnameController;
  late TextEditingController _usernameController;
  late TextEditingController _emailController;
  late TextEditingController _heightController;
  late TextEditingController _weightController;
  late TextEditingController _goalController;

  @override
  void initState() {
    super.initState();
    // Inizializza i controller con valori predefiniti (potenzialmente vuoti)
    _nameController = TextEditingController();
    _surnameController = TextEditingController();
    _usernameController = TextEditingController();
    _emailController = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    _goalController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _goalController.dispose();
    super.dispose();
  }

  void _populateFields(User user) {
    _nameController.text = user.name;
    _surnameController.text = user.name;
    _usernameController.text = user.name;
    _emailController.text = user.email;
    _heightController.text = user.height.toString();
    _weightController.text = user.weight.toString();
    _goalController.text = user.email;
  }

  Future<void> _saveChanges(User user) async {
    // if (_formKey.currentState?.validate() ?? false) {
    //   try {
    //     // Aggiorna l'utente con i dati modificati
    //     final updatedUser = user.copyWith(
    //       name: _nameController.text,
    //       surname: _surnameController.text,
    //       username: _usernameController.text,
    //       email: _emailController.text,
    //       height: int.tryParse(_heightController.text) ?? user.height,
    //       weight: double.tryParse(_weightController.text) ?? user.weight,
    //       goal: _goalController.text,
    //     );

    //     // Salva i dati aggiornati su Firestore
    //     await FirebaseFirestore.instance
    //         .collection('users')
    //         .doc(widget.userId)
    //         .update(updatedUser.toJson());

    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(content: Text('Modifiche salvate con successo')),
    //     );
    //   } catch (e) {
    //     print('Errore nel salvataggio dei dati: $e');
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    // Otteniamo lo stato dell'utente
    // final userState = ref.read(_profilePageVmProvider).readCurrentUser('userId');

    // // Verifica se la lista è vuota e, se sì, richiama getUserById
    // if (userState.isEmpty) {
    //   ref.read(userProvider.notifier).getUserById('user123');
    // }

    // // Mostra l'indicatore di caricamento finché non ci sono dati
    // if (userState.isEmpty) {
    //   return Scaffold(
    //     body: Center(child: CircularProgressIndicator()),
    //   );
    // }

    // final user = userState.first;
    // _populateFields(user);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Nome'),
              validator: (value) =>
                  value == null || value.isEmpty ? 'Campo obbligatorio' : null,
            ),
            TextFormField(
              controller: _surnameController,
              decoration: const InputDecoration(labelText: 'Cognome'),
              validator: (value) =>
                  value == null || value.isEmpty ? 'Campo obbligatorio' : null,
            ),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              validator: (value) =>
                  value == null || value.isEmpty ? 'Campo obbligatorio' : null,
            ),
            TextFormField(
              controller: _heightController,
              decoration: const InputDecoration(labelText: 'Altezza (cm)'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _weightController,
              decoration: const InputDecoration(labelText: 'Peso (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _goalController,
              decoration: const InputDecoration(labelText: 'Obiettivo'),
            ),
            const SizedBox(height: 20),
            AppElevatedButton(
              onPressed: () => {},

              ///_saveChanges(user),
              text: 'Salva modifiche',
            ),
          ],
        ),
      ),
    );
  }
}

final _profilePageVmProvider = Provider((ref) => ProfilePageVm());