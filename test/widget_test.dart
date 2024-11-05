import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gerenciador_contatos/main.dart'; 

void main() {
  testWidgets('Testa widget principal', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); 

    
    expect(find.byType(MyApp), findsOneWidget);
  });
}
