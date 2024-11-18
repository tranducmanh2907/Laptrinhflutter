import 'dart:io';
import 'dart:math';
import '../mode/sach.dart';
import '../mode/docgia.dart';
class ThuVien {
  List<Sach> _danhSachSach = [];
  List<DocGia> _danhSachDocGia = [];

  List<Sach> get danhSachSach => _danhSachSach;
  List<DocGia> get danhSachDocGia => _danhSachDocGia;

  void themSach(Sach sach) {
    _danhSachSach.add(sach);
  }

  void themDocGia(DocGia docGia) {
    _danhSachDocGia.add(docGia);
  }

  void hienThiDanhSachSach() {
    for (var sach in _danhSachSach) {
      sach.hienThiThongTin();
    }
  }
}