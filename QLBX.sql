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
soluong int,
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

INSERT INTO xe VALUES ('XE11','SH Mode 125','Xe tay ga', to_date('29/01/2021','dd/mm/yyyy'),'Honda','125' , '55000000');
INSERT INTO xe VALUES ('XE12','PCX','Xe tay ga', to_date('11/10/2019','dd/mm/yyyy'),'Honda','125' , '50000000');
INSERT INTO xe VALUES ('XE13','Lead ','Xe tay ga', to_date('02/05/2019','dd/mm/yyyy'),'Honda' '125' , '40000000');
INSERT INTO xe VALUES ('XE14','946 Armani',PKL', to_date('03/11/2018','dd/mm/yyyy'),'Vespa' '155' , '40500000');
INSERT INTO xe VALUES ('XE15','Sirius FI','Xe số', to_date('12/06/2019','dd/mm/yyyy'),'Yamaha' '110' , '23000000');
INSERT INTO xe VALUES ('XE16','Grande Deluxe 2016','Xe tay ga', to_date('20/01/2016','dd/mm/yyyy'),'Yamaha','125' , '40000000');
INSERT INTO xe VALUES ('XE17','FZ 150i','Xe tay côn', to_date('03/10/2020','dd/mm/yyyy'),'Yamaha','150' , '66000000');
INSERT INTO xe VALUES ('XE18','Axelo','Xe tay côn', to_date('02/08/2018','dd/mm/yyyy'),'Suzuki' '125' , '28000000');
INSERT INTO xe VALUES ('XE19','Galaxy SR 115','Xe số', to_date('07/11/2020','dd/mm/yyyy'),'SYM' '115' , '20000000');
INSERT INTO xe VALUES ('XE20','GSX','PKL', to_date('11/03/2017','dd/mm/yyyy'),'Suzuki' '1000' , '408000000');

--Tan--
insert into NhanVien values('NV01','Nguyễn Thị Minh','89-91 Nguyễn Du, Phòng 21, Lầu 1, Phường Bến Nghé, Quận 1,Tp HCM','0913454310','4500000','CN01');
insert into NhanVien values('NV02','Lê Đình Bích','35/37 Xô Viết Nghệ Tĩnh, Phường 17, Quận Bình Thạnh, TpHCM','0913663310','4500000','CN01');
insert into NhanVien values('NV03','Nguyễn Công Mạnh','36/1 Lương Văn Can, Phường 2, Tp Vũng Tàu','0982632311','4000000','CN03');
insert into NhanVien values('NV04','Cao Thị Linh','19 Trần Nhật Duật, Phường Tân Định, Quận 1, TpHCM','0913007629','5500000','CN03');
insert into NhanVien values('NV05','Cao Minh Trang','433 Lạc Long Quân, Phường 5, Quận 11, TpHCM','0312253310','4500000','CN02');
insert into NhanVien values('NV06','Ngô Thị Quỳnh Nga','193 Tổ 20A Đường Giáp Bát, Hà Nội','0378925612','4400000','CN02');
insert into NhanVien values('NV07','Võ Văn Luân','Số 3 Tổ 47 Cụm 9, Vỏng Thị, Phường Bưởi, Tây Hồ, Hà Nội','0381312521','4700000','CN02');
insert into NhanVien values('NV08','Doãn Hoài Phương','5+7 Nhà B, Nam Tràng, Trúc Bạch , Ba Đình, Hà Nội','09987402641','4500000','CN05');
insert into NhanVien values('NV09','Lâm Bửu Đam','7 Công Lý, KP4, P.Bình Thọ, Q.Thủ Đức, TP.HCM','0351726989','4900000','CN04');
insert into NhanVien values('NV10','Tống Thị Hải Thu','453/13KH Lê Văn Sỹ, Phường 12, Quận 3, TpHCM','0825892986','4200000','CN04');


