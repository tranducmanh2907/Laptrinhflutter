import '../model/Dienthoai.dart';
import '../model/cuahang.dart';
import '../model/hoadon.dart';

  

    
  void testQuanLyHoaDon() {
  print("===== Test Quản Lý Hóa Đơn =====");

  try {
   
    var dt1 = Dienthoai("DT-001", "iPhone 13", "Apple", 20000, 25000, 50, true);

   
    var hoaDon1 = HoaDon(
      "HD-001",
      DateTime.now(),
      dt1,
      10, 
      26000, 
      "Nguyễn Văn A",
      "0987654321",
    );

    print("\nHóa đơn hợp lệ:");
    hoaDon1.hienThongTin();

    
    try {
      var hoaDonInvalid = HoaDon(
        "HD-002",
        DateTime.now(),
        dt1,
        100, 
        26000,
        "Nguyễn Văn B",
        "0987654322",
      );
    } catch (e) {
      print("\nRàng buộc tồn kho thất bại: $e");
    }

    
    print("\nTổng tiền hóa đơn: ${hoaDon1.tinhTongTien()}");
    print("Lợi nhuận thực tế: ${hoaDon1.tinhLoiNhuanThucTe()}");
  } catch (e) {
    print("Có lỗi trong quá trình quản lý hóa đơn: $e");
  }
}

  
  void testQuanLyDienThoai() {
  print("===== Test Quản Lý Điện Thoại =====");

  try {
   
    var dt1 = Dienthoai("DT-001", "iPhone 13", "Apple", 20000, 25000, 50, true);
    var dt2 = Dienthoai("DT-002", "Galaxy S23", "Samsung", 15000, 20000, 30, true);

    print("Thêm điện thoại thành công:");
    dt1.hienthithongtin();
    dt2.hienthithongtin();

    
    dt1.giaban = 27000;
    print("\nCập nhật giá bán thành công:");
    dt1.hienthithongtin();

   
    try {
      var dtInvalid = Dienthoai("", "Pixel 7", "Google", 15000, 14000, 10, true);
    } catch (e) {
      print("\nValidation thất bại (Giá bán phải lớn hơn giá nhập): $e");
    }
  } catch (e) {
    print("Có lỗi trong quá trình quản lý điện thoại: $e");
  }
}

  
  void testThongKe() {
  print("===== Test Thống Kê và Báo Cáo =====");

  
  var dt1 = Dienthoai("DT-001", "iPhone 13", "Apple", 20000, 25000, 50, true);
  var dt2 = Dienthoai("DT-002", "Galaxy S23", "Samsung", 15000, 20000, 30, true);

  var hoaDon1 = HoaDon("HD-001", DateTime(2024, 1, 1), dt1, 10, 26000, "A", "0987654321");
  var hoaDon2 = HoaDon("HD-002", DateTime(2024, 1, 10), dt2, 5, 21000, "B", "0987654322");

  var cuaHang = CuaHang("Cửa Hàng hutech", "456 Đường A", dt1);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);
  cuaHang.danhSachHoaDon.addAll([hoaDon1, hoaDon2]); 


  
  double doanhThu = cuaHang.danhSachHoaDon
      .where((hd) => hd.ngayban.isAfter(DateTime(2024, 1, 1)))
      .map((hd) => hd.tinhTongTien())
      .reduce((a, b) => a + b);

  print("\nDoanh thu từ 01/01/2024: $doanhThu");

 
  double loiNhuan = cuaHang.danhSachHoaDon
      .map((hd) => hd.tinhLoiNhuanThucTe())
      .reduce((a, b) => a + b);

  print("Tổng lợi nhuận: $loiNhuan");

  
  print("\nBáo cáo tồn kho:");
  for (var dt in cuaHang.danhSachDienThoai) {
    print(
        'Tên: ${dt.tendt}, Số lượng tồn: ${dt.sltk}, Trạng thái: ${dt.trangthai ? "Còn kinh doanh" : "Ngừng kinh doanh"}');
  }

  
  print("\nTop bán chạy:");
  var topBanChay = cuaHang.danhSachDienThoai
      .where((dt) => dt.sltk < 10) 
      .toList();

  topBanChay.sort((a, b) => a.sltk.compareTo(b.sltk));
  topBanChay.take(3).forEach((dt) => dt.hienthithongtin());
}
void main(){
  testQuanLyDienThoai();
  testThongKe();
  testQuanLyHoaDon();
}