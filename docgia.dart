import 'dart:io';
import 'dart:math';
import '../mode/sach.dart';
class DocGia {
  String _maDocGia;
  String _hoTen;
  List<Sach> _sachDangMuon = [];

DocGia(this._maDocGia, this._hoTen);
  String get maDocGia => _maDocGia;
  set maDocGia(String value) {
    if (value.isNotEmpty) {
      _maDocGia = value;
    }
  }
List<Sach> get sachDangMuon => _sachDangMuon;
  String get hoTen => _hoTen;
  set hoTen(String value) {
    if (value.isNotEmpty) {
      _hoTen = value;
    }
  }

  void muonSach(Sach sach) {
    if (!_sachDangMuon.contains(sach)) {
      _sachDangMuon.add(sach);
      sach.trangThaiMuon = true;
    } else {
      print('Sách đã được mượn.');
    }
  }

  void traSach(Sach sach) {
    if (_sachDangMuon.contains(sach)) {
      _sachDangMuon.remove(sach);
      sach.trangThaiMuon = false;
    } else {
      print('Sách chưa được mượn.');
    }
  }
}
