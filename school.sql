

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `New_password` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `curent_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Firstname`, `Lastname`, `Email`, `Password`, `New_password`, `Gender`, `curent_time`, `update_time`) VALUES
(8, 'lalit', 'patil', 'Wakharichapada016@gmail.com', 'Wakharischool@987', 'Wakharischool@987', 'Male', '2022-05-03 18:43:19', '2022-05-03 18:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

CREATE TABLE `admission_form` (
  `Id` int(11) NOT NULL,
  `GR_NO` int(255) NOT NULL,
  `class` varchar(50) NOT NULL,
  `DOA` varchar(60) NOT NULL,
  `FN` varchar(50) NOT NULL,
  `LN` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `GN` varchar(30) NOT NULL,
  `blood_group` varchar(20) NOT NULL,
  `POB` varchar(50) NOT NULL,
  `AADHAR_NO` varchar(50) NOT NULL,
  `caste` varchar(40) NOT NULL,
  `FLAN` varchar(50) NOT NULL,
  `FATHERNAME` varchar(50) NOT NULL,
  `MOTHERNAME` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `edu_quali` varchar(60) NOT NULL,
  `PROFES` varchar(60) NOT NULL,
  `ADDRESS` text NOT NULL,
  `DISTRICT` varchar(60) NOT NULL,
  `TALUKA` varchar(60) NOT NULL,
  `PINCODE` int(40) NOT NULL,
  `CITY` varchar(60) NOT NULL,
  `STATE` varchar(70) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `current_update` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission_form`
--

INSERT INTO `admission_form` (`Id`, `GR_NO`, `class`, `DOA`, `FN`, `LN`, `DOB`, `GN`, `blood_group`, `POB`, `AADHAR_NO`, `caste`, `FLAN`, `FATHERNAME`, `MOTHERNAME`, `PHONE`, `edu_quali`, `PROFES`, `ADDRESS`, `DISTRICT`, `TALUKA`, `PINCODE`, `CITY`, `STATE`, `photo`, `current_update`) VALUES
(16, 531, '1st', '2022-04-16', 'rahul', 'patil', '2005-02-12', 'Male', 'B+', 'dhule', '458978132656', 'obc', 'marathi', 'mohan', 'gauri', '9915684325', '', 'farmer', 'shri Ram chowk,dhule', 'DHULE', 'DHULE', 111111, 'DHULE', 'Maharashtra', '', '2022-05-03 18:36:05'),
(17, 533, '1st', '2021-06-24', 'Hitesh', 'patil', '2015-10-22', 'Male', 'B+', 'Wakharichapda', '721122331088', 'obc', 'marathi', 'Ramesh', 'Kiran', '9106930925', '', 'Employee', 'Wakharichapda,  devla block.', 'Nashik', 'Nashik', 464362, 'Wakharichapada', 'Maharashtra', '', '2022-05-05 09:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `message` text NOT NULL,
  `curent_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `name`, `email`, `message`, `curent_time`, `update_time`) VALUES
(15, 'Kiran', 'Kiranpatil98@gmail.com', 'Hello, Your website is nice to use and UI is also good.', '2022-05-04 17:24:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `Id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `desig` varchar(30) NOT NULL,
  `curent_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`Id`, `title`, `date`, `content`, `name`, `desig`, `curent_time`, `update_time`) VALUES
(4, 'Title', '', 'Content will be added here.', 'Name ', 'Designation', '2022-03-29 16:36:35', '2022-05-04 17:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Id` int(11) NOT NULL,
  `gr_no` int(30) NOT NULL,
  `std` varchar(20) NOT NULL,
  `bhasha` int(50) NOT NULL,
  `Hindi` int(50) NOT NULL,
  `English` int(50) NOT NULL,
  `Maths` int(50) NOT NULL,
  `Science` int(50) NOT NULL,
  `S_S` int(50) NOT NULL,
  `Art` varchar(50) NOT NULL,
  `Craft` varchar(50) NOT NULL,
  `PT` varchar(50) NOT NULL,
  `mrk_obt` int(200) NOT NULL,
  `total_marks` int(200) NOT NULL,
  `curent_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Id`, `gr_no`, `std`, `bhasha`, `Hindi`, `English`, `Maths`, `Science`, `S_S`, `Art`, `Craft`, `PT`, `mrk_obt`, `total_marks`, `curent_time`, `update_time`) VALUES
(20, 533, '1st', 88, 92, 77, 76, 0, 0, 'A+', 'A', 'B+', 0, 0, '2022-05-05 09:28:07', '0000-00-00 00:00:00'),
(21, 786, '1st', 75, 84, 92, 0, 0, 0, 'A+', 'A+', 'A+', 251, 300, '2022-06-03 11:12:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE `teacher_details` (
  `Id` int(11) NOT NULL,
  `pst_app` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `name` varchar(45) NOT NULL,
  `F_or_H` varchar(45) NOT NULL,
  `ADDRESS` text NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Marital` varchar(15) NOT NULL,
  `Spouse_Name` varchar(20) NOT NULL,
  `Edu_quali` varchar(50) NOT NULL,
  `Spouse_work_address` varchar(100) NOT NULL,
  `Spouse_phone` varchar(10) NOT NULL,
  `1st_specili` varchar(50) NOT NULL,
  `2nd_specili` varchar(50) NOT NULL,
  `3rd_specili` varchar(50) NOT NULL,
  `secondary_YoP` varchar(30) NOT NULL,
  `secon_SUC` varchar(70) NOT NULL,
  `secon_per` varchar(20) NOT NULL,
  `Sr_secondary_YoP` varchar(30) NOT NULL,
  `Sr_secon_SUC` varchar(70) NOT NULL,
  `Sr_secon_per` varchar(20) NOT NULL,
  `Graduation_YoP` varchar(30) NOT NULL,
  `Graduation_college` varchar(70) NOT NULL,
  `Graduation_per` varchar(20) NOT NULL,
  `Post_graduation_YoP` varchar(30) NOT NULL,
  `Post_grad_university` varchar(70) NOT NULL,
  `Post_grad_per` varchar(20) NOT NULL,
  `NTT_YoP` varchar(30) NOT NULL,
  `NTT_SUC` varchar(70) NOT NULL,
  `NTT_per` varchar(20) NOT NULL,
  `BEd_YoP` varchar(20) NOT NULL,
  `BEd_SUC` varchar(70) NOT NULL,
  `BEd_per` varchar(20) NOT NULL,
  `MED_YoP` varchar(20) NOT NULL,
  `MED_college` varchar(70) NOT NULL,
  `MED_per` varchar(20) NOT NULL,
  `present_salary` varchar(50) NOT NULL,
  `curent_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_details`
--

INSERT INTO `teacher_details` (`Id`, `pst_app`, `photo`, `name`, `F_or_H`, `ADDRESS`, `Contact_no`, `Mobile`, `DOB`, `Email`, `Marital`, `Spouse_Name`, `Edu_quali`, `Spouse_work_address`, `Spouse_phone`, `1st_specili`, `2nd_specili`, `3rd_specili`, `secondary_YoP`, `secon_SUC`, `secon_per`, `Sr_secondary_YoP`, `Sr_secon_SUC`, `Sr_secon_per`, `Graduation_YoP`, `Graduation_college`, `Graduation_per`, `Post_graduation_YoP`, `Post_grad_university`, `Post_grad_per`, `NTT_YoP`, `NTT_SUC`, `NTT_per`, `BEd_YoP`, `BEd_SUC`, `BEd_per`, `MED_YoP`, `MED_college`, `MED_per`, `present_salary`, `curent_time`, `update_time`) VALUES
(11, 'Teacher', '322271.jpeg', 'Hemant Patil', 'Nivrutti', 'Kingaon ,tal. yawal,dist.jalgaon', '950388395', '950388395', '1995-07-05', 'hemantpatil@123gmail.com', 'Married', 'Latika', 'D.Pharma', 'Kingaon,tal,yawal, dist. jalgaon', '9529778712', 'Marathi', 'Science', '', '2011-06-05', 'Vidya Niketan ZP School', '73', '2013-06-07', 'Raisoni Group of insti. ', '81', '2018-07-10', 'Pratap college', '86', '', '', '', '', '', '', '2021-07-12', 'Maratha prasarak samaj college of education,Nashik', '85', '', '', '', '45000', '2022-05-05 07:49:33', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_form`
--
ALTER TABLE `admission_form`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `GR_NO` (`GR_NO`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `teacher_details`
--
ALTER TABLE `teacher_details`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admission_form`
--
ALTER TABLE `admission_form`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `teacher_details`
--
ALTER TABLE `teacher_details`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;


