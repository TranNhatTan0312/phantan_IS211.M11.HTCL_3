--csdl quan ly ban xe--
--drop database QLBX;
create database QLBX;
use QLBX;

CREATE TABLE KhachHang (
 MaKH varchar(4) PRIMARY KEY,
 HoTen VARCHAR (255) NOT NULL,
 Sdt VARCHAR (25),
 email VARCHAR (255) ,
 TenDuong VARCHAR (255),
 ThanhPho VARCHAR (50),
);

create table Xe (
MaXe varchar(5) primary key ,
TenXe varchar(50),
LoaiXe varchar(20),
ngaysx date,
ThuongHieu varchar(50),
PhanKhoi varchar(50),
GiaTien int,
);

create table ChiNhanh(
machinhanh varchar(10) primary key,
tenchinhanh varchar(100), 
sodt varchar(20)
) ;

create table KhoXe(
machinhanh varchar(10),
MaXe varchar(5) ,
SoLuong int,
ngaycapnhat date,
constraint fk_kho_chinhanh foreign key(MaChiNhanh)
references chinhanh(machinhanh),
constraint fk_kho_xe foreign key(MaXe)
references xe(MaXe)
);

create table Kho_TinhTrang(
MaChiNhanh varchar(10),
MaXe varchar(5),
TinhTrang varchar(20),
KhuyenMai int,
constraint fk_nvkho_chinhanh foreign key(MaChiNhanh)
references chinhanh(MaChiNhanh),
constraint fk_nvkho_sach foreign key(MaXe)
references Xe(MaXe)
);
create table NhanVien (
MaNV varchar(4) primary key,
TenNV varchar(50),
DiaDhi varchar(30),
Sdt varchar(20),
Luong int,
MaChiNhanh varchar(10),
constraint fk_nv_chinhanh foreign key(MaChiNhanh)
references chinhanh(MaChiNhanh)
);

create table HoaDon(
MaHD varchar(4) primary key,
MaKH varchar(4),
MaChiNhanh varchar(10),
MaNV varchar(4),
NgayDatHang date,
NgayNhanHang date,
ThoiGianBaoHanh date,
constraint fk_hd_khachhang foreign key(MaKH)
references KhachHang(MaKH),
constraint fk_hd_nhanvien foreign key(MaNV)
references NhanVien(MaNV),

);

create table CTHD(
MaCTHD varchar(4) primary key,
MaHD varchar(4) not null,
MaXe varchar(5),
SoLuong int,
KhuyenMai int,
GiaTien int,
constraint fk_cthd_hd foreign key(MaHD)
references HoaDon(MaHD),
);
insert into khachhang values(‘KH01’,’Lê Văn Thông’,’01649077967’,’thongle@gmail.com’,’B3-202 An Hòa 7, Nam Long, Phường Tân Thuận Đông, Quận 7’,’TP HCM’);
insert into khachhang values(‘KH02’,’Trác Huệ Minh’,’0903851128’,’minhhue@gmail.com’,’233/17 Nguyễn Trãi, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH03’,’Nguyễn Đức Tiến’,’0903814022’,’minhhue@gmail.com’,’3E/27 Phổ Quang, Phường 2, Quận Tân Bình’,’TP HCM’);
insert into khachhang values(‘KH04’,’Daniel Alves’,’0903143688’,’dan_alv@gmail.com’,’6H Phan Kế Bính, Phường ĐaKao, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH05’,’Nguyễn Đoàn Nguyệt Hằng’,’0912335868’,’hangnguyen@gmail.com’,’Cty TNHH Dp Việt Pháp, 60 Thổ Quan, Khâm Thiên, Đống Đa’,’Hà Nội’);
insert into khachhang values(‘KH06’,’Triệu Thị Hương Giang’,’0903771522’,’hg_giang_mil@gmail.com’,’A1.28 Saigon Pearl Villas, 92 Nguyễn Hữu Cảnh, Phường 22, Quận Bình Thạnh’,’TP HCM’);
insert into khachhang values(‘KH07’,’Phạm Hạnh’,’0908022866’,’phamhanh@gmail.com’,’601 Nhật Tảo, Phường 7, Quận 11’,’TP HCM’);
insert into khachhang values(‘KH08’,’Đỗ Thị Thu Thủy’,’0904221030’,’dothuy@gmail.com’,’Số 9, ngõ 156/38 phố Hồng Mai, Quận Hai Bà Trưng’,’Hà Nội’);
insert into khachhang values(‘KH09’,’Nguyễn Văn Thăng’,’0913888339’,’thangnv@gmail.com’,’Linh Hotel, 16 Mac Thi Buoi, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH11’,’Kim Hee Chan’,’0902308068’,’kimkr@gmail.com’,’Panorama 12B, 528 A7, Phú Mỹ Hưng, Quận 7’,’TP HCM’);
insert into khachhang values(‘KH12’,’Luong Phuoc Hong’,’037562381’,’hongluong@gmail.com’,’016 Lô C Chung cư Nguyễn Thiện Thuật, Phường 1, Quận 3’,’TP HCM’);
insert into khachhang values(‘KH13’,’Nguyễn Hữu Đặng’,’082789531’,’huudang@gmail.com’,’249/21B Bến Phú Lâm, Phường 9, Quận 6’,’TP HCM’);
insert into khachhang values(‘KH14’,’Doãn Thùy Dung’,’0883535311’,’dungtd@gmail.com’,’282Bis Cống Quỳnh, Phường Phạm Ngũ Lão, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH15’,’Nguyễn Thị Hải’,’0907578422’,’nguyenthihai@gmail.com’,’222/10/5A/16 Ngô Tất Tố, Phường 22, Quận Bình Thạnh’,’TP HCM’);
insert into khachhang values(‘KH16’,’Đoàn Văn Trang’,’0357746182’,’trangdoan@gmail.com’,’69/1/3 Đường 17, Khu phố 3, Hiệp Bình Chánh, Quận Thủ Đức’,’TP HCM’);
insert into khachhang values(‘KH17’,’Võ Thị Bích Lan’,’0937846910’,’volan@gmail.com’,’P320 Tòa nhà Petro Vietnam, Số 8 Hoàng Diệu’,’Vũng Tàu’);
insert into khachhang values(‘KH18’,’Phan Trí Thịnh’,’0364985723’,’phanthinh@gmail.com’,’781/A23 Lê Hồng Phong, Phường 12, Quận 10’,’TP HCM’);
insert into khachhang values(‘KH19’,’Trần Quang Nghĩa’,’0905234123’,’nghiatran@gmail.com’,’127 Xô Viết Nghệ Tĩnh, Phường 17, Quận Bình Thạnh’,’TP HCM’);
insert into khachhang values(‘KH20’,’Phạm Hoàng Quỳnh Hoa’,’0370308068’,’hoapham@gmail.com’,’23C10 Hoa Hồng 2, Phường 2, Quận Phú Nhuận’,’TP HCM’);
insert into khachhang values(‘KH21’,’Phạm Hồng Minh’,’0933528248’,’phanminh@gmail.com’,’39/271 Phan Huy Ích, Phường 12, Tổ 36, Quận Gò Vấp’,’TP HCM’);
insert into khachhang values(‘KH22’,’Trần Thị Kim Cúc’,’0902343430’,’cuctran@gmail.com’,’100 Phố Linh Lang,Quận Ba Đình’,’Hà Nội’);
insert into khachhang values(‘KH23’,’Phạm Quốc Trung’,’0958168168’,’phamtrung@gmail.com’,’8F Lạc Long Quân, Phường 2’,’Vũng Tàu’);
insert into khachhang values(‘KH24’,’Phạm Thị Châu Giang’,’0903397364’,’giangchau@gmail.com’,’7-9-11 Trần Xuân Hòa, Phường 7, Quận 5’,’TP HCM’);
insert into khachhang values(‘KH25’,’Metharam Murli’,’0913266100’,’murli@gmail.com’,’76/1 Tôn Thất Đạm, Phường Bến Nghé, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH26’,’Trần Thị Phúc Hương’,’0903003587’,’phuchuong@gmail.com’,’76/1 Tôn Thất Đạm, Phường Bến Nghé, Quận 1’,’TP HCM’);
insert into khachhang values(‘KH27’,’Lê Ngân Hà’,’0903575717’,’nganha@gmail.com’,’A801 Chung cư Hoàng Anh Gia Lai, 357 Lê Văn Lương, Quận 7’,’TP HCM’);
insert into khachhang values(‘KH28’,’Huỳnh Văn Hoàng’,’0908356264’,’hoanghuynh@gmail.com’,’F24 Nhật Tảo, Phường 7, Quận 11,’,’TP HCM’);
insert into khachhang values(‘KH29’,’Trần Thị Liên Hương’,’0982166950’,’lienhuong@gmail.com’,’23 Nguyễn Hữu Tiến, Phường Tây Thạnh, Quận Tân Phú’,’TP HCM’);
insert into khachhang values(‘KH30’,’Nguyễn Thị Minh Thi’,’0913284310’,’minhthi@gmail.com’,’41 Trại Tóc - Ô Chợ Dừa, Đống Đa’,’Hà Nội’);
--Tan--
INSERT INTO chinhanh VALUES ('CN01','Quan 3, TPHCM','0939013913'); 
INSERT INTO chinhanh VALUES ('CN02','Quan Hoang Kiem, Ha Noi',' 090712475'); 
INSERT INTO chinhanh VALUES ('CN03','Quan 8, TPHCM',' 0942135815'); 
INSERT INTO chinhanh VALUES ('CN04','Quận 11, TPHCM','0997801032'); 
INSERT INTO chinhanh VALUES ('CN05','Quận Hoàng Mai, Hà Nội','0732398261');  

INSERT INTO xe VALUES ('Xe01','Winner X','Xe tay con', to_date('29/01/2021','dd/mm/yyyy'),'Honda','150' , '31000000');
INSERT INTO xe VALUES ('Xe02','Vespa Sprint S','Xe tay ga', to_date('10/10/2021','dd/mm/yyyy'),'Vespa','110' , '80000000');
INSERT INTO xe VALUES ('Xe03','Wave alpha 2021','Xe so', to_date('20/06/2021','dd/mm/yyyy'),'Honda' '110' , '22000000');
INSERT INTO xe VALUES ('Xe04','Sirius','Xe so', to_date('03/10/2021','dd/mm/yyyy'),'Yamaha' '110' , '22000000');
INSERT INTO xe VALUES ('Xe05','Liked 50','Xe tay ga', to_date('19/05/2020','dd/mm/yyyy'),'Honda' '50' , '20000000');
INSERT INTO xe VALUES ('XE06','SH Mode 150','Xe tay ga', to_date('29/11/2021','dd/mm/yyyy'),'Honda','150' , '125000000');
INSERT INTO xe VALUES ('XE07','Air Blade ','Xe tay ga', to_date('11/10/2019','dd/mm/yyyy'),'Honda','125' , '45000000');
INSERT INTO xe VALUES ('XE08','Exciter GP ','Xe tay côn', to_date('02/05/2020','dd/mm/yyyy'),'Yamaha' '150' , '47000000');
INSERT INTO xe VALUES ('XE08','Exciter RC ','Xe tay côn', to_date('02/05/2020','dd/mm/yyyy'),'Yamaha' '150' , '45000000');
INSERT INTO xe VALUES ('XE08','Exciter Camo ','Xe tay côn', to_date('02/05/2020','dd/mm/yyyy'),'Yamaha' '150' , '48000000');
INSERT INTO xe VALUES ('XE11','SH Mode 125','Xe tay ga', to_date('29/01/2021','dd/mm/yyyy'),'Honda','125' , '55000000');
INSERT INTO xe VALUES ('XE12','PCX','Xe tay ga', to_date('11/10/2019','dd/mm/yyyy'),'Honda','125' , '50000000');
INSERT INTO xe VALUES ('XE13','Lead ','Xe tay ga', to_date('02/05/2019','dd/mm/yyyy'),'Honda' '125' , '40000000');
INSERT INTO xe VALUES ('XE14','946 Armani','PKL', to_date('03/11/2018','dd/mm/yyyy'),'Vespa' '155' , '40500000');
INSERT INTO xe VALUES ('XE15','Sirius FI','Xe số', to_date('12/06/2019','dd/mm/yyyy'),'Yamaha' '110' , '23000000');
INSERT INTO xe VALUES ('XE16','Grande Deluxe 2016','Xe tay ga', to_date('20/01/2016','dd/mm/yyyy'),'Yamaha','125' , '40000000');
INSERT INTO xe VALUES ('XE17','FZ 150i','Xe tay côn', to_date('03/10/2020','dd/mm/yyyy'),'Yamaha','150' , '66000000');
INSERT INTO xe VALUES ('XE18','Axelo','Xe tay côn', to_date('02/08/2018','dd/mm/yyyy'),'Suzuki' '125' , '28000000');
INSERT INTO xe VALUES ('XE19','Galaxy SR 115','Xe số', to_date('07/11/2020','dd/mm/yyyy'),'SYM' '115' , '20000000');
INSERT INTO xe VALUES ('XE20','GSX','PKL', to_date('11/03/2017','dd/mm/yyyy'),'Suzuki' '1000' , '408000000');

INSERT INTO xe VALUES ('XE21','Vision','Xe tay ga', to_date('10/01/2020','dd/mm/yyyy'),'Honda','125' , '35000000');
INSERT INTO xe VALUES ('XE22','Vision Cao Cap','Xe tay ga', to_date('10/01/2020','dd/mm/yyyy'),'Honda','125' , '400000000');
INSERT INTO xe VALUES ('XE23','Lead Cao Cap ','Xe tay ga', to_date('02/05/2019','dd/mm/yyyy'),'Honda' '125' , '45000000');
INSERT INTO xe VALUES ('XE24','YZF-R3',Xe tay côn', to_date('03/05/2015','dd/mm/yyyy'),'Yamaha' '320' , '14000000');
INSERT INTO xe VALUES ('XE25','MN-X','Xe tay ga', to_date('12/06/2015','dd/mm/yyyy'),'Yamaha' '150' , '80000000');
INSERT INTO xe VALUES ('XE26','TFX','Xe tay ga', to_date('20/11/2016','dd/mm/yyyy'),'Yamaha','150' , '81000000');
INSERT INTO xe VALUES ('XE27','NVX','Xe tay ga', to_date('03/10/2017','dd/mm/yyyy'),'Yamaha','155' , '50000000');
INSERT INTO xe VALUES ('XE28','Raider','Xe tay côn', to_date('02/08/2017','dd/mm/yyyy'),'Suzuki' '150' , '50000000');
INSERT INTO xe VALUES ('XE29','Raider GP','Xe tay côn', to_date('07/11/2017','dd/mm/yyyy'),'Suzuki' '150' , '55000000');
INSERT INTO xe VALUES ('XE30','Hayabusa','PKL', to_date('11/03/2016','dd/mm/yyyy'),'Suzuki' '1340' , '600000000');

INSERT INTO xe VALUES ('XE31','Gladius','PKL', to_date('29/01/2018','dd/mm/yyyy'),'Suzuki','650' , '435000000');
INSERT INTO xe VALUES ('XE32','Beverly','Xe tay ga', to_date('11/10/2019','dd/mm/yyyy'),'Piaggio','125' , '150000000');
INSERT INTO xe VALUES ('XE33','Zip ','Xe tay ga', to_date('02/05/2020','dd/mm/yyyy'),'Piaggio' '100' , '30000000');
INSERT INTO xe VALUES ('XE34','PX 125','Vespa', to_date('03/08/2019','dd/mm/yyyy'),'Vespa' '125' , '12200000');
INSERT INTO xe VALUES ('XE35','PX 125 70 năm','Vespa', to_date('03/08/2020','dd/mm/yyyy'),'Vespa' '125' , '13200000');
INSERT INTO xe VALUES ('XE36','Grande Deluxe 2016','Xe tay ga', to_date('20/01/2016','dd/mm/yyyy'),'Yamaha','125' , '40000000');
INSERT INTO xe VALUES ('XE37','Amigo','Xe số', to_date('03/10/2015','dd/mm/yyyy'),'SYM','50' , '16000000');
INSERT INTO xe VALUES ('XE38','Janus','Xe tay ga', to_date('02/09/2018','dd/mm/yyyy'),'Yamaha' '125' , '30000000');
INSERT INTO xe VALUES ('XE39','TNT 125','Xe tay côn', to_date('07/11/2017','dd/mm/yyyy'),'Beneli' '125' , '50000000');
INSERT INTO xe VALUES ('XE40','Africa Twin','PKL', to_date('02/01/2021','dd/mm/yyyy'),'Honda' '1084' , '690000000');




--Tan--
insert into NhanVien values('NV01','Nguyễn Thị Minh','89-91 Nguyễn Du, Phòng 21, Lầu 1, Phường Bến Nghé, Quận 1,Tp HCM','0914251210','4500000','CN01');
insert into NhanVien values('NV02','Lê Đình Bích','35/37 Xô Viết Nghệ Tĩnh, Phường 17, Quận Bình Thạnh, TpHCM','0900883310','4500000','CN01');
insert into NhanVien values('NV03','Nguyễn Công Mạnh','36/1 Lương Văn Can, Phường 2, Tp Vũng Tàu','0982269911','4000000','CN03');
insert into NhanVien values('NV04','Cao Thị Linh','19 Trần Nhật Duật, Phường Tân Định, Quận 1, TpHCM','0913543729','5500000','CN03');
insert into NhanVien values('NV05','Cao Minh Trang','433 Lạc Long Quân, Phường 5, Quận 11, TpHCM','0310022310','4500000','CN03');
insert into NhanVien values('NV06','Ngô Thị Quỳnh Nga','193 Tổ 20A Đường Giáp Bát, Hà Nội','0378933571','4400000','CN02');
insert into NhanVien values('NV07','Võ Văn Luân','Số 3 Tổ 47 Cụm 9, Vỏng Thị, Phường Bưởi, Tây Hồ, Hà Nội','0381314572','4700000','CN02');
insert into NhanVien values('NV08','Doãn Hoài Phương','5+7 Nhà B, Nam Tràng, Trúc Bạch , Ba Đình, Hà Nội','09986722641','4500000','CN05');
insert into NhanVien values('NV09','Lâm Bửu Đam','7 Công Lý, KP4, P.Bình Thọ, Q.Thủ Đức, TP.HCM','0351720019','4900000','CN04');
insert into NhanVien values('NV10','Tống Thị Hải Thu','453/13KH Lê Văn Sỹ, Phường 12, Quận 3, TpHCM','0825849986','4200000','CN04');
insert into NhanVien values('NV11','Nguyễn Tấn Tài','8 Nguyễn Văn Cừ, Phòng 21, Lầu 2, Phường Bến Nghé, Quận 1,Tp HCM','0913454233','4500000','CN01');
insert into NhanVien values('NV12','Lê Hồng Bích','14/18 Lầu 1, Tôn Thất Đạm, Phường Nguyễn Thái Bình, Quận 1, TPHCM','091366622','4500000','CN01');
insert into NhanVien values('NV13','Nguyễn Công Tuyền','210 Hai Bà Trưng, Phường Tân Định, Quận 1, TpHCM','0981266611','4000000','CN03');
insert into NhanVien values('NV14','Phạm Linh','234 Ngô Tất Tố, Phường 22, Quận Bình Thạnh, TpHCM','0913007333','5500000','CN03');
insert into NhanVien values('NV15','Lương Minh Trang','343/32 Nguyễn Trọng Tuyển, Phường 1, Quận Tân Bình, TpHCM','0314225551','4500000','CN01');
insert into NhanVien values('NV16','Ngân Thị Quỳnh','315 Nam Kỳ Khởi Nghĩa, Phường 7, Quận 3, TpHCM','0378925999','4400000','CN03');
insert into NhanVien values('NV17','Đỗ Văn Tài','Số 5 Vỏng Thị, Phường Bưởi, Tây Hồ, Hà Nội','0381319291','4700000','CN02');
insert into NhanVien values('NV18','Đinh Hoài Nam','Sô 8, Nam Tràng, Trúc Bạch , Ba Đình, Hà Nội','09987472721','4500000','CN05');
insert into NhanVien values('NV19','Cao Minh Toàn','33 Ngõ 15 Phạm Ngọc Thạch, Hoàn Kiếm, Đống Đa, Hà Nội','0351721111','4900000','CN05');
insert into NhanVien values('NV20','Trần Đức Đạt','51/5 Nguyễn Trãi, Phường 2, Quận 5, TpHCM','0825898888','4200000','CN04');
insert into NhanVien values('NV21','Tống Kiệt','315 Nam Kỳ Khởi Nghĩa, Phường 7, Quận 3, TpHCM','0825890101','4200000','CN04');
insert into NhanVien values('NV22','Nguyễn Minh Anh','Ngõ 34/4 Nguyễn Hồng, nhà số 5, Khu A Nam Thành Công, Láng Hạ, Quận Đống Đa, Hà Nội','091929310','4500000','CN02');
insert into NhanVien values('NV23','Vũ Công Mạnh','Xã Thụy Lôi, Huyện Kim Bảng, Tỉnh Hà Nam','0982637771','4000000','CN02');
insert into NhanVien values('NV24','Nguyễn Đức Nam','Số nhà 5C, Ngõ 153/30 Phú Đô, Tổ 2, Phường Phú Đô, Nam Từ Liêm, Hà Nội','0913007000','5500000','CN05');
insert into NhanVien values('NV25','Lê Kiên Cường','Số 48 ngõ 291, Phố Khương Trung, Phường Khương Trung, Thanh Xuân, Hà Nội','0312232333','4500000','CN02');
insert into NhanVien values('NV26','Tào Mạnh Vũ','193 Tổ 20A Đường Giáp Bát, Hà Nội','0901925612','4400000','CN02');
insert into NhanVien values('NV27','Lê Xuân','Số nhà 6 ngõ 159 Pháo Đài Láng, Phường Láng Thượng, Quận Đống đa, Hà Nội','098712521','4700000','CN02');
insert into NhanVien values('NV28','Đinh Thái','Số 54, đường Thúy Lĩnh, Phường Lĩnh Nam, Quận Hoàng Mai, Hà Nội','09987402222','4500000','CN05');
insert into NhanVien values('NV29','Trương Đình Hải','Nhà số 2, Ngõ 7 Đường Phùng Khoang,, Phường Trung Văn, Quận Nam Từ Liêm, Hà Nội','0351752989','4900000','CN05');
insert into NhanVien values('NV30','Vi Văn Tiến','Số 562/59/55 đường Thụy Khuê,, Phường Bưởi, Quận Tây Hồ, Hà Nội','0825892123','4200000','CN02');


<<<<<<< HEAD
--Manh
INSERT INTO Hoadon VALUES ('HD01','KH01','CN01','NV01', to_date('01/01/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD02','KH02','CN01','NV02', to_date('02/02/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD03','KH03','CN03','NV03', to_date('03/03/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD04','KH04','CN03','NV04', to_date('04/04/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD05','KH05','CN03','NV05', to_date('05/05/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD06','KH06','CN02','NV06', to_date('06/06/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD07','KH07','CN02','NV07', to_date('07/07/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD08','KH08','CN05','NV08', to_date('08/08/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD09','KH09','CN04','NV09', to_date('09/09/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD10','KH10','CN04','NV10', to_date('10/10/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD11','KH11','CN01','NV11', to_date('11/11/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD12','KH12','CN01','NV12', to_date('12/12/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD13','KH13','CN03','NV13', to_date('13/01/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD14','KH14','CN03','NV14', to_date('14/02/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD15','KH15','CN01','NV15', to_date('15/03/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD16','KH16','CN03','NV16', to_date('16/04/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD17','KH17','CN02','NV17', to_date('17/05/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD18','KH18','CN05','NV18', to_date('18/06/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD19','KH19','CN05','NV19', to_date('19/07/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD20','KH20','CN04','NV20', to_date('20/08/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD21','KH21','CN04','NV21', to_date('21/09/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD22','KH22','CN02','NV22', to_date('22/10/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD23','KH23','CN02','NV23', to_date('23/11/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD24','KH24','CN05','NV24', to_date('24/12/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD25','KH25','CN02','NV25', to_date('25/01/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD26','KH26','CN02','NV26', to_date('26/02/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD27','KH27','CN02','NV27', to_date('27/03/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD28','KH28','CN05','NV28', to_date('28/04/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD29','KH29','CN05','NV29', to_date('29/05/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));
INSERT INTO Hoadon VALUES ('HD30','KH30','CN02','NV30', to_date('30/06/2021','dd/mm/yyyy'), to_date('10/01/2021','dd/mm/yyyy'),to_date('10/01/2022','dd/mm/yyyy'));

INSERT INTO CTHD VALUES ('CT01','HD01','Xe01','10','5','10000000');
INSERT INTO CTHD VALUES ('CT02','HD02','Xe02','5','1','20000000');
INSERT INTO CTHD VALUES ('CT03','HD03','Xe01','7','2','30000000');
INSERT INTO CTHD VALUES ('CT04','HD04','6','2','40000000');
INSERT INTO CTHD VALUES ('CT05','HD05','8','2','50000000');
INSERT INTO CTHD VALUES ('CT06','HD06','1','1','60000000');
INSERT INTO CTHD VALUES ('CT07','HD07','2','1','70000000');
INSERT INTO CTHD VALUES ('CT08','HD08','3','2','80000000');
INSERT INTO CTHD VALUES ('CT09','HD09','9','5','90000000');
INSERT INTO CTHD VALUES ('CT10','HD10','4','3','11200000');
INSERT INTO CTHD VALUES ('CT11','HD11','11','5','2100000');
INSERT INTO CTHD VALUES ('CT12','HD12','15','10','65000000');
INSERT INTO CTHD VALUES ('CT13','HD13','16','10','56000000');
INSERT INTO CTHD VALUES ('CT14','HD14','20','10','75000000');
INSERT INTO CTHD VALUES ('CT15','HD15','21','15','25000000');
INSERT INTO CTHD VALUES ('CT16','HD16','1','1','35000000');
INSERT INTO CTHD VALUES ('CT17','HD17','2','1','45000000');
INSERT INTO CTHD VALUES ('CT18','HD18','3','2','67000000');
INSERT INTO CTHD VALUES ('CT19','HD19','4','1','90000000');
INSERT INTO CTHD VALUES ('CT20','HD20','5','5','95000000');
INSERT INTO CTHD VALUES ('CT21','HD21','6','1','15000000');
INSERT INTO CTHD VALUES ('CT22','HD22','8','3','20000000');
INSERT INTO CTHD VALUES ('CT23','HD23','9','5','25000000');
INSERT INTO CTHD VALUES ('CT24','HD24','10','5','30000000');
INSERT INTO CTHD VALUES ('CT25','HD25','11','5','38000000');
INSERT INTO CTHD VALUES ('CT26','HD26','12','6','40000000');
INSERT INTO CTHD VALUES ('CT27','HD27','12','6','95000000')
INSERT INTO CTHD VALUES ('CT28','HD28','13','7','98000000');
INSERT INTO CTHD VALUES ('CT29','HD29','14','7','97000000');
INSERT INTO CTHD VALUES ('CT30','HD30','15','7','21000000');








=======
INSERT INTO KhoXe VALUES ('CN01','Xe01',0,  to_date('29/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN01','Xe02',10, to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN01','Xe03',10, to_date('30/10/2021','dd/mm/yyyy'));
INSERT INTO KhoXe VALUES ('CN01','Xe04',10, to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN01','Xe05',10, to_date('30/10/2021','dd/mm/yyyy'));

INSERT INTO Kho_TinhTrang values ('CN01','Xe01', 'Het Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN01','Xe02', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN01','Xe03', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN01','Xe04', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN01','Xe05', 'Con Hang','500000' ); 

INSERT INTO KhoXe VALUES ('CN02','Xe06',10, , to_date('29/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN02','Xe07',5, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN02','Xe08',3, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN02','Xe09',10, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN02','Xe01',10, , to_date('30/10/2021','dd/mm/yyyy')); 
                       
INSERT INTO Kho_TinhTrang values ('CN02','Xe06', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN02','Xe07', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN02','Xe08', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN02','Xe09', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN02','Xe01', 'Con Hang','500000' );                      

INSERT INTO KhoXe VALUES ('CN03','Xe01',1, to_date('29/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN03','Xe02',0, to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN03','Xe03',10,to_date('30/10/2021','dd/mm/yyyy')); 
                       
INSERT INTO Kho_TinhTrang values ('CN03','Xe01', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN03','Xe02', 'Het Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN03','Xe03', 'Con Hang','500000' );                       

INSERT INTO KhoXe VALUES ('CN04','Xe05',0, , to_date('29/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN04','Xe02',5, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN04','Xe01',10, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN04','Xe07',10, , to_date('30/10/2021','dd/mm/yyyy'));
                       
INSERT INTO Kho_TinhTrang values ('CN04','Xe05', 'Het Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN04','Xe02', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN04','Xe01', 'Con Hang','500000' ); 
INSERT INTO Kho_TinhTrang values ('CN04','Xe07', 'Con Hang','500000' );
 
INSERT INTO KhoXe VALUES ('CN05','Xe06',10, , to_date('29/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN05','Xe03',0, , to_date('30/10/2021','dd/mm/yyyy')); 
INSERT INTO KhoXe VALUES ('CN05','Xe04',10, , to_date('30/10/2021','dd/mm/yyyy')); 

INSERT INTO Kho_TinhTrang VALUES ('CN05','Xe06','Con hang', '1400000' ); 
INSERT INTO Kho_TinhTrang values ('CN05','Xe03','Het Hang','1000000' );
INSERT INTO Kho_TinhTrang values ('CN05','Xe04','Con Hang','500000' ); 
 
>>>>>>> f5f4ff6c37d92cc36da9f7cfe33010182cb52b5e
