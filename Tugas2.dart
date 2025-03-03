// ignore_for_file: unused_local_variable
void main() {
  // List untuk menyimpan daftar nama mahasiswa
  List<String> mahasiswa = [
    "Rahmad Wicaksono",
    "Hamada Kemal",
    "Candrika Fidyah",
    "Ahmad Fadhilah",
    "Umar"
  ];

  // Set untuk menyimpan mata kuliah unik
  Set<String> mataKuliahUnik = {
    "SBD2",
    "Kecerdasan Artfisial",
    "Pemrograman",
    "Kalkulus",
    "Statistika 2"
  };

  // Map untuk menyimpan data mahasiswa
  Map<String, Map<String, dynamic>> dataMahasiswa = {
    "Rahmad Wicaksono": {
      "NPM": "51422348",
      "Mata Kuliah": ["SBD2", "Pemrograman"]
    },
    "Hamada Kemal": {
      "NPM": "51422471",
      "Mata Kuliah": ["Kecerdasan Artifisal", "Kalkulus"]
    },
    "Candrika Fidyah": {
      "NPM": "51402234",
      "Mata Kuliah": ["Pemrograman", "Statistika 2"]
    },
    "Ahmad Fadhilah": {
      "NPM": "51421540",
      "Mata Kuliah": ["Kecerdasan Artifisal", "Statistika 2"]
    },
    "Umar": {
      "NPM": "51422005",
      "Mata Kuliah": ["SBD2", "Kalkulus"]
    }
  };

  // Menambahkan mahasiswa baru
  mahasiswa.add("Pigo");
  dataMahasiswa["Pigo"] = {
    "NPM": "51420123",
    "Mata Kuliah": ["SBD2", "Pemrograman"]
  };

  // Menghapus satu mahasiswa (misalnya Charlie)
  mahasiswa.remove("Umar");
  dataMahasiswa.remove("Umar");

  // Menampilkan daftar mahasiswa setelah perubahan
  print("Daftar Mahasiswa Setelah Perubahan:");
  for (var nama in mahasiswa) {
    print("Nama: $nama");
    print("NPM: ${dataMahasiswa[nama]?["NPM"]}");
    print("Mata Kuliah: ${dataMahasiswa[nama]?["Mata Kuliah"]}");
    print("----------------------");
  }
}


