import 'dart:io';
import 'dart:math';

class Sach {
  String _maSach;
  String _tenSach;
  String _tacGia;
  bool _trangThaiMuon;

  Sach(this._maSach, this._tenSach, this._tacGia, this._trangThaiMuon);

  String get maSach => _maSach;
  set maSach(String value) {
    if (value.isNotEmpty) {
      _maSach = value;
    }
  }

  String get tenSach => _tenSach;
  set tenSach(String value) {
    if (value.isNotEmpty) {
      _tenSach = value;
    }
  }

  String get tacGia => _tacGia;
  set tacGia(String value) {
    if (value.isNotEmpty) {
      _tacGia = value;
    }
  }
bool get trangThaiMuon => _trangThaiMuon;
  set trangThaiMuon(bool value) {
    
      _trangThaiMuon = value;
    
  }
  void hienThiThongTin() {
    print('Thông tin sách - Mã: $_maSach, Tên: $_tenSach, Tác giả: $_tacGia, Trạng thái mượn: $_trangThaiMuon');
  }
}