
--CSDL quan ly ban xe---
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
GiaTien int,
nhaxuatban varchar(20),
lanin int
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
