import 'dart:io';
import 'dart:math';
import '../mode/docgia.dart';
import '../mode/sach.dart';
import '../mode/ThuVien.dart';
void test() {
    // Tạo và quản lý sách
    Sach sach1 = Sach("MS001", "Harry Potter", "J.K. Rowling", false);
    
    // Kiểm tra getter/setter
    print("Thông tin sách trước khi thay đổi:");
    sach1.hienThiThongTin();
    
    sach1.maSach = "MS002";
    sach1.tenSach = "Lord of the Rings";
    sach1.tacGia = "J.R.R. Tolkien";
    
    print("\nThông tin sách sau khi thay đổi:");
    sach1.hienThiThongTin();
    
    // Kiểm tra quy trình mượn/trả sách
    DocGia docGia1 = DocGia("DG001", "Alice");
    docGia1.maDocGia = "DG001";
    docGia1.hoTen = "Alice";
    
    docGia1.muonSach(sach1);
    print("\nDanh sách sách đang mượn của độc giả:");
    for (var sach in docGia1.sachDangMuon) {
      sach.hienThiThongTin();
    }
    
    docGia1.traSach(sach1);
    print("\nDanh sách sách đang mượn sau khi trả sách:");
    for (var sach in docGia1.sachDangMuon) {
      sach.hienThiThongTin();
    }
    
    // Kiểm tra quản lý thư viện
    ThuVien thuVien = ThuVien();
    thuVien.themSach(sach1);
    thuVien.themDocGia(docGia1);
    
    print("\nDanh sách sách trong thư viện:");
    thuVien.hienThiDanhSachSach();
  }