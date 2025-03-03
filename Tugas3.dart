import 'dart:io';

void main() {
  stdout.write("Masukkan nama: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan nilai: ");
  int? nilai = int.tryParse(stdin.readLineSync() ?? "");

  if (nama == null || nama.isEmpty || nilai == null || nilai < 0 || nilai > 100) {
    print("Input tidak valid. Harap masukkan nama dan nilai antara 0 hingga 100.");
    return;
  }

  String kategoriIfElse;
  if (nilai >= 90) {
    kategoriIfElse = "A - Sangat Baik";
  } else if (nilai >= 80) {
    kategoriIfElse = "B - Baik";
  } else if (nilai >= 70) {
    kategoriIfElse = "C - Cukup";
  } else if (nilai >= 60) {
    kategoriIfElse = "D - Kurang";
  } else {
    kategoriIfElse = "E - Gagal";
  }

  String kategoriSwitch;
  switch (nilai ~/ 10) {
    case 10:
    case 9:
      kategoriSwitch = "A";
      break;
    case 8:
      kategoriSwitch = "B";
      break;
    case 7:
      kategoriSwitch = "C";
      break;
    case 6:
      kategoriSwitch = "D";
      break;
    default:
      kategoriSwitch = "E";
  }

  
  print("======= Cek Kategori Nilai =======");
  print("\nNama: $nama");
  print("Nilai: $nilai");
  print("Kategori dengan (if-else): $kategoriIfElse");
  print("Kategori (switch-case): $kategoriSwitch");
}

