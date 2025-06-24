# 🍽️ Recipe Manager - App Flutter de Receitas

Este é um projeto de **gerenciador de receitas**, desenvolvido com o objetivo de praticar a construção de apps complexos com múltiplas telas, filtros e persistência temporária de estado utilizando **Flutter** e **Dart**.

---

## 🎯 Objetivo

Este app foi criado com propósitos **educacionais e funcionais**, buscando consolidar conhecimentos como:

* 🧭 Navegação entre telas com rotas nomeadas
* 📦 Gerenciamento de estado com `setState`
* 🧩 Reutilização de componentes customizados
* 🎚️ Aplicação de filtros dinâmicos com configurações personalizadas
* ❤️ Favoritar elementos com persistência local em memória
* 🖼️ Exibição de listas dinâmicas com categorias, imagens e detalhes

---

## 📸 Capturas de Tela

<p float="left">
  <img src="https://github.com/user-attachments/assets/42ac85ca-e1ee-4b08-ab85-1b1c5429fcc0" width="30%" />
  <img src="https://github.com/user-attachments/assets/9e49cc0a-201a-4d4c-a25e-5e67400634cc" width="30%" />
  <img src="https://github.com/user-attachments/assets/aad1bf1b-7fbe-4f7f-b765-301f5289519f" width="30%" />
</p>
<p float="left">
  <img src="https://github.com/user-attachments/assets/f6b30bc5-5175-4c80-bdb9-690a885178c0" width="30%" />
  <img src="https://github.com/user-attachments/assets/237aa273-a53d-4302-b423-30a3a994c7b8" width="30%" />
  <img src="https://github.com/user-attachments/assets/e8e9b873-c876-42ba-9a76-53f0a92a62bf" width="30%" />
</p>

---

## 🧠 Como funciona

O app oferece as seguintes funcionalidades:

* 📂 Visualize refeições organizadas por categorias
* 🔍 Aplique filtros alimentares (glúten, lactose, vegano, vegetariano)
* 📃 Veja o passo a passo e os ingredientes de cada receita
* ⭐ Marque e desmarque receitas como favoritas
* 🧭 Navegue entre telas através de uma barra inferior e menu lateral

Principais funcionalidades:

✅ Navegação estruturada com rotas nomeadas

✅ Filtros dinâmicos de acordo com preferências do usuário

✅ Layouts responsivos com `ListView`, `GridView`, `Drawer`

✅ Tematização customizada com `ThemeData` e fontes personalizadas

✅ Lógica de favoritos e filtros com estado centralizado

---

## 🧩 Estrutura do Projeto

```bash
lib/
├── main.dart                         # Ponto de entrada e configuração de rotas
├── data/
│   └── dummy_data.dart               # Lista estática de categorias e refeições
├── models/
│   ├── category.dart                 # Modelo de categoria
│   ├── meal.dart                     # Modelo de refeição
│   └── settings.dart                 # Modelo de configurações de filtro
├── components/
│   ├── category_item.dart            # Item da grade de categorias
│   ├── meal_item.dart                # Card para refeição na listagem
│   ├── main_drawer.dart              # Menu lateral
├── screens/
│   ├── categories_screen.dart        # Tela de categorias
│   ├── categories_meals_screen.dart  # Lista de refeições por categoria
│   ├── meal_detail_screen.dart       # Detalhes da receita
│   ├── favorite_screen.dart          # Lista de favoritos
│   ├── settings_screen.dart          # Tela de configurações de filtro
│   ├── tabs_screen.dart              # Navegação por abas
│   └── not_found_screen.dart         # Tela de rota não encontrada
├── themes/
│   └── main.dart                     # Tema personalizado da aplicação
├── utils/
│   └── consts/
│       └── app_routes.dart           # Definição de rotas nomeadas
```

---

## 🚀 Como executar

### Pré-requisitos:

* ✅ [Flutter SDK](https://flutter.dev/docs/get-started/install)
* ✅ Emulador Android/iOS ou dispositivo físico
* ✅ Editor como [VS Code](https://code.visualstudio.com/) ou Android Studio

### Passos:

1. Clone este repositório:

```bash
git clone https://github.com/vinicius-benevides/flutter-recipe-manager.git
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Execute o projeto:

```bash
flutter run
```

> Certifique-se de estar com um emulador Android/iOS ou dispositivo conectado.

---

## 📘 Aprendizados

Durante o desenvolvimento deste projeto, foram aplicados e reforçados os seguintes conceitos:

* Estruturação e modularização de código com múltiplas pastas e arquivos
* Navegação entre telas com rotas nomeadas e argumentos
* Implementação de `StatefulWidget` para filtros e favoritos
* Reutilização de widgets como `SwitchListTile`, `Drawer`, `ListTile`
* Manipulação de listas com filtros baseados em múltiplas condições
* Uso de `ModalRoute.of(context)` para acesso a dados entre telas

---

## 🛠️ Melhorias futuras

* 💾 Persistência de favoritos e filtros com SQLite ou Hive
* 🌐 Integração com API externa para buscar receitas
* 🖋️ Pesquisa de receitas por nome ou ingrediente
* 🌗 Suporte a tema escuro
* 🌍 Internacionalização (i18n)
* 📈 Tela de estatísticas (ex: refeições mais curtidas)

