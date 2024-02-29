create table phim(
ma_phim int PRIMARY key AUTO_INCREMENT,
ten_phim varchar(225),
trailer varchar(255),
hinh_anh varchar(255),
mo_ta varchar(225),
ngay_khoi_chieu date,
danh_gia int,
hot BOOLEAN,
dang_chieu BOOLEAN,
sap_chieu BOOLEAN
)

INSERT INTO phim (ten_phim, trailer, hinh_anh, mo_ta, ngay_khoi_chieu, danh_gia, hot, dang_chieu, sap_chieu) VALUES
    ('The Avengers', 'avengers_trailer.mp4', 'avengers_poster.jpg', 'An epic superhero film', '2024-02-19', 5, TRUE, TRUE, FALSE),
    ('Inception', 'inception_trailer.mp4', 'inception_poster.jpg', 'A mind-bending thriller', '2024-02-20', 4, TRUE, TRUE, TRUE),
    ('The Shawshank Redemption', 'shawshank_trailer.mp4', 'shawshank_poster.jpg', 'A classic prison drama', '2024-02-21', 5, FALSE, FALSE, TRUE),
    ('The Dark Knight', 'dark_knight_trailer.mp4', 'dark_knight_poster.jpg', 'A superhero masterpiece', '2024-02-22', 5, TRUE, TRUE, FALSE),
    ('Pulp Fiction', 'pulp_fiction_trailer.mp4', 'pulp_fiction_poster.jpg', 'A Quentin Tarantino classic', '2024-02-23', 4, FALSE, TRUE, TRUE),
    ('Forrest Gump', 'forrest_gump_trailer.mp4', 'forrest_gump_poster.jpg', 'A heartwarming tale', '2024-02-24', 4, TRUE, FALSE, FALSE),
    ('Titanic', 'titanic_trailer.mp4', 'titanic_poster.jpg', 'A tragic love story', '2024-02-25', 3, FALSE, TRUE, TRUE),
    ('Jurassic Park', 'jurassic_park_trailer.mp4', 'jurassic_park_poster.jpg', 'Dinosaurs on the loose', '2024-02-26', 4, TRUE, FALSE, TRUE),
    ('The Matrix', 'matrix_trailer.mp4', 'matrix_poster.jpg', 'A sci-fi classic', '2024-02-27', 5, FALSE, TRUE, FALSE),
    ('The Godfather', 'godfather_trailer.mp4', 'godfather_poster.jpg', 'A crime epic', '2024-02-28', 5, TRUE, TRUE, TRUE),
    ('Fight Club', 'fight_club_trailer.mp4', 'fight_club_poster.jpg', 'Anarchy in the system', '2024-02-29', 4, FALSE, FALSE, TRUE),
    ('Avatar', 'avatar_trailer.mp4', 'avatar_poster.jpg', 'A journey to Pandora', '2024-03-01', 4, TRUE, TRUE, FALSE),
    ('The Silence of the Lambs', 'silence_lambs_trailer.mp4', 'silence_lambs_poster.jpg', 'A psychological thriller', '2024-03-02', 5, FALSE, TRUE, TRUE),
    ('The Social Network', 'social_network_trailer.mp4', 'social_network_poster.jpg', 'The rise of Facebook', '2024-03-03', 4, TRUE, FALSE, FALSE),
    ('Gladiator', 'gladiator_trailer.mp4', 'gladiator_poster.jpg', 'Are you not entertained?', '2024-03-04', 5, FALSE, TRUE, TRUE),
    ('The Departed', 'departed_trailer.mp4', 'departed_poster.jpg', 'Undercover in the mob', '2024-03-05', 4, TRUE, TRUE, FALSE),
    ('The Great Gatsby', 'gatsby_trailer.mp4', 'gatsby_poster.jpg', 'The roaring twenties', '2024-03-06', 3, FALSE, FALSE, TRUE),
    ('Casablanca', 'casablanca_trailer.mp4', 'casablanca_poster.jpg', 'A classic romance', '2024-03-07', 4, TRUE, TRUE, TRUE),
    ('The Lion King', 'lion_king_trailer.mp4', 'lion_king_poster.jpg', 'Hakuna Matata!', '2024-03-08', 5, TRUE, FALSE, FALSE),
    ('The Shawshank Redemption', 'shawshank_trailer.mp4', 'shawshank_poster.jpg', 'A classic prison drama', '2024-03-09', 5, FALSE, TRUE, TRUE);
    
    
   
create table he_thong_rap(
ma_he_thong_rap int PRIMARY key AUTO_INCREMENT,
ten_he_thong_rap varchar(225),
logo varchar(255)
)

INSERT INTO he_thong_rap (ma_he_thong_rap, ten_he_thong_rap, logo)
VALUES
    (1, 'CGV CINEMA', 'Logo1.jpg'),
    (2, 'BHD CINEMA', 'Logo2.jpg'),
    (3, 'LOTTE CINEMA', 'Logo3.jpg'),
    (4, 'MEGA GS', 'Logo4.jpg'),
    (5, 'GALAXY CINEMA', 'Logo5.jpg'),
    (6, 'CINER STAR CINEMA', 'Logo6.jpg');
    
    
create table cum_rap(
ma_cum_rap int PRIMARY key AUTO_INCREMENT,
ten_cum_rap varchar(225),
dia_chi varchar(255),
ma_he_thong_rap int,
FOREIGN KEY (ma_he_thong_rap) REFERENCES he_thong_rap(ma_he_thong_rap) ON DELETE  set null ON UPDATE CASCADE
)

INSERT INTO cum_rap (ten_cum_rap, dia_chi, ma_he_thong_rap) VALUES
    ('Cum A', 'Dia chi A', 1),
    ('Cum B', 'Dia chi B', 2),
    ('Cum C', 'Dia chi C', 3),
    ('Cum D', 'Dia chi D', 4),
    ('Cum E', 'Dia chi E', 5),
    ('Cum F', 'Dia chi F', 6),
    ('Cum G', 'Dia chi G', 1),
    ('Cum H', 'Dia chi H', 2),
    ('Cum I', 'Dia chi I', 3),
    ('Cum J', 'Dia chi J', 4);
    
    
create table rap_phim(
ma_rap int PRIMARY key AUTO_INCREMENT,
ten_rap varchar(225),
ma_cum_rap int,
FOREIGN KEY (ma_cum_rap) REFERENCES cum_rap(ma_cum_rap) ON DELETE  set null ON UPDATE CASCADE
)
    

INSERT INTO rap_phim (ten_rap, ma_cum_rap) VALUES
    ('Rap 1A', 1),
    ('Rap 2B', 2),
    ('Rap 3C', 3),
    ('Rap 4D', 4),
    ('Rap 5E', 5),
    ('Rap 6F', 6),
    ('Rap 7G', 7),
    ('Rap 8H', 8),
    ('Rap 9I', 9),
    ('Rap 10J', 10);
    
create table banner(
ma_banner int PRIMARY key AUTO_INCREMENT,
ma_phim int,
hinh_anh VARCHAR(225),
FOREIGN KEY (ma_phim) REFERENCES phim(ma_phim) ON DELETE  set null ON UPDATE CASCADE
)

INSERT INTO banner (ma_phim, hinh_anh) VALUES
    (1, 'hinh_anh_1.jpg'),
    (2, 'hinh_anh_2.jpg'),
    (3, 'hinh_anh_3.jpg'),
    (4, 'hinh_anh_4.jpg'),
    (5, 'hinh_anh_5.jpg'),
    (6, 'hinh_anh_6.jpg'),
    (7, 'hinh_anh_7.jpg'),
    (8, 'hinh_anh_8.jpg'),
    (9, 'hinh_anh_9.jpg'),
    (10, 'hinh_anh_10.jpg');
    

create table nguoi_dung(
tai_khoan int PRIMARY key AUTO_INCREMENT,
ho_ten VARCHAR(225),
email VARCHAR(225),
so_dt VARCHAR(225),
mat_khau VARCHAR(225),
loai_nguoi_dung VARCHAR(225)
)


INSERT INTO nguoi_dung (ho_ten, email, so_dt, mat_khau, loai_nguoi_dung) VALUES
    ('Người Dùng 1', 'nguoidung1@email.com', '123456789', 'password1', 'Người Dùng'),
    ('Người Dùng 2', 'nguoidung2@email.com', '987654321', 'password2', 'Người Dùng'),
    ('Admin 1', 'admin1@email.com', '111222333', 'adminpassword1', 'Admin'),
    ('Admin 2', 'admin2@email.com', '444555666', 'adminpassword2', 'Admin'),
    ('Người Dùng 3', 'nguoidung3@email.com', '777888999', 'password3', 'Người Dùng'),
    ('Người Dùng 4', 'nguoidung4@email.com', '666555444', 'password4', 'Người Dùng'),
    ('Admin 3', 'admin3@email.com', '999888777', 'adminpassword3', 'Admin'),
    ('Admin 4', 'admin4@email.com', '333222111', 'adminpassword4', 'Admin'),
    ('Người Dùng 5', 'nguoidung5@email.com', '123123123', 'password5', 'Người Dùng'),
    ('Người Dùng 6', 'nguoidung6@email.com', '456456456', 'password6', 'Người Dùng');
    
CREATE TABLE lich_chieu (
    ma_lich_chieu INT AUTO_INCREMENT,
    ma_rap INT,
    ma_phim INT,
    ngay_gio_chieu DATETIME,
    gia_ve INT,
    PRIMARY KEY (ma_lich_chieu),
    FOREIGN KEY (ma_rap) REFERENCES rap_phim(ma_rap) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ma_phim) REFERENCES phim(ma_phim) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO lich_chieu (ma_rap, ma_phim, ngay_gio_chieu, gia_ve) VALUES
    (1, 1, '2024-02-21 08:00:00', 100000),
    (2, 2, '2024-02-21 10:30:00', 120000),
    (3, 3, '2024-02-21 13:00:00', 150000),
    (4, 4, '2024-02-21 15:30:00', 130000),
    (5, 5, '2024-02-21 18:00:00', 110000),
    (6, 6, '2024-02-21 20:30:00', 140000),
    (1, 7, '2024-02-22 08:00:00', 100000),
    (2, 8, '2024-02-22 10:30:00', 120000),
    (3, 9, '2024-02-22 13:00:00', 150000),
    (4, 10, '2024-02-22 15:30:00', 130000);
    
create table ghe(
ma_ghe int primary key AUTO_INCREMENT,
ten_ghe varchar(100),
loai_ghe VARCHAR(255),
ma_rap int,
  FOREIGN KEY (ma_rap) REFERENCES rap_phim(ma_rap) ON DELETE  set null ON UPDATE CASCADE
)

INSERT INTO ghe (ten_ghe, loai_ghe, ma_rap) VALUES
    ('Ghế 1', 'thuong', 1),
    ('Ghế 2', 'thuong', 2),
    ('Ghế 3', 'tinh_nhan', 3),
    ('Ghế 4', 'tinh_nhan', 4),
    ('Ghế 5', 'thuong', 5),
    ('Ghế 6', 'thuong', 6),
    ('Ghế 7', 'tinh_nhan', 7),
    ('Ghế 8', 'tinh_nhan', 8),
    ('Ghế 9', 'thuong', 9),
    ('Ghế 10', 'thuong', 10);
    

 CREATE TABLE dat_ve (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tai_khoan INT,
    ma_lich_chieu INT,
    ma_ghe INT,
  
    FOREIGN KEY (ma_lich_chieu) REFERENCES lich_chieu(ma_lich_chieu) ON DELETE CASCADE ON UPDATE CASCADE,
   FOREIGN KEY (tai_khoan) REFERENCES nguoi_dung(tai_khoan) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (ma_ghe) REFERENCES ghe(ma_ghe) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO dat_ve (tai_khoan, ma_lich_chieu, ma_ghe) VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3),
    (4, 4, 4),
    (5, 5, 5),
    (6, 6, 6),
    (7, 7, 7),
    (8, 8, 8),
    (9, 9, 9),
    (10, 10, 10);