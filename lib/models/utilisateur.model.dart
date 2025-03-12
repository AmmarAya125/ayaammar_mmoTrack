class Utilisateur {
  String id;
  String nom;
  String prenom;
  String email;
  String motDepass;
  String role; // "client", "technicien", "administrateur"
  String status;


  Utilisateur({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.email,
    required this.motDepass,
    required this.role,
        required this.status,

  });

  // Méthode fromMap
  factory Utilisateur.fromMap(Map<String, dynamic> map) {
    return Utilisateur(
      id: map['id'] ?? '',
      nom: map['nom'] ?? '',
      prenom: map['prenom'] ?? '',
      email: map['email'] ?? '',
      motDepass: map['motDepass'] ?? '',
      role: map['role'] ?? '',
       status: map['status'] ?? '',
    );
  }

  // Méthode toMap
  Map<String, dynamic> toMap({bool includePassword = false}) {
    final data = {
      'id': id,
      'nom': nom,
      'prenom': prenom,
      'email': email,
      'role': role,
            'status': status,

    };

    // Inclure le mot de passe uniquement si demandé
    if (includePassword) {
      data['motDepass'] = motDepass;
    }

    return data;
  }
}
