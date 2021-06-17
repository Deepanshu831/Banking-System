SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Aren', 'aren@gmail.com', 39545),
(2, 'Sasuke', 'sasuke@gmail.com', 38452),
(3, 'Siesui', 'siesui11@gmail.com', 50000),
(4, 'Armin', 'armin@gmail.com', 30000),
(5, 'Itachi', 'itachi@gmail.com', 213455),
(6, 'Rocklee', 'rocklee33@gmail.com', 338000),
(7, 'Mikasa', 'mikasa@gmail.com', 89000),
(8, 'Naruto', 'uzumaki@gmail.com', 765000),
(9, 'Kakashi', 'kakashi@gmail.com', 54000),
(10, 'Goku', 'Gokusaiyann@gmail.com', 60000),
(11, 'deepanshu', 'singh@gmail.com', 20001);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


