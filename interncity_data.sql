SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$10$kxp7iI2V5/VVXAQmOZLQIe8ZvVBaKjNhj1x.iB1S9rDKvO3FPnilO', NULL, NULL, NULL, 2, '2013-06-22 15:57:36', '2013-05-16 18:49:17', '127.0.0.1', '127.0.0.1', '2013-05-15 16:57:36', '2013-06-22 15:57:36');

INSERT INTO `companies` (`id`, `name`, `website`, `contact_person`, `contact_number`, `email`, `industry_id`, `created_at`, `updated_at`) VALUES
(1, 'ddd', 'eftakhairul.com', 'reain', '82651541', 'eftakhairul@gmail.com', 1, '2013-05-15 19:22:59', '2013-05-15 19:22:59'),
(2, 'ddd', 'eftakhairul.com', '22342', 'e1213123', 'eftakhairul@gmail.com', NULL, '2013-05-15 19:24:12', '2013-05-15 19:24:12'),
(3, 'ddd', 'eftakhairul.com', '22342', 'e1213123', 'eftakhairul@gmail.com', NULL, '2013-05-15 19:26:00', '2013-05-15 19:26:00'),
(4, 'sss', 'eftakhairul.com', 'reain', '82651541', 'eftakhairul@gmail.com', 1, '2013-05-15 19:30:37', '2013-05-15 19:30:37'),
(5, '', '', '', '', '', NULL, '2013-05-16 19:38:03', '2013-05-16 19:38:03'),
(6, '', '', '', '', '', NULL, '2013-05-16 19:38:13', '2013-05-16 19:38:13'),
(7, 'ee', 'eftakhairul.com', 'rrrr', '82651541', 'eftakhairul@gmail.com', 1, '2013-05-20 01:53:19', '2013-05-20 01:53:19'),
(8, 'sss', 'fff', 'reain', '82651541', 'eftakhairul@gmail.com', 1, '2013-05-22 11:12:42', '2013-05-22 11:12:42'),
(9, 'Codemate Ltd.', 'Codemate.com', 'trian', '2155152120515', 'eftakhairul@yahoo.com', 1, '2013-06-06 17:33:02', '2013-06-06 17:33:02'),
(10, 'Codemate Ltd.', 'Codemate.com', 'trian', '2155152120515', 'eftakhairul@yahoo.com', 1, '2013-06-06 17:33:02', '2013-06-06 17:33:02'),
(11, 'Codemate Ltd.', 'Codemate.com', 'trian', '2155152120515', 'eftakhairul@yahoo.com', 1, '2013-06-06 17:33:46', '2013-06-06 17:33:46'),
(12, 'Codemate Ltd.', 'Codemate.com', 'trian', '2155152120515', 'eftakhairul@yahoo.com', 1, '2013-06-06 17:34:44', '2013-06-06 17:34:44'),
(13, 'Codemate Ltd.', 'Codemate.com', 'trian', '3211521425210', 'eftakhairul@yahoo.com', 1, '2013-06-06 17:35:12', '2013-06-06 17:35:12'),
(14, 'Codemate Ltd.', 'D5000.com', 'trian', '5551515', 'eftakhairul@yahoo.com', 2, '2013-06-06 18:12:52', '2013-06-06 18:12:52');

INSERT INTO `companies_job_titles` (`company_id`, `job_title_id`, `created_at`, `updated_at`) VALUES
(4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

INSERT INTO `industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IT', '2013-05-15 16:57:54', '2013-05-15 16:57:54'),
(2, 'TELCO', '2013-05-15 16:57:54', '2013-05-15 16:57:54');

INSERT INTO `interns` (`id`, `name`, `email`, `contact_number`, `linkedin_address`, `university_id`, `major_id`, `graduation_year`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'nhhbh', 'eftakhairul@gmail.com', 'dd4122', '411', 1, 2, 2014, 1, '2013-05-16 19:57:37', '2013-05-16 19:57:37'),
(2, 'Rain', 'eftakhairul@gmail.com', '12341', 'sss', 1, 1, 2012, 1, '2013-05-17 18:32:38', '2013-05-17 18:32:38'),
(3, 'nhhbh', 'eftakhairul@gmail.com', 'dd', 'ddd', 1, 2, 2013, 1, '2013-05-17 19:00:43', '2013-05-17 19:00:43'),
(5, 'nhhbh', 'eftakhairul@gmail.com', '12341', NULL, 1, 1, 2013, 1, '2013-05-18 02:49:13', '2013-05-18 02:49:13'),
(6, '', '', '', NULL, NULL, NULL, NULL, 1, '2013-05-19 07:59:27', '2013-05-19 07:59:27'),
(7, '', '', '', NULL, NULL, NULL, NULL, 1, '2013-05-19 07:59:55', '2013-05-19 07:59:55'),
(8, 'Rain', 'eftakhairul@gmail.com', '12341', 'sssddd', 1, 1, 2012, 1, '2013-05-22 11:01:59', '2013-05-22 11:01:59'),
(9, 'Eftakharul isolam', 'eftakhairul@gmai.com', '0171279341', 'reian.docm', 1, 1, 2013, 1, '2013-06-06 17:08:34', '2013-06-06 17:08:34'),
(10, 'Eftakharul isolam', 'eftakhairul@gmai.com', '0171279341', 'reian.docm', 1, 1, 2013, 1, '2013-06-06 17:08:36', '2013-06-06 17:08:36'),
(11, 'Eftakharul isolam', 'eftakhairul@gmai.com', '0171279341', 'reian.docm', 1, 1, 2013, 1, '2013-06-06 17:10:26', '2013-06-06 17:10:26'),
(13, 'Eftakharul isolam', 'eftakhairul@gmai.com', '0171279341', 'reian.docm', 1, 1, 2013, 1, '2013-06-06 17:11:05', '2013-06-06 17:11:05'),
(14, 'Eftakharul isolam', 'eftakhairul@gmai.com', '0171279341', 'reian.docm', 1, 1, 2013, 1, '2013-06-06 18:13:14', '2013-06-06 18:13:14');

INSERT INTO `interns_job_titles` (`intern_id`, `job_title_id`, `created_at`, `updated_at`) VALUES
(4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

INSERT INTO `job_titles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer', '2013-05-15 16:57:54', '2013-05-15 16:57:54'),
(2, 'QA', '2013-05-15 16:57:54', '2013-05-15 16:57:54');

INSERT INTO `majors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineer', '2013-05-15 16:57:54', '2013-05-15 16:57:54'),
(2, 'Marketing', '2013-05-15 16:57:54', '2013-05-15 16:57:54'),
(3, 'tttttttttttttt', '2013-05-16 20:14:50', '2013-05-16 20:14:50');

INSERT INTO `mentors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, '2013-05-19 18:54:52', '2013-05-19 18:54:52'),
(2, NULL, '2013-05-19 18:57:02', '2013-05-19 18:57:02'),
(3, NULL, '2013-05-19 19:00:50', '2013-05-19 19:00:50'),
(4, NULL, '2013-05-19 19:02:31', '2013-05-19 19:02:31'),
(5, NULL, '2013-05-19 19:04:21', '2013-05-19 19:04:21'),
(6, 'eftakhairul@gmail.com', '2013-05-20 01:52:51', '2013-05-20 01:52:51'),
(7, 'eftakhairul@gmail.com', '2013-05-22 10:28:00', '2013-05-22 10:28:00');

INSERT INTO `schema_migrations` (`version`) VALUES
('20130510201816'),
('20130510202110'),
('20130510202138'),
('20130510203004'),
('20130510203305'),
('20130510204036'),
('20130511204000'),
('20130511204004'),
('20130511204005'),
('20130513200413'),
('20130513201436'),
('20130517182159');

INSERT INTO `universities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BRAC University', '2013-05-15 16:57:54', '2013-05-15 16:57:54'),
(2, 'North South University', '2013-05-15 16:57:54', '2013-05-15 16:57:54');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
