# Dokumentacja projektu Data Collector

## Opis projektu

Data Collector to aplikacja stworzona przy użyciu frameworku Flutter, która służy do zapisywania danych tekstowych i zarządzania nimi poprzez aplikację wieloplatformową. Aplikacja umożliwia dodawanie, edytowanie, usuwanie i przeglądanie danych.

## Technologie

### Komponenty mobilne z frameworku Flutter

- MaterialApp
- Scaffold
- AppBar
- Text
- Column
- Row
- Container
- SizedBox
- IconButton
- ListView
- ListTile
- BlendMode.dstATop
- ColorFilter.mode do manipulowania kolorami

### Inne komponenty

- Form
- TextFormField
- AlertDialog

### Animacje przejść

- MaterialPageRoute

## Baza danych

Do projektu zostały zaimportowane pakiety Firebase. Baza danych została utworzona i zaimplementowana według instrukcji udostępnionej na stronie [Firebase](https://firebase.google.com/).

## Struktura projektu

### Model danych

W pliku `bio.dart` znajduje się klasa `Bio`, która reprezentuje dane biograficzne. Klasa ta zawiera pola na następujące informacje:

- `fullName`: pełne imię i nazwisko użytkownika,
- `dateOfBirth`: data urodzenia w formacie "dd-mm-yyyy",
- `country`: kraj pochodzenia użytkownika,
- `city`: miasto zamieszkania użytkownika.

### Widget DataCollector

Plik `main.dart` zawiera główny widget `DataCollector`, który odpowiada za interfejs użytkownika aplikacji. W tym widżecie użytkownik może wprowadzać nowe dane biograficzne poprzez formularz, który jest wyświetlany po naciśnięciu przycisku dodawania. Wprowadzone dane są walidowane i zapisywane do obiektu `Bio`, który może być dalej wykorzystywany w aplikacji.

## Instalacja i uruchomienie

Aby uruchomić projekt, wykonaj następujące kroki:

1. Sklonuj repozytorium.
2. Uruchom terminal w głównym katalogu projektu.
3. Uruchom polecenie `flutter run`.

## Autor

Paulina D.

## Licencja

Ten projekt jest objęty [licencją MIT](https://couto.mit-license.org/). Szczegółowe informacje można znaleźć w pliku [LICENSE](LICENSE).

