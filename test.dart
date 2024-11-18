import 'dart:io';
import 'dart:math';
import '../models/lophoc.dart';
import '../models/sinhvien.dart';
void main(){


 var sv = Sinhvien('Nguyen Van A', 20, 'SV001', 8.5);
  print('Test getter: ${sv.hoten}');
  sv.hoten = 'Nguyen Van B';
  print('Sau khi set: ${sv.hoten}');
  print('Xep loai: ${sv.xeploai()}');


  var lop = Lophoc('21DTHD5');
  lop.themsv(Sinhvien('Nguyen Van A', 20, 'SV001', 8.5));
  lop.themsv(Sinhvien('Nguyen Van B', 21, 'SV002', 6.5));
  lop.themsv(Sinhvien('Nguyen Van C', 22, 'SV003', 5.5));
  lop.themsv(Sinhvien('Nguyen Van F', 23, 'SV004', 4));
  lop.hienthisv();

}
