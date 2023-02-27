-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 02:08 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alegariocurehms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` int(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `firstname`, `middlename`, `lastname`, `street`, `barangay`, `city`, `state`, `country`, `zipcode`, `phone_number`, `email_address`, `image`, `date_added`) VALUES
(1, 2, 'Super', 'Admin', 'Super admin', '', '', '', 0, '', 0, '', 'superadmin@alegariocurehms.com', '', '2023-02-26 01:00:36'),
(2, 4, 'hr', 'admin', 'hr admin', '', '', '', 0, '', 0, '', 'hradmin@alegariocurehms.com', '', '2023-02-26 01:02:13'),
(3, 5, 'core', 'admin', 'core admin', '', '', '', 0, '', 0, '', 'coreadmin@alegariocurehms.com', '', '2023-02-26 01:02:40'),
(4, 6, 'logistic', 'admin', 'logistic admin', '', '', '', 0, '', 0, '', 'logisticsadmin@alegariocurehms.com', '', '2023-02-26 01:03:05'),
(5, 7, 'financial', 'admin', 'financial admin', '', '', '', 0, '', 0, '', 'financialadmin@alegariocurehms.com', '', '2023-02-26 01:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `attempt`
--

CREATE TABLE `attempt` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `time_count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_answer`
--

CREATE TABLE `hr1_answer` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `applicant_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_applicant`
--

CREATE TABLE `hr1_applicant` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `birthplace` int(5) NOT NULL,
  `age` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(10) NOT NULL,
  `verify_token` varchar(255) NOT NULL,
  `verify_status` tinyint(2) NOT NULL DEFAULT 0,
  `date_applied` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_appoint_applicant`
--

CREATE TABLE `hr1_appoint_applicant` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `appointment_type` varchar(25) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_appoint_newemployees`
--

CREATE TABLE `hr1_appoint_newemployees` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `appointment_type` varchar(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_codes`
--

CREATE TABLE `hr1_codes` (
  `id` int(11) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `code` varchar(5) NOT NULL,
  `expire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_exam`
--

CREATE TABLE `hr1_exam` (
  `id` int(11) NOT NULL,
  `job_list_id` int(11) NOT NULL,
  `exam_title` varchar(255) NOT NULL,
  `exam_duration` int(11) NOT NULL,
  `mark_per_right_answer` int(11) NOT NULL,
  `mark_per_wrong_answer` int(11) NOT NULL,
  `num_items` int(11) NOT NULL,
  `exam_status` varchar(20) NOT NULL,
  `exam_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_job_portal_user`
--

CREATE TABLE `hr1_job_portal_user` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `email_address` int(11) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_job_qualifications`
--

CREATE TABLE `hr1_job_qualifications` (
  `id` int(11) NOT NULL,
  `job_request_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_option`
--

CREATE TABLE `hr1_option` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_title` varchar(255) NOT NULL,
  `option_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_question`
--

CREATE TABLE `hr1_question` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_title` varchar(255) NOT NULL,
  `correct_answer_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_rejected_applicant`
--

CREATE TABLE `hr1_rejected_applicant` (
  `id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `resume_attachment` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `rejection_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_resume`
--

CREATE TABLE `hr1_resume` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `job_list_id` int(11) NOT NULL,
  `file_attachments` varchar(255) NOT NULL,
  `resume_status` varchar(50) NOT NULL,
  `date_uploaded` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_trainer`
--

CREATE TABLE `hr1_trainer` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `expertise` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_training`
--

CREATE TABLE `hr1_training` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `training_dateAndTime` datetime NOT NULL,
  `training_duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_training_program`
--

CREATE TABLE `hr1_training_program` (
  `id` int(11) NOT NULL,
  `program_name` varchar(255) NOT NULL,
  `program_description` varchar(255) NOT NULL,
  `program_cost` int(11) NOT NULL,
  `program_duration` int(11) NOT NULL,
  `program_category` varchar(255) NOT NULL,
  `program_schedule` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr1_training_request`
--

CREATE TABLE `hr1_training_request` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `trainer_id` int(11) NOT NULL,
  `trainer_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_bank_accounts`
--

CREATE TABLE `hr2_bank_accounts` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `account_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_employee_leave`
--

CREATE TABLE `hr2_employee_leave` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `ave_leave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_employee_schedules`
--

CREATE TABLE `hr2_employee_schedules` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `timesheet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_leaves`
--

CREATE TABLE `hr2_leaves` (
  `id` int(11) NOT NULL,
  `employee_leave_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `bod` varchar(25) NOT NULL,
  `hr_remark` varchar(25) NOT NULL,
  `admin_remark` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `applied_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_leave_type`
--

CREATE TABLE `hr2_leave_type` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `leave_name` varchar(255) NOT NULL,
  `leave_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_payroll`
--

CREATE TABLE `hr2_payroll` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `semi_monthly_basic_salary` int(11) NOT NULL COMMENT ' -regular_overtime\r\nrestday_overtime',
  `monthly_basic_salary` int(11) NOT NULL COMMENT '-regular_overtime\r\n    -restday_overtime',
  `taxable_income` int(11) NOT NULL,
  `total_gross_income` int(11) NOT NULL,
  `compensation_tax` int(11) NOT NULL,
  `sss_deduction` int(11) NOT NULL,
  `philhealth_deduction` int(11) NOT NULL,
  `hdmf_deduction` int(11) NOT NULL,
  `sss_loan_deduction` int(11) NOT NULL,
  `total_deduction` int(11) NOT NULL,
  `total_salary` int(11) NOT NULL,
  `bank_account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_reimbursement`
--

CREATE TABLE `hr2_reimbursement` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `employee_code` varchar(20) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `_from` varchar(255) NOT NULL,
  `_to` varchar(255) NOT NULL,
  `item_category` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `mop` date NOT NULL,
  `reimbursement_amount` int(11) NOT NULL,
  `less_cash_advance` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `receipt_file` varchar(255) NOT NULL,
  `approved_by` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_shift`
--

CREATE TABLE `hr2_shift` (
  `id` int(11) NOT NULL,
  `shift_start_time` time NOT NULL,
  `Shift_end_time` time NOT NULL,
  `work_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr2_timesheet`
--

CREATE TABLE `hr2_timesheet` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `in_status` varchar(20) NOT NULL,
  `time_out` time NOT NULL,
  `out_status` varchar(20) NOT NULL,
  `regular_hours` int(11) NOT NULL,
  `total_overtime_hours` int(11) NOT NULL,
  `total_work_hours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_201_files`
--

CREATE TABLE `hr_201_files` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL,
  `SSS_number` int(11) NOT NULL,
  `TIN_number` int(11) NOT NULL,
  `Philhealth_number` int(11) NOT NULL,
  `Pagibig_number` int(11) NOT NULL,
  `education_ transcripts_diplomas` int(11) NOT NULL,
  `clearances` varchar(3000) NOT NULL,
  `work_history` varchar(3000) NOT NULL,
  `post_employment_ information` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_department`
--

CREATE TABLE `hr_department` (
  `id` int(11) NOT NULL,
  `department_code` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_employee`
--

CREATE TABLE `hr_employee` (
  `id` int(11) NOT NULL,
  `employee_code` varchar(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `date_hired` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_goal`
--

CREATE TABLE `hr_goal` (
  `id` int(11) NOT NULL,
  `performance_id` int(11) NOT NULL,
  `goal_description` varchar(255) NOT NULL,
  `goal_deadline` date NOT NULL,
  `goal_status` varchar(255) NOT NULL,
  `goal_comments` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_list`
--

CREATE TABLE `hr_job_list` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `qualification_id` int(11) NOT NULL,
  `job_request_id` int(11) NOT NULL,
  `job_code` varchar(10) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` varchar(500) NOT NULL,
  `years` varchar(50) NOT NULL,
  `skills` varchar(500) NOT NULL,
  `benefits` varchar(500) NOT NULL,
  `semi_montly_salary` int(11) NOT NULL,
  `monthly_salary` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_job_request`
--

CREATE TABLE `hr_job_request` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `num_applicants` int(11) NOT NULL,
  `year_experience` varchar(50) NOT NULL,
  `salary` int(20) NOT NULL,
  `date_requested` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_manager`
--

CREATE TABLE `hr_manager` (
  `id` int(11) NOT NULL,
  `manage_code` varchar(20) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(5) NOT NULL,
  `birthplace` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hr_performance`
--

CREATE TABLE `hr_performance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `performance_period` date NOT NULL,
  `ratings` int(11) NOT NULL,
  `comments` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(2, 'superAdmin226', '$2y$10$VJlMHySkyG/3ZKxq2uElxedjVeNe5KATmLNv5gVI1fr2R55AWrSdK', 'SUPER ADMIN'),
(4, 'hrAdmin310', '$2y$10$kb91QtgVoo3yjV.8v.I6KOJC7tQH7tAUvcDBEERUZCk5PY3.dnLry', 'HR ADMIN'),
(5, 'coreAdmin122', '$2y$10$AiRkvHVdrhk3dzb.AQx7qexrkXHKmA8TNeG1.zJ6oYz3LlXpH9LP.', 'CORE ADMIN'),
(6, 'logAdmin763', '$2y$10$Z2N5WzQvdSOvQKpNqGxB4OU74L9pHI3m4IAC7UjtCrKi4YNXuc8Oy', 'LOGISTICS ADMIN'),
(7, 'financialAdmin203', '$2y$10$CXvOC7nfWrkpb3F/81iag.2.Kfv20EEsXRiFBTz0ta1MyiDFXgkGC', 'FINANCIALS ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `attempt`
--
ALTER TABLE `attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr1_answer`
--
ALTER TABLE `hr1_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `hr1_applicant`
--
ALTER TABLE `hr1_applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr1_appoint_applicant`
--
ALTER TABLE `hr1_appoint_applicant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `hr1_appoint_newemployees`
--
ALTER TABLE `hr1_appoint_newemployees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `hr1_codes`
--
ALTER TABLE `hr1_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr1_exam`
--
ALTER TABLE `hr1_exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_list_id` (`job_list_id`);

--
-- Indexes for table `hr1_job_portal_user`
--
ALTER TABLE `hr1_job_portal_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `hr1_job_qualifications`
--
ALTER TABLE `hr1_job_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_request_id` (`job_request_id`);

--
-- Indexes for table `hr1_option`
--
ALTER TABLE `hr1_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `hr1_question`
--
ALTER TABLE `hr1_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `hr1_rejected_applicant`
--
ALTER TABLE `hr1_rejected_applicant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `hr1_resume`
--
ALTER TABLE `hr1_resume`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_list_id` (`job_list_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `hr1_trainer`
--
ALTER TABLE `hr1_trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr1_training`
--
ALTER TABLE `hr1_training`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Indexes for table `hr1_training_program`
--
ALTER TABLE `hr1_training_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr1_training_request`
--
ALTER TABLE `hr1_training_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `program_id` (`program_id`),
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Indexes for table `hr2_bank_accounts`
--
ALTER TABLE `hr2_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `hr2_employee_leave`
--
ALTER TABLE `hr2_employee_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `hr2_employee_schedules`
--
ALTER TABLE `hr2_employee_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `shift_id` (`shift_id`),
  ADD KEY `timesheet_id` (`timesheet_id`);

--
-- Indexes for table `hr2_leaves`
--
ALTER TABLE `hr2_leaves`
  ADD KEY `leave_type_id` (`leave_type_id`),
  ADD KEY `employee_leave_id` (`employee_leave_id`);

--
-- Indexes for table `hr2_leave_type`
--
ALTER TABLE `hr2_leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr2_payroll`
--
ALTER TABLE `hr2_payroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `bank_account_id` (`bank_account_id`);

--
-- Indexes for table `hr2_reimbursement`
--
ALTER TABLE `hr2_reimbursement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr2_shift`
--
ALTER TABLE `hr2_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr2_timesheet`
--
ALTER TABLE `hr2_timesheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `hr_201_files`
--
ALTER TABLE `hr_201_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `resume_id` (`resume_id`),
  ADD KEY `performance_id` (`performance_id`);

--
-- Indexes for table `hr_department`
--
ALTER TABLE `hr_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `hr_goal`
--
ALTER TABLE `hr_goal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `performance_id` (`performance_id`);

--
-- Indexes for table `hr_job_list`
--
ALTER TABLE `hr_job_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `qualification_id` (`qualification_id`),
  ADD KEY `job_request_id` (`job_request_id`);

--
-- Indexes for table `hr_job_request`
--
ALTER TABLE `hr_job_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `hr_manager`
--
ALTER TABLE `hr_manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hr_performance`
--
ALTER TABLE `hr_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attempt`
--
ALTER TABLE `attempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_answer`
--
ALTER TABLE `hr1_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_applicant`
--
ALTER TABLE `hr1_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_appoint_applicant`
--
ALTER TABLE `hr1_appoint_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_appoint_newemployees`
--
ALTER TABLE `hr1_appoint_newemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_codes`
--
ALTER TABLE `hr1_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_exam`
--
ALTER TABLE `hr1_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_job_portal_user`
--
ALTER TABLE `hr1_job_portal_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_job_qualifications`
--
ALTER TABLE `hr1_job_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_option`
--
ALTER TABLE `hr1_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_question`
--
ALTER TABLE `hr1_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_rejected_applicant`
--
ALTER TABLE `hr1_rejected_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_resume`
--
ALTER TABLE `hr1_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_trainer`
--
ALTER TABLE `hr1_trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_training`
--
ALTER TABLE `hr1_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_training_program`
--
ALTER TABLE `hr1_training_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr1_training_request`
--
ALTER TABLE `hr1_training_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_bank_accounts`
--
ALTER TABLE `hr2_bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_employee_leave`
--
ALTER TABLE `hr2_employee_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_employee_schedules`
--
ALTER TABLE `hr2_employee_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_leave_type`
--
ALTER TABLE `hr2_leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_payroll`
--
ALTER TABLE `hr2_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_reimbursement`
--
ALTER TABLE `hr2_reimbursement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_shift`
--
ALTER TABLE `hr2_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr2_timesheet`
--
ALTER TABLE `hr2_timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_201_files`
--
ALTER TABLE `hr_201_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_department`
--
ALTER TABLE `hr_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_employee`
--
ALTER TABLE `hr_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_goal`
--
ALTER TABLE `hr_goal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_list`
--
ALTER TABLE `hr_job_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_job_request`
--
ALTER TABLE `hr_job_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_manager`
--
ALTER TABLE `hr_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_performance`
--
ALTER TABLE `hr_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hr1_answer`
--
ALTER TABLE `hr1_answer`
  ADD CONSTRAINT `hr1_answer_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `hr1_exam` (`id`),
  ADD CONSTRAINT `hr1_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `hr1_question` (`id`),
  ADD CONSTRAINT `hr1_answer_ibfk_3` FOREIGN KEY (`option_id`) REFERENCES `hr1_option` (`id`);

--
-- Constraints for table `hr1_appoint_applicant`
--
ALTER TABLE `hr1_appoint_applicant`
  ADD CONSTRAINT `hr1_appoint_applicant_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `hr1_resume` (`id`);

--
-- Constraints for table `hr1_appoint_newemployees`
--
ALTER TABLE `hr1_appoint_newemployees`
  ADD CONSTRAINT `hr1_appoint_newemployees_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`);

--
-- Constraints for table `hr1_exam`
--
ALTER TABLE `hr1_exam`
  ADD CONSTRAINT `hr1_exam_ibfk_1` FOREIGN KEY (`job_list_id`) REFERENCES `hr_job_list` (`id`);

--
-- Constraints for table `hr1_job_portal_user`
--
ALTER TABLE `hr1_job_portal_user`
  ADD CONSTRAINT `hr1_job_portal_user_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `hr1_applicant` (`id`);

--
-- Constraints for table `hr1_job_qualifications`
--
ALTER TABLE `hr1_job_qualifications`
  ADD CONSTRAINT `hr1_job_qualifications_ibfk_1` FOREIGN KEY (`job_request_id`) REFERENCES `hr_job_request` (`id`);

--
-- Constraints for table `hr1_option`
--
ALTER TABLE `hr1_option`
  ADD CONSTRAINT `hr1_option_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `hr1_question` (`id`);

--
-- Constraints for table `hr1_question`
--
ALTER TABLE `hr1_question`
  ADD CONSTRAINT `hr1_question_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `hr1_exam` (`id`);

--
-- Constraints for table `hr1_rejected_applicant`
--
ALTER TABLE `hr1_rejected_applicant`
  ADD CONSTRAINT `hr1_rejected_applicant_ibfk_1` FOREIGN KEY (`resume_id`) REFERENCES `hr1_resume` (`id`);

--
-- Constraints for table `hr1_resume`
--
ALTER TABLE `hr1_resume`
  ADD CONSTRAINT `hr1_resume_ibfk_1` FOREIGN KEY (`job_list_id`) REFERENCES `hr_job_list` (`id`),
  ADD CONSTRAINT `hr1_resume_ibfk_2` FOREIGN KEY (`applicant_id`) REFERENCES `hr1_applicant` (`id`);

--
-- Constraints for table `hr1_training`
--
ALTER TABLE `hr1_training`
  ADD CONSTRAINT `hr1_training_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `hr1_training_program` (`id`),
  ADD CONSTRAINT `hr1_training_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr1_training_ibfk_3` FOREIGN KEY (`trainer_id`) REFERENCES `hr1_trainer` (`id`);

--
-- Constraints for table `hr1_training_request`
--
ALTER TABLE `hr1_training_request`
  ADD CONSTRAINT `hr1_training_request_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr1_training_request_ibfk_2` FOREIGN KEY (`program_id`) REFERENCES `hr1_training_program` (`id`),
  ADD CONSTRAINT `hr1_training_request_ibfk_3` FOREIGN KEY (`trainer_id`) REFERENCES `hr1_trainer` (`id`);

--
-- Constraints for table `hr2_bank_accounts`
--
ALTER TABLE `hr2_bank_accounts`
  ADD CONSTRAINT `hr2_bank_accounts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`);

--
-- Constraints for table `hr2_employee_leave`
--
ALTER TABLE `hr2_employee_leave`
  ADD CONSTRAINT `hr2_employee_leave_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`);

--
-- Constraints for table `hr2_employee_schedules`
--
ALTER TABLE `hr2_employee_schedules`
  ADD CONSTRAINT `hr2_employee_schedules_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr2_employee_schedules_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `hr2_shift` (`id`),
  ADD CONSTRAINT `hr2_employee_schedules_ibfk_3` FOREIGN KEY (`timesheet_id`) REFERENCES `hr2_timesheet` (`id`);

--
-- Constraints for table `hr2_leaves`
--
ALTER TABLE `hr2_leaves`
  ADD CONSTRAINT `hr2_leaves_ibfk_1` FOREIGN KEY (`employee_leave_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr2_leaves_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `hr2_leave_type` (`id`),
  ADD CONSTRAINT `hr2_leaves_ibfk_3` FOREIGN KEY (`employee_leave_id`) REFERENCES `hr2_employee_leave` (`id`);

--
-- Constraints for table `hr2_payroll`
--
ALTER TABLE `hr2_payroll`
  ADD CONSTRAINT `hr2_payroll_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr2_payroll_ibfk_2` FOREIGN KEY (`bank_account_id`) REFERENCES `hr2_bank_accounts` (`id`);

--
-- Constraints for table `hr2_timesheet`
--
ALTER TABLE `hr2_timesheet`
  ADD CONSTRAINT `hr2_timesheet_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`);

--
-- Constraints for table `hr_201_files`
--
ALTER TABLE `hr_201_files`
  ADD CONSTRAINT `hr_201_files_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  ADD CONSTRAINT `hr_201_files_ibfk_2` FOREIGN KEY (`resume_id`) REFERENCES `hr1_resume` (`id`),
  ADD CONSTRAINT `hr_201_files_ibfk_3` FOREIGN KEY (`performance_id`) REFERENCES `hr_performance` (`id`);

--
-- Constraints for table `hr_employee`
--
ALTER TABLE `hr_employee`
  ADD CONSTRAINT `hr_employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `hr_employee_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`),
  ADD CONSTRAINT `hr_employee_ibfk_3` FOREIGN KEY (`job_id`) REFERENCES `hr_job_list` (`id`),
  ADD CONSTRAINT `hr_employee_ibfk_4` FOREIGN KEY (`manager_id`) REFERENCES `hr_manager` (`id`);

--
-- Constraints for table `hr_goal`
--
ALTER TABLE `hr_goal`
  ADD CONSTRAINT `hr_goal_ibfk_1` FOREIGN KEY (`performance_id`) REFERENCES `hr_performance` (`id`);

--
-- Constraints for table `hr_job_list`
--
ALTER TABLE `hr_job_list`
  ADD CONSTRAINT `hr_job_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`),
  ADD CONSTRAINT `hr_job_list_ibfk_2` FOREIGN KEY (`qualification_id`) REFERENCES `hr1_job_qualifications` (`id`),
  ADD CONSTRAINT `hr_job_list_ibfk_3` FOREIGN KEY (`job_request_id`) REFERENCES `hr_job_request` (`id`);

--
-- Constraints for table `hr_job_request`
--
ALTER TABLE `hr_job_request`
  ADD CONSTRAINT `hr_job_request_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`);

--
-- Constraints for table `hr_manager`
--
ALTER TABLE `hr_manager`
  ADD CONSTRAINT `hr_manager_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`),
  ADD CONSTRAINT `hr_manager_ibfk_2` FOREIGN KEY (`job_id`) REFERENCES `hr_job_list` (`id`),
  ADD CONSTRAINT `hr_manager_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `hr_performance`
--
ALTER TABLE `hr_performance`
  ADD CONSTRAINT `hr_performance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
