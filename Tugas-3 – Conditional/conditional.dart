// import 'dart:io';

// void main(List<String> args) {
//   print("Instal Aplikasi (Y/T) ?");
//   String pilihan = stdin.readLineSync()!;
//   var install = pilihan;
//   if (install == "Y" || install == "y") {
//     print("Anda Akan Menginstall Aplikasi Dart");
//   } else {
//     print("Aborted");
//   }
// }

// import 'dart:io';

// void main(List<String> args) {
//   stdout.write("Silahkan Masukkan Nama Anda : ");
//   String name = stdin.readLineSync()!;
//   stdout.write("Silahkan Masukkan Karakter Anda : ");
//   String karak = stdin.readLineSync()!;
//   var nama = name;
//   var karakter = karak;

//   if (nama.isEmpty) {
//     print("Nama Harus Di Isi!!");
//   } else {
//     if (karakter == "Penyihir" || karakter == "penyihir") {
//       print("Selamat Datang di Dunia Werewolf $nama");
//       print(
//           "Halo Penyihir $nama, Kamu dapat Melihat Siapa Yang Menjadi Werewolf!");
//     } else if (karakter == "Guard" || karakter == "guard") {
//       print("Selamat Datang di Dunia Werewolf $nama");
//       print(
//           "Halo Guard $nama, Kamu Akan Membantu Melindungi Temanmu dari Serangan Werewolf.");
//     } else if (karakter == "Werewolf" || karakter == "werewolf") {
//       print("Selamat Datang di Dunia Werewolf $nama");
//       print("Halo Werewolf $nama, Kamu Akan Memakan Mangsa Setiap Malam!");
//     } else {
//       print("Halo $nama, Pilih Peranmu Untuk Memulai Game!");
//     }
//   }
// }

// import 'dart:io';

// void main(List<String> args) {
//   stdout.write("Masukkan Hari (1/2/3/..) : ");
//   int hari = int.parse(stdin.readLineSync()!);

//   switch (hari) {
//     case 1:
//       {
//         print(
//             "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
//         break;
//       }
//     case 2:
//       {
//         print(
//             "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
//         break;
//       }
//     case 3:
//       {
//         print(
//             "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
//         break;
//       }
//     case 4:
//       {
//         print(
//             "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
//         break;
//       }
//     case 5:
//       {
//         print("Hidup tak selamanya tentang pacar.");
//         break;
//       }
//     case 6:
//       {
//         print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
//         break;
//       }
//     case 7:
//       {
//         print(
//             "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
//         break;
//       }
//   }
// }

// void main() {
//   var hari = 18;
//   var bulan = 10;
//   var tahun = 2002;

//   switch (bulan) {
//     case 1:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Januari $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 2:
//       {
//         if (hari <= 28 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Februari $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 3:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Maret $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 4:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari April $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 5:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Mei $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 6:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Juni $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 7:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Juli $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 8:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Agustus $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 9:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari September $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 10:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Oktober $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 11:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari November $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     case 12:
//       {
//         if (hari <= 31 && hari > 1 && tahun >= 1900 && tahun <= 2200) {
//           print("$hari Desember $tahun");
//         } else {
//           print("Tanggal atau Tahun tidak Sesuai!");
//         }
//         break;
//       }
//     default:
//       {
//         print("Bulan tidak Sesuai");
//       }
//   }
// }
