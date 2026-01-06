import 'package:go_router/go_router.dart';
import 'package:rag_knowledge_assistant_frontend/features/documents/views/document_page.dart';

final appRouter = GoRouter(
  initialLocation: '/documents',
  routes: [
    GoRoute(path: '/documents', builder: (context, state) => DocumentPage()),
  ],
);
