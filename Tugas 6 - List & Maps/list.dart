// range(startnum, finishnum) {
//   var angka = [];
//   if (startnum < finishnum) {
//     for (var i = startnum; i <= finishnum; i++) {
//       angka.add(i);
//     }
//   } else if (startnum > finishnum) {
//     for (var i = startnum; i >= finishnum; i--) {
//       angka.add(i);
//     }
//   }
//   return (angka);
// }
// void main() {
//   print(range(7, 21));
// }

// range(startnum, finishnum, step) {
//   var angka = [];
//   if (startnum < finishnum) {
//     for (var i = startnum; i <= finishnum; i += step) {
//       angka.add(i);
//     }
//   } else if (startnum > finishnum) {
//     for (var i = startnum; i >= finishnum; i -= step) {
//       angka.add(i);
//     }
//   }
//   return (angka);
// }

// void main() {
//   print(range(30, 5, 5));
// }

datahandling(i) {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Membaca"]
  ];
  print("Nomor ID :   " + input[i][0]);
  print("Nama Lengkap :   " + input[i][1]);
  print("TTL:   " + input[i][2] + " " + input[i][3]);
  print("Hobi :   " + input[i][4]);
}

void main() {
  for (var j = 0; j < 4; j++) {
    print(datahandling(j));
    print("");
    print("");
  }
}
