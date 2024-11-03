import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://nlmnbivhwgsnchfcvlwo.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5sbW5iaXZod2dzbmNoZmN2bHdvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjgzMDQ1NzUsImV4cCI6MjA0Mzg4MDU3NX0.pYxeR3FBcDX6ZBxBBPO_Bn-8dyiWmn4R_pnpeqvBeZU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
