

# 📱 Gerenciador de Contatos

Um aplicativo Flutter para gerenciar contatos, com funcionalidades completas de CRUD e backend simulado. Este projeto oferece uma interface amigável para adicionar, listar e filtrar contatos.

## 🛠️ Funcionalidades

- **Adicionar** e **listar** contatos
- **Filtrar** contatos por grupo
- **CRUD** completo com backend simulado (`json-server`)
- Interface amigável e intuitiva

---

## 🚀 Começando

### Pré-requisitos

- **Flutter SDK**: `>=3.5.0 <4.0.0`
- **Node.js** e **json-server** para simulação do backend

### Instalação

1. **Clone este repositório**:

   ```bash
   git clone https://github.com/seu-usuario/gerenciador_contatos.git
   cd gerenciador_contatos
   ```

2. **Instale as dependências do Flutter**:

   ```bash
   flutter pub get
   ```

3. **Configure o backend com `json-server`**:

   - Instale o `json-server` globalmente:

     ```bash
     npm install -g json-server
     ```

   - Inicie o servidor a partir do diretório do projeto:

     ```bash
     json-server --watch db.json
     ```

---

## ⚙️ Configuração do Backend

Para conectar o aplicativo ao backend simulado:

1. Use `10.0.2.2:3000` no emulador Android, ou o IP da máquina no dispositivo físico.
2. Ajuste a URL no arquivo `lib/services/api_service.dart` se necessário:

   ```dart
   const String apiUrl = "http://10.0.2.2:3000/contatos";
   ```

---

## ▶️ Executar o Aplicativo

1. Conecte um **dispositivo físico** ou inicie um **emulador Android/iOS**.
2. No diretório do projeto, execute:

   ```bash
   flutter run
   ```

---

## ✅ Executar Testes

Este projeto inclui testes unitários, testes com mock e testes de widget. Para executá-los, use:

```bash
flutter test
```

### 🧪 Testes Implementados

- **2 Testes Unitários**: Validação de dados do contato (nome e `grupoId`)
- **1 Teste com Mock**: Simulação de requisição GET com filtro aplicado
- **1 Teste de Widget**: Verifica a renderização do widget principal e componentes de interface

---

## 📁 Estrutura do Projeto

- **`lib/`**: Código principal do aplicativo
  - **`models/`**: Modelo de dados `Contato`
  - **`services/`**: API Service para comunicação com o backend
  - **`screens/`**: Telas do aplicativo
  - **`components/`**: Componentes reutilizáveis, como o cartão de contato
- **`test/`**: Contém os testes unitários, com mock e de widget

---

## 🛠️ Tecnologias Utilizadas

- **Flutter SDK**
- **json-server** para backend simulado
- **Mockito** para testes com mock

---

## 🤝 Contribuição

Sinta-se à vontade para fazer um fork e propor melhorias.

---

## 📄 Licença

Este projeto é destinado a um trabalho da faculdade.

