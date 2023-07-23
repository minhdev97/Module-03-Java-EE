create database Quan_Ly_Diem_Thi;
use Quan_Ly_Diem_Thi;
CREATE TABLE Hoc_Sinh (
    Ma_HS VARCHAR(20) PRIMARY KEY,
    Ten_HS VARCHAR(50),
    Ngay_Sinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);
CREATE TABLE Mon_Hoc (
    Ma_MH VARCHAR(20) PRIMARY KEY,
    Ten_MH VARCHAR(50)
);

CREATE TABLE BangDiem (
    Ma_HS VARCHAR(20),
    Ma_MH VARCHAR(20),
    Diem_Thi INT,
    Ngay_KT DATETIME,
    PRIMARY KEY (Ma_HS , Ma_MH),
    FOREIGN KEY (Ma_HS)
        REFERENCES Hoc_Sinh (Ma_HS),
    FOREIGN KEY (Ma_MH)
        REFERENCES Mon_Hoc (ma_mh)
);

CREATE TABLE Giao_vien(
Ma_GV VARCHAR(20) PRIMARY KEY,
Ten_Gv VARCHAR(20),
sdt VARCHAR(10)
);

ALTER TABLE Mon_Hoc ADD Ma_GV VARCHAR(20);
ALTER TABLE Mon_Hoc ADD CONSTRAINT FK_Ma_GV FOREIGN KEY (Ma_GV) REFERENCES Giao_Vien(Ma_GV);




