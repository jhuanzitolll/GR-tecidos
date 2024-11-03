import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get codigo => getField<double>('codigo');
  set codigo(double? value) => setField<double>('codigo', value);

  String? get dataField => getField<String>('data');
  set dataField(String? value) => setField<String>('data', value);

  String? get senha => getField<String>('senha');
  set senha(String? value) => setField<String>('senha', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get loja => getField<String>('loja');
  set loja(String? value) => setField<String>('loja', value);

  String? get userRef => getField<String>('User_Ref');
  set userRef(String? value) => setField<String>('User_Ref', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
