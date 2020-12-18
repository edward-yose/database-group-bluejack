-- GROUP ID : 504301df-4b18-eb11-90f0-d8d385fce79e
--1	2301878076	Maryanto
--2	2301877470	Edward Yose
--3	2301910026	Benedictus Visto Kartika
--4	2301885983	Vincent Fanditama Wijaya

-- SOAL BAGIAN C : Query to insert data into tables

SELECT * FROM [User]

INSERT INTO [User]
  ( ID, Nickname, Fullname, Email, City, [Description])
VALUES
  ('USR001', 'harawan', 'Hasan Irawan', 'hasan.irawan@gmail.com', 'Jakarta', 'Owner of Kopi Amnesia'),
  ('USR002', 'raisa123', 'Raisa Safitri', 'raisa.safitri@gmail.com', 'Surabaya', 'Life goes on'),
  ('USR003', 'agnesss', 'Agnes Hastuti', 'agnes.hastuti@gmail.com', 'Bandung', 'Aspire to be a singer'),
  ('USR004', 'rudimpranowo', 'Rudi Mahesa Pranowo', 'rudi.pranowo@gmail.com', 'Jakarta', 'Rudi Pranowo'),
  ('USR005', 'dlsiregar', 'Danu Liman Siregar', 'danu.siregar@gmail.com', 'Bandung', 'Visit @dailyphone88'),
  ('USR006', 'efarida', 'Eka Farida', 'eka.farida@yahoo.com', 'Jakarta', 'Murid SMA'),
  ('USR007', 'nurul49', 'Nurul Puspita', 'nurul.puspita@outlook.com', 'Bogor', 'Project manager at Perusahaan123'),
  ('USR008', 'tastastas', 'Tasnim Setiawan', 'tasnim.setiawan@yahoo.com', 'Jakarta', 'E-sports player'),
  ('USR009', 'indahfit', 'Indah Fitria Kusmawati', 'indah.kusmawati@yahoo.com', 'Surabaya', 'K-pop is life'),
  ('USR010', 'caturhitamputih', 'Catur Suwarno', 'catur.suwarno@apple.com', 'Bandung', 'Currently interning at Apple Academy'),
  ('USR011', 'masbayu', 'Dimas Bayu Prayoga', 'dimas.prayoga@binus.ac.id', 'Jakarta', 'Seorang binusian yang berbakat')

INSERT INTO Director
  ( ID, [Name], Email, City, [Address], Phone)
VALUES
  ('DIR001', 'Liani Siska Jayadi', 'liani.jayadi@gmail.com', 'Jakarta', 'JL Pagujaten 40 Pejaten Timur', 085174692252),
  ('DIR002', 'Adi Wibawa Irawan', 'adi.irawan@gmail.com', 'Semarang', 'Jl. Nusa Indah no. 1567 Trangkil', 08562666257),
  ('DIR003', 'Ade Sari Budiaman', 'ade.budiaman@gmail.com', 'Jakarta', 'Jl Prapanca Buntu 14 C', 08219217471),
  ('DIR004', 'Siska Batari Atmadjaja', 'siska@gmail.com', 'Sidoarjo', 'Jalan Sukodono Keboan Anom', 089132054849),
  ('DIR005', 'Suharto Ari Chandra', 'suharto.ari@gmail.com', 'Jakarta', 'Jl HR Rasuna Said Kav 1-2 Bl X-5', 08215211265),
  ('DIR006', 'Wulan Glenna Jayadi', 'wglenna@gmail.com', 'Jakarta', 'Jl Jend Sudirman Kav 29-31', 08215712317),
  ('DIR007', 'Slamet Yuda Kusnadi', 'slametyudakusnadi@gmail.com', 'Jakarta', 'Jl Jend Sudirman Kav 10-11', 08238313906),
  ('DIR008', 'Dian Widya Setiawan', 'dian.setiawan@gmail.com', 'Bali', 'Jl. Garuda 112', 081361462234),
  ('DIR009', 'Ade Irwan Sasmita', 'ade.sasmita@yahoo.com', 'Surabaya', 'Jl HOS Cokroaminoto 2,Dokter Sutomo', 083125624211),
  ('DIR010', 'Indah Utami Setiawan', 'indah.utami.setiawan@yahoo.com', 'Jakarta', 'Jl. Kalimalang Ruko Bougenville Blok A/1A', 08218650555)

INSERT INTO Publisher
  ( ID, [Name], Email, City, [Address], Phone)
VALUES
  ('PUB001', 'Muljoto', 'support@muljoto.com', 'Bekasi', 'Jalan Duta Indah Raya Blok i1 no.5', 02188464611),
  ('PUB002', 'Graha Motorent', 'partner@graha.net', 'Jakarta', 'Jl. KH. Abdullah Syafei No.3C-D Tebet Utara', 0218304351),
  ('PUB003', 'Duren Production', 'pr@duren.id', 'Jakarta', 'Jl Cipinang Muara I 21-F,Klender', 0218605388),
  ('PUB004', 'Trio Hartono', 'trio.hartono@gmail.com', 'Jakarta', 'Jl Mega Kuningan Lot 5.1 Menara Rajawali Lt 8,Kuningan Timur', 0215761347),
  ('PUB005', 'EkaHardja', 'contact@ekahardja.com', 'Jakarta', 'Jl Berdikari Kav II,Sukabumi Ilir', 0215322190),
  ('PUB006', 'Lestari.co', 'manager@lestari.co', 'Jakarta', 'Jl Letjen S Parman Kav 77 Wisma 77 Lt 7,Slipi', 0215362778),
  ('PUB007', 'EkoProd', 'ekoprod@gmail.com', 'Jakarta', 'JL Patra Raya No. 26, West Jakarta', 02156969333),
  ('PUB008', 'Hendrush', 'contactus@hendrush.id', 'Jakarta', 'Jl. Bukit Gading Raya 14240', 02145850102),
  ('PUB009', 'Ingenious', 'support@ingenious.net', 'Surabaya', 'JL Empang Bahagia Raya No. 2-A RT 001/0611460', 0215696340),
  ('PUB010', 'LeonyPublish', 'partnership@leonypublish.com', 'Bali', 'Jl Puyung Gg I/3 X', 0361286623)

INSERT INTO Genre
  ( ID, [Name])
VALUES
  ('GEN001', 'Action'),
  ('GEN002', 'Adventure'),
  ('GEN003', 'Drama'),
  ('GEN004', 'Comedy'),
  ('GEN005', 'Thriller'),
  ('GEN006', 'Horror'),
  ('GEN007', 'Romance'),
  ('GEN008', 'Mystery'),
  ('GEN009', 'Sci-fi'),
  ('GEN010', 'Fantasy')

INSERT INTO Movie
  ( ID, DirectorID, PublisherID, Title, [Description], ReleaseDate, Price)
VALUES
  ('MOV001', 'DIR001', 'PUB001', 'Assassin Without Hate', 'An action set in New York about an assasin who has no hatred.', '2010-06-19', 45000),
  ('MOV002', 'DIR002', 'PUB002', 'The Every Servant', 'In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.', '2012-05-02', 55000),
  ('MOV003', 'DIR003', 'PUB003', 'Emerald Ship', 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', '2014-09-05', 40000),
  ('MOV004', 'DIR004', 'PUB004', 'Flames of Tales', 'A young boy and his little sister struggle to survive in Japan during World War II.', '2000-10-29', 70000),
  ('MOV005', 'DIR005', 'PUB005', 'The Men of the Bridge', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', '2002-08-25', 45000),
  ('MOV006', 'DIR006', 'PUB006', 'Memory in the Hunter', 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.', '2014-03-29', 95000),
  ('MOV007', 'DIR007', 'PUB007', 'Eager Theft', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', '2006-07-22', 15000),
  ('MOV008', 'DIR008', 'PUB008', 'The Wanton Husband', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker.', '2014-02-16', 85000),
  ('MOV009', 'DIR009', 'PUB009', 'Woman of Wings', 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', '2013-12-05', 80000),
  ('MOV010', 'DIR010', 'PUB010', 'The Something of the Past', 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', '2004-03-02', 120000)

INSERT INTO Review
  ( UserID, MovieID, RecommendStatus, Content, [Date])
VALUES
  ('USR001', 'MOV001', 'Recommended', 'It was so great! Loved the characters, brilliant story. I didn’t want to put it down!', '2020-02-29'),
  ('USR001', 'MOV002', 'Recommended', 'I love beautiful movies. If a film is eye-candy with carefully designed decorations, masterful camerawork, lighting, and architectural frames.', '2018-09-14'),
  ('USR002', 'MOV004', 'Not Recommended', 'I do not like cartoons. When I was a child, I preferred reading and drawing to watching television, cartoons included.', '2018-01-19'),
  ('USR002', 'MOV006', 'Not Recommended', 'I do not know about you, but to me, about 90% of the movies you can see in cinemas nowadays are dull.', '2019-01-01'),
  ('USR003', 'MOV003', 'Recommended', 'Movies about extraterrestrials never seem to be out of trend. For decades, if not centuries, the possibility of intelligent life existing on other planets excited me.', '2019-12-25'),
  ('USR004', 'MOV005', 'Not Recommended', 'In my humble opinion, the genre of horror movies is currently experiencing a severe crisis. ', '2018-06-29'),
  ('USR004', 'MOV006', 'Recommended', 'Perhaps no other country has produced as many horror movies as the United States—and no other country can call itself the motherland of the horror movies.', '2018-02-14'),
  ('USR005', 'MOV007', 'Recommended', 'The subject of mental disorders has long become a niche for all kinds of thriller and horror movies.', '2020-10-21'),
  ('USR006', 'MOV008', 'Not Recommended', 'The last time a science-fiction movie was released that did not look silly was when Christopher Nolan came out with “Interstellar.”', '2018-11-26'),
  ('USR007', 'MOV009', 'Recommended', 'If I was asked about my favorite film, I would think for a rather long time about the answer. There are many well-rounded films like this exists.', '2018-04-26'),
  ('USR008', 'MOV010', 'Not Recommended', 'Comedy is a film genre where serious directors need to be extra careful, as they have to balance between ease of perception and quality humor.', '2018-03-23'),
  ('USR009', 'MOV008', 'Not Recommended', 'Considering the amounts of entertaining movies Hollywood releases annually, sometimes I doubt that in a decade it will be possible to amaze cinema audiences.', '2020-11-28'),
  ('USR009', 'MOV004', 'Not Recommended', 'My girlfriend often says the main problem with Hollywood (among many) is that it seems to have a skill to bury interesting thoughts.', '2018-12-08'),
  ('USR010', 'MOV009', 'Not Recommended', 'Though occasionally visually inventive, this movie is a disappointment when it comes to matters of simple black and white: the script. ', '2019-05-27'),
  ('USR010', 'MOV010', 'Recommended', 'Tired of sobby melodramas and stupid comedies? Why not watch a film with a difference? This movie is both a drama and a comedy, which definitely absorbed the best features of the genres.', '2018-07-17')
  

INSERT INTO MovieToGenre
  ( MovieID, GenreID)
VALUES
  ('MOV001','GEN001'),
  ('MOV001','GEN003'),
  ('MOV001','GEN009'),
  ('MOV002','GEN002'),
  ('MOV002','GEN005'),
  ('MOV002','GEN003'),
  ('MOV003','GEN004'),
  ('MOV003','GEN008'),
  ('MOV003','GEN006'),
  ('MOV004','GEN004'),
  ('MOV004','GEN006'),
  ('MOV004','GEN009'),
  ('MOV005','GEN002'),
  ('MOV005','GEN003'),
  ('MOV005','GEN004'),
  ('MOV006','GEN001'),
  ('MOV006','GEN003'),
  ('MOV007','GEN005'),
  ('MOV007','GEN001'),
  ('MOV007','GEN008'),
  ('MOV008','GEN010'),
  ('MOV008','GEN004'),
  ('MOV009','GEN005'),
  ('MOV009','GEN007'),
  ('MOV009','GEN006'),
  ('MOV010','GEN008')

INSERT INTO SalesTransaction
  ( ID, UserID, TransactionDate)
VALUES
  ('SAL001','USR001', '2018-04-10'),
  ('SAL002','USR002', '2018-03-18'),
  ('SAL003','USR003', '2019-05-01'),
  ('SAL004','USR004', '2019-07-28'),
  ('SAL005','USR005', '2019-10-03'),
  ('SAL006','USR006', '2019-05-04'),
  ('SAL007','USR007', '2018-09-24'),
  ('SAL008','USR008', '2018-06-14'),
  ('SAL009','USR009', '2018-10-03'),
  ('SAL010','USR009', '2020-01-10'),
  ('SAL011','USR010', '2019-04-10'),
  ('SAL012','USR001', '2020-12-28'),
  ('SAL013','USR002', '2020-01-13'),
  ('SAL014','USR003', '2018-03-22'),
  ('SAL015','USR003', '2020-02-15')
 
INSERT INTO SalesToMovie
  ( SalesTransactionID, MovieID, Quantity)
VALUES
  ('SAL001','MOV001', 15),
  ('SAL001','MOV005', 3),
  ('SAL001','MOV008', 2),
  ('SAL002','MOV002', 25),
  ('SAL002','MOV004', 11),
  ('SAL002','MOV006', 40),
  ('SAL003','MOV003', 10),
  ('SAL004','MOV004', 5),
  ('SAL005','MOV005', 11),
  ('SAL005','MOV001', 5),
  ('SAL005','MOV003', 10),
  ('SAL006','MOV006', 8),
  ('SAL007','MOV007', 9),
  ('SAL008','MOV008', 21),
  ('SAL008','MOV009', 2),
  ('SAL009','MOV009', 14),
  ('SAL010','MOV009', 30),
  ('SAL010','MOV010', 2),
  ('SAL011','MOV002', 7),
  ('SAL011','MOV010', 24),
  ('SAL012','MOV001', 18),
  ('SAL013','MOV002', 16),
  ('SAL014','MOV003', 12),
  ('SAL015','MOV002', 5),
  ('SAL015','MOV003', 1)