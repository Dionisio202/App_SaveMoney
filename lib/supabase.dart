import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initializeSupabase() async {
  await Supabase.initialize(
    url: 'https://zqiagwapnqwnfhehhqom.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpxaWFnd2FwbnF3bmZoZWhocW9tIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTY5ODE0MjMsImV4cCI6MjAxMjU1NzQyM30.T8D-Cm3ApO12SPlxlg-sxKx9Uh2Qht1zZGwugvDkaX0',
  );
}

Future<void> fetchUserData() async {
  final supabase = Supabase.instance.client;

  final response = await supabase.from('users').select();

  if (response != null) {
    print('Datos de usuarios: $response');
  } else {
    print("error no se que pasa xd");
  }
}
