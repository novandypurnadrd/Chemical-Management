-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2017 at 02:49 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_chemicals`
--

-- --------------------------------------------------------

--
-- Table structure for table `chemicals_users`
--

CREATE TABLE IF NOT EXISTS `chemicals_users` (
`ID` int(11) NOT NULL,
  `username` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `fullname` varchar(300) DEFAULT NULL,
  `groupid` varchar(300) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chemicals_users`
--

INSERT INTO `chemicals_users` (`ID`, `username`, `password`, `email`, `fullname`, `groupid`, `active`) VALUES
(1, 'mirlab', 'mirlab123', '', 'MirLab', '1', NULL),
(3, 'processplant', 'plant123', '', 'Process Plant User', '2', NULL),
(4, 'drilling', 'drilling123', '', 'Drilling User', '2', NULL),
(5, 'lab', 'lab123', '', 'Lab User', '2', NULL),
(6, 'exploration', 'exp123', '', 'Exploration User', '2', NULL),
(7, 'management', 'management', '', 'Management', '2', NULL),
(8, 'mining', 'mining123', '', 'Mining User', '2', NULL),
(9, 'mgs', 'mgs123', '', 'MGS User', '2', NULL),
(10, 'scm', 'scm123', '', 'SCM User', '2', NULL),
(11, 'hses', 'hses123', '', 'HSES User', '2', NULL),
(12, 'admin', 'admin123', NULL, 'Admin User', '2', NULL),
(13, 'david.roberto', 'kbk1#', NULL, 'David Roberto', '2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chemlist`
--

CREATE TABLE IF NOT EXISTS `chemlist` (
  `No` varchar(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Synonim` varchar(50) NOT NULL,
  `Local_name` varchar(35) NOT NULL,
  `Original_form` varchar(35) NOT NULL,
  `Chemical_formula` varchar(35) NOT NULL,
  `Packing` varchar(25) NOT NULL,
  `Grade_concentration` varchar(75) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Hazard_Identification` varchar(100) NOT NULL,
  `Hazard_category` varchar(25) NOT NULL,
  `Hazard_Remarks` varchar(50) NOT NULL,
  `file` varchar(100) NOT NULL,
  `MSDS` varchar(50) NOT NULL,
  `usrid` varchar(20) NOT NULL,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemlist`
--

INSERT INTO `chemlist` (`No`, `Name`, `Synonim`, `Local_name`, `Original_form`, `Chemical_formula`, `Packing`, `Grade_concentration`, `Location`, `Hazard_Identification`, `Hazard_category`, `Hazard_Remarks`, `file`, `MSDS`, `usrid`, `recdate`) VALUES
('1600-001', 'Acetic Acid Glacial', 'N/A', 'Asam asetat glasial', 'Liquid', 'CH3COOH', 'Small', 'Analytical grade 96%', 'Laboratory - Supply Chem storage', 'Flammable - Corrosive', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-002', 'Acetone', 'N/A', 'Aseton', 'Liquid', 'C3H6O', 'Small', '', 'Laboratory - Mill Plant - Supply Chem storage', 'Flammable - Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-003', 'Acetylene', 'N/A', 'Asetilen', 'Gas', 'C2H2', 'Other', '', 'Laboratory - Mill Plant - Drilling - Workshop Mobile ', 'Flammable - Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-004', 'Activated carbon', 'N/A', 'Karbon aktif', 'Solid', 'C', 'Bulk', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-005', 'Aluminium sulphate', 'N/A', 'Tawas', 'Solid', 'Al2(SO4)3', 'Small', '', 'Supply W2 - Enviro section', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-006', 'Amido Sulfuric Acid', 'Sulfamic acid', 'Asam sulfamat', 'Solid', 'H3NSO3', 'Small', 'Technical grade', 'Laboratory - Mill Plant', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-007', 'Ammonium Iron (II) Sulphate Hexahydrate', 'N/A', 'N/A', 'Solid', '(NH4)2Fe(SO4)2.6H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-008', 'Argon', 'N/A', 'Argon', 'Gas', 'Ar', 'Other', '', 'Laboratory - Mill Plant - Workshop Mobile ', 'Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-009', 'Barbituric Acid', 'N/A', 'Asam barbiturat', 'Solid', 'C4H4N2O3', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-010', 'Barium chloride dihydrate', 'Barium chloride', 'Barium klorida', 'Solid', 'BaCl2.2H2O', 'Small', '', 'Laboratory', 'Acute toxicity', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-011', 'Barium Reagent Test Kit - BariVer 4', 'N/A', 'N/A', 'Solid', 'C6H8O7 , Gum Arabic , Na2SO4', 'Small', '', 'Laboratory', 'Carcinogenic', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-012', 'Battery Fluid Acid', 'Sulphuric acid', 'Air aki', 'Liquid', 'H2SO4', 'Small', '', 'Drilling', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-013', 'Borax', 'Natrium borate', 'Boraks', 'Solid', 'Na2B4O7?10H2O', 'Small', '', 'Mill Plant - Supply W2', 'Carcinogenic', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-014', 'Buffer Solution pH 4', 'N/A', 'Larutan buffer pH 4', 'Liquid', 'C6H8O7 , NaOH , HCl', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-015', 'Buffer Solution pH 7', 'N/A', 'Larutan buffer pH 7', 'Liquid', 'Na2HPO4 & KH2PO4', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-016', 'Buffer Solution pH 10', 'N/A', 'Larutan buffer pH 10', 'Liquid', 'H3BO3 & KCl & NaOH', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-017', 'Buffer Solution pH 12', 'N/A', 'Larutan buffer pH 12', 'Liquid', 'NaOH', 'Small', '', 'Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-018', 'Cadmium chloride', 'N/A', 'Kadmium Klorida', 'Solid', 'CdCl2', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-019', 'Cadmium Reagent test Kit - Buffer powder Pillow Ci', 'N/A', 'N/A', 'Solid', 'C6H8O7 , N2H4.H2O4S , C6H5O7Na3.2H2', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic - Irritant', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-020', 'Carbon Dioxide', 'N/A', 'Karbon dioksida', 'Gas', 'CO2', 'Other', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-021', 'Chloramine-T Trihydrate', 'N/A', 'Kloromin-T', 'Solid', 'C7H7ClNaNO2S.3H2O', 'Small', '', 'Laboratory - Supply Chem storage', 'Carcinogenic - Corrosive - Irritant', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-022', 'Chloroform', 'N/A', 'Kloroform', 'Liquid', 'CHCl3', 'Small', 'Analytical grade 99.8%', 'Laboratory', 'Acute toxicity -  Carcinogenic', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-023', 'Chromium Hexavalent Reagent test kit - ChromaVer 3', 'N/A', 'N/A', 'Solid', 'K2S2O7 , MgSO4 , C13H14N4O', 'Small', '', 'Laboratory', 'Carcinogenic -  Irritant', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-024', 'Chromium Reagent test kit - Dithiver Metals', 'N/A', 'N/A', 'Solid', 'Na2S2O5', 'Small', '', 'Laboratory', 'Carcinogenic - Corrosive - Irritant', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-025', 'Chromium Total Reagent test kit - Acid reagent Pow', 'N/A', 'N/A', 'Solid', 'K2S2O7 ', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-026', 'Chromium Total Reagent test kit - Chromium 1 Reage', 'N/A', 'N/A', 'Solid', 'LiOH , Na2SO4 , BrLiO', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-027', 'Chromium Total Reagent test kit - Chromium 2 Reage', 'N/A', 'N/A', 'Solid', 'HO3SC6H3-2-(OH)CO2H?2H2O , C28H40Na', 'Small', '', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-028', 'Clarifix', 'N/A', 'Klarifiks', 'Liquid', 'AlI3', 'Other', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-029', 'Cobalt Reagent Test Kit - EDTA Powder', 'N/A', 'N/A', 'Solid', 'C10H16N2O8', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-030', 'Cobalt Reagent Test Kit - PAN Indicator 0.3% ', 'N/A', 'N/A', 'Liquid', 'HCON(CH3)2 , C14H22O(C2H4O)n (n = 9', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic - Corrosive - Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-031', 'Cobalt Reagent Test Kit - Phthalate-Phosphate', 'N/A', 'N/A', 'Liquid', 'C8H5KO4 & Na4P2O7', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-032', 'Cobalt Reagent Test Kit - Rochelle Salt Solution', 'N/A', 'N/A', 'Solid', 'H2O & KNaC4H4O6?4H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-033', 'Copper (II) Sulfate anhydrous', 'Copper Sulfate', 'Terusi', 'Solid', 'CuSO4', 'Small', '', 'Mill Plant', 'Acute aquatic toxicity -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-034', 'Copper Reagent Test Kit - Copper Masking', 'N/A', 'N/A', 'Solid', 'Na2S2O3 & C4H4Na2O4', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-035', 'Copper Reagent Test Kit - Porphyrine 1 Powder', 'N/A', 'N/A', 'Solid', 'C6H7NaO6 & C6H8O6', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-036', 'Copper Reagent Test Kit - Porphyrine 2 Powder', 'N/A', 'N/A', 'Solid', 'Na2S2O4', 'Small', '', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-037', 'Core Recovery Polimer ', 'N/A', 'CPR', 'Solid', '?(C3H5NO)n ', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-038', 'Cyanide test kit', 'N/A', 'N/A', 'Liquid', 'C3H6Cl2N3NaO5', 'Small', '', 'Laboratory', 'Flammable - Corrosive', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-039', 'Diatomaceous Earth', 'Silicone Dioxide', 'Tanah diatom', 'Solid', 'SiO2.nH2O', 'Small', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-040', 'Diisobutyl Ketone', 'N/A', 'DIBK', 'Liquid', 'C9H18O', 'Medium', '', 'Laboratory - Supply Chem storage', 'Flammable - Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-041', 'Drill Foam ', 'N/A', 'Drill foam', 'Liquid', 'C2nH4n+2On+   & H2O', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-042', 'Ethanol', 'N/A', 'Alkohol', 'Liquid', 'C2H5OH', 'Small', 'Technical Grade', 'Laboratory - Supply Chem storage', 'Flammable', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-043', 'GEOSTAT CRM GOLD (Au AR 0.90-1.00 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-044', 'GEOSTAT CRM GOLD (Au AR 2.45-2.50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-045', 'GEOSTAT CRM GOLD (Au AR 24.00-25.00 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-046', 'GEOSTAT CRM GOLD (Au AR 5.50-6.50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-047', 'GEOSTAT CRM SILVER (Ag 10-15 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-048', 'GEOSTAT CRM SILVER (Ag 150-160 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-049', 'GEOSTAT CRM SILVER (Ag 48-50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-050', 'Hydrated lime', 'Calcium hydroxide', 'Kalsium hidroksida', 'Solid', 'Ca(OH)2', 'Bulk', '', 'Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-051', 'Hydrochloric Acid', 'N/A', 'Asam klorida', 'Liquid', 'HCl', 'Medium', 'Analytical grade 37% - Technical grade', 'Laboratory - Supply Chem storage - Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-052', 'Hydrogen Peroxide ', 'Peroxide', 'Peroksida', 'Liquid', 'H2O2', 'Medium', 'Analytical grade 35% - Technical grade 50%', 'Laboratory - Mill Plant - Enviro section - Supply Chem storage - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-053', 'Hydroxylamine sulphate', 'N/A', 'N/A', 'Solid', '(HONH3)2SO4', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic - Corrosive - Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-054', 'Iodine', 'N/A', 'Iodin', 'Solid', 'I2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-055', 'Iron Reagent Test Kit - Ferrous Iron Powder ', 'N/A', 'N/A', 'Solid', 'NaHCO3 & C14H20N2O8S2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-056', 'Iron Reagent Test Kit - FerroVer', 'N/A', 'N/A', 'Solid', 'Na2S2O3 , Na2S2O5 & Na2S2O4 , ?Na3C', 'Small', '', 'Laboratory', 'Carcinogenic - Corrosive -  Irritant', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-057', 'Lead (II) Carbonate', 'Timbal Carbonate', 'N/A', 'Solid', 'PbCO3', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-058', 'Lime', 'Calcium Oxide /Quick Lime', 'Kapur tohor', 'Solid', 'CaO', 'Bulk', '', 'Mill Plant - Enviro section', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-059', 'Liquimud ', 'N/A', 'N/A', 'Liquid', '?(C3H5NO)n ', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-060', 'LPG (Liquefied Petroleum Gas)', 'N/A', 'N/A', 'Gas', 'C3H8 , C4H10 , C3H6 ', 'Other', '', 'Workshop Mobile  - Camp', 'Flammable -  Carcinogenic', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-061', 'Magnesium Chloride Hexahydrate', 'Magnesium Chloride ', 'Magnesium klorida', 'Solid', 'MgCl2.6H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-062', 'Manganesse Reagent Test Kit - Alkaline Cyanide Rea', 'N/A', 'N/A', 'Liquid', 'H2O & NaCN & NaOH', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity -  Corrosive', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-063', 'Manganesse Reagent Test Kit - Asorbic Acid', 'N/A', 'Asam asorbat', 'Solid', 'C6H8O7 ', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-064', 'Manganesse Reagent Test Kit - PAN Indicator 0.1%', 'N/A', 'N/A', 'Liquid', 'HCON(CH3)2 , C2H3O2NH4 , (C2H4O)n C', 'Small', '', 'Laboratory', 'Carcinogenic -  Corrosive', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-065', 'Malathion', 'N/A', 'Fogging agent', 'Liquid', 'C10H19O6PS2', 'Small', 'Analytical Grade 57%', 'Camp', 'Acute aquatic toxicity -  Harmfull', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-066', 'Methyl Orange', 'N/A', 'Indikator Metil Orange', 'Solid', 'C14H14N3NaO3S', 'Small', '', 'Mill Plant', 'Acute toxicity', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-067', 'Methyl Red', '2-(4-Dimethylaminophenylazo)benzoic acid', 'Indikator Metil Merah', 'Solid', 'C15H15N3O2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-068', 'Methyl trioctyl ammonium chloride', 'Aliquat', 'Aliquat', 'Liquid', 'C25H54ClN', 'Small', '', 'Laboratory - Supply Chem storage', 'Acute toxicity - Acute aquatic toxicity -  Corrosive', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-069', 'Nickel Reagent test kit - Nickel 1 Reagent', 'N/A', 'N/A', 'Solid', 'C?H?Na?O? * 2H?O & Na2S2O3', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-070', 'Nickel Reagent test kit - Nickel 2 Reagent', 'N/A', 'N/A', 'Solid', 'Na2HPO4 , KH2PO4  , Cycloheptanedio', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-071', 'Nitric Acid', 'N/A', 'Asam Nitrat', 'Liquid', 'HNO3', 'Small', 'Analytical grade 69-70% - Technical grade 68%', 'Laboratory - Supply Chem storage', 'Oxidizing -  Corrosive', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-072', 'Nitrogen', 'N/A', 'Nitrogen', 'Gas', 'N2', 'Other', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-073', 'Nitrous Oxide', 'N/A', 'Nitrous', 'Gas', 'N2O', 'Other', '', 'Laboratory', 'Oxidizing - Compressed gas -  Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-074', 'Oxygen', 'N/A', 'Oksigen', 'Gas', 'O2', 'Other', '', 'Mill Plant - Drilling - Workshop Mobile', 'Flammable -  Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-075', 'Perchloric Acid', 'N/A', 'Asam Perklorat', 'Liquid', 'HClO4', 'Small', 'Analytical grade 72%', 'Laboratory - Supply Chem storage - Mill Plant', 'Oxidizing -  Corrosive', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-076', 'Phenolphthalein', 'N/A', 'Indikator PP', 'Solid', 'C20H14O4', 'Small', '', 'Laboratory - Mill Plant', 'Carcinogenic', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-077', 'Phosphoric acid', 'N/A', 'Asam fosfat', 'Liquid', 'H3PO4', 'Small', 'Technical grade 85%', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-078', 'Plug A', 'N/A', 'N/A', 'Liquid', 'C2H2Cl2 & C4H5F5', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-079', 'Plug B', 'N/A', 'N/A', 'Liquid', 'C15H10N2O2 & POLYMETHYL POLYPHENYL ', 'Small', '', 'Drilling', 'Harmfull', '3.b', 'Mildly Dangerous', '', 'N/A', '', '2016-12-03 16:13:12'),
('1600-080', 'Poly aluminium chloride', 'Aluminium Chlorohydrate', 'Aluminium klorida', 'Liquid', 'Aln(OH)mCl3n-m', 'Small', '', 'Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-081', 'Potasium Silver Cyanide', 'N/A', 'N/A', 'Solid', 'KAg(CN)2', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-082', 'Potassium chlorate', 'Kalium chlorate', 'Kalium klorat', 'Solid', 'KClO3', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Flammable -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-083', 'Potassium Chloride', 'Kalium Chloride', 'Kalium klorida', 'Solid', 'KCl', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-084', 'Potassium cyanide', 'Kalium cyanide', 'Potas', 'Solid', 'KCN', 'Small', 'Analytical grade', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-085', 'Potassium dichromate', 'Kalium dichromate', 'kalium kromat', 'Solid', 'K2Cr2O7', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Oxidizing - Carcinogenic - Corrosive', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-086', 'Potassium dihydrogen phosphate', 'Kalium dihydrogen phosphate', 'Kalium fosfat', 'Solid', 'KH2PO4', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-087', 'Potassium hexacyanoferrate (II) trihydrate', 'Kalium hexacyanoferrate (II) trihydrate', 'Kalium heksa sianida', 'Solid', 'K4[Fe(CN)6].3H2O', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-088', 'Potassium hydrogen Phthalate', 'Kalium hydrogen Phthalate', 'Kalium Phthalate', 'Solid', 'C8H5KO4', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-089', 'Potassium Iodide', 'Kalium Iodide', 'Kalium Iodida', 'Solid', 'KI', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-090', 'Potassium permanganate ', 'Kalium permanganate ', 'Kalium permanganat', 'Solid', 'KMnO4', 'Small', 'Technical grade', 'Laboratory', 'Acute aquatic toxicity - Oxidizing - Corrosive -  Harmfull', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-091', 'Pupuk NPK', 'N/A', 'NPK', 'Solid', 'H6NO4P , (NH4)2HPO4 , KCl , CH4N2O ', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-092', 'Pupuk Urea', 'N/A', 'Urea', 'Solid', '(NH2)2CO', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-093', 'Pyridine', 'N/A', 'Piridin', 'Liquid', 'C5H5N', 'Small', 'Analytcal Grade 99.5%', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-094', 'R134A', '1,1,1,2 Tetrafluoroethane, HFC-134a, Norflurane', 'N/A', 'Gas', 'C2H2F4', 'Small', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-095', 'Resin Ambersep', 'N/A', 'Resin', 'Solid', 'C19H29COOH', 'Bulk', '', 'Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-096', 'Rhodanine', '4-dimethylamino-Benzylidine', 'Rodanin', 'Solid', 'C12H12N2OS2', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-097', 'Roundup', 'N/A', 'N/A', 'Liquid', 'C6H17O5N2P', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-098', 'Silica Flour', 'N/A', 'Silika', 'Solid', 'SiO2', 'Small', '', 'Mill Plant - Supply W2', 'Harmfull', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-099', 'Silver Nitrate', 'N/A', 'Perak nitrat', 'Solid', 'AgNO3', 'Small', '', 'Laboratory - Mill Plant', 'Acute aquatic toxicity - Oxidizing -  Corrosive', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-100', 'Soda Ash ', 'Natrium carbonate/Sodium carbonate', 'Soda As', 'Solid', 'Na2CO3', 'Small', 'Technical Grade', 'Mill Plant - Supply W2', 'Irritant', '4', 'Less Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-101', 'Sodium Acetate Trihydrate', 'Natrium Acetate', 'Natrium asetat', 'Solid', 'CH3COONa.3H2O', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-102', 'Sodium Borohydride', 'Natrium borohydride', 'Natrium borohidrida', 'Solid', 'NaBH4', 'Small', '', 'Laboratory', 'Acute toxicity - Flammable -  Corrosive', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-103', 'Sodium Chloride', 'Natrium Chloride', 'Garam dapur', 'Solid', 'NaCl', 'Small', 'Technical grade', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-104', 'Sodium cyanide', 'Natrium cyanide', 'Sianida', 'Solid', 'NaCN', 'Small', 'Technical grade, 98%', 'Mill Plant - Supply W2', 'Acute toxicity - Acute aquatic toxicity', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-105', 'Sodium dihydrogen phosphate dihydrate', 'Natrium dihydrogen phosphate dihydrate', 'Natrium phosfat', 'Solid', 'NaH2PO4.H2O', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-106', 'Sodium Hydroxide', 'Natrium Hydroxide', 'Natrium Hydroksida', 'Solid', 'NaOH', 'Small', 'Analytical grade 99% - Sorensen 50%', 'Laboratory - Mill Plant - Enviro section - Supply Chem storage - Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-107', 'Sodium hypochlorite', 'Natrium hypochlorite', 'Bleaching', 'Liquid', 'NaOCl', 'Small', 'Technical grade', 'Camp', 'Acute aquatic toxicity - Corrosive -  Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-108', 'Sodium Iodide', 'Natrium Iodide', 'Natrium Iodida', 'Solid', 'NaI', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-109', 'Sodium Metabisulfit', 'Natrium Metabisulfit', 'Garam sulfat', 'Solid', 'Na2S2O5', 'Small', 'Technical grade 97%', 'Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-110', 'Standard solution - Aluminium', 'N/A', 'Larutan Standar Aluminium', 'Solution', 'Al(NO3)3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-111', 'Standard solution - Arsenic ', 'N/A', 'larutan Standar arsen', 'Solution', 'H3AsO4 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-112', 'Standard solution - Barium ', 'N/A', 'Larutan Standar barium', 'Solution', 'Ba(NO3)2  in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-113', 'Standard solution - Cadmium ', 'N/A', 'Larutan Standar kadmium', 'Solution', 'Cd(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-114', 'Standard solution - Chromium', 'N/A', 'Larutan Standar krom', 'Solution', 'Cr(NO3)3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-115', 'Standard solution - Cobalt ', 'N/A', 'larutan Standar kobalt', 'Solution', 'Co(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-116', 'Standard solution - Copper ', 'N/A', 'Larutan Standar tembaga', 'Solution', 'Cu(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-117', 'Standard solution - Gold ', 'N/A', 'Larutan Standar emas', 'Solution', 'AuCl4 in HCl 2 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-118', 'Standard solution - Iron ', 'N/A', 'Larutan Standar basi', 'Solution', 'Fe(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-119', 'Standard solution - Lead ', 'N/A', 'Larutan Standar timbal', 'Solution', 'Pb(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-120', 'Standard solution - Magnesium ', 'N/A', 'Larutan Standar magnesium', 'Solution', 'Mg(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-121', 'Standard solution - Manganesse ', 'N/A', 'Larutan Standar magan', 'Solution', 'Mn(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-122', 'Standard solution - Mercury ', 'N/A', 'Larutan Standar merkuri', 'Solution', 'Hg(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-123', 'Standard solution - Nickel ', 'N/A', 'Larutan Standar nikel', 'Solution', 'Ni(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-124', 'Standard solution - Selenium ', 'N/A', 'Larutan Standar selenium', 'Solution', 'SeO2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-125', 'Standard solution - Silver ', 'N/A', 'Larutan Standar perak', 'Solution', 'AgNO3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Acute aquatic toxicity - Corrosive', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-126', 'Standard solution - Stannum', 'N/A', 'Larutan Standar stanum', 'Solution', 'SnCl4 in 2 mol/L HCl', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-127', 'Standard solution - Zinc ', 'N/A', 'Larutan Standar seng', 'Solution', 'Zn(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-128', 'Sulphuric Acid', 'N/A', 'asam sulfat', 'Liquid', 'H2SO4', 'Small', 'Analytical grade 98% - Technical grade', 'Laboratory - Mill Plant - Supply Chem storage - Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-129', 'Supertrol ', 'N/A', 'N/A', 'Solid', '', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-130', 'Synoff', 'Cypermethrin', 'Fogging agent', 'Liquid', 'C22H19Cl2NO3', 'Small', '', 'Camp', 'Acute aquatic toxicity - Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-131', 'Tin (II) chloride dihydrate', 'N/A', 'Stanum klorida', 'Solid', 'SnCl2.2H2O', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-132', 'TSP (Triple Super Phosphat)', 'Granulated Triple Superphosphate, GTSP', 'N/A', 'Solid', 'Ca(H2PO4)', 'Small', '', 'Enviro section', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-133', 'Vaseline', 'N/A', 'N/A', 'Solid', 'C3H8O2', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-134', 'Zinc (II) acetate dihydrate', 'N/A', 'N/A', 'Solid', '(CH3COO)2Zn*2H2ONa', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Irritant', '2.a', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-135', 'Zinc test kit - Cyclohexanone ', 'N/A', 'N/A', 'Liquid', 'C6H10O', 'Small', '', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', '', 'Available', '', '2016-12-03 16:13:12'),
('1600-136', 'Zinc test kit - ZincoVer 5 Reagent', 'N/A', 'N/A', 'Solid', 'K3BO3 &  ?C6H7NaO6 & B2O3 & KCN', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic', '1', 'Very Dangerous', '', 'Available', '', '2016-12-03 16:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `chemlist_copy`
--

CREATE TABLE IF NOT EXISTS `chemlist_copy` (
  `No` varchar(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Synonim` varchar(50) NOT NULL,
  `Local_name` varchar(35) NOT NULL,
  `Original_form` varchar(35) NOT NULL,
  `Chemical_formula` varchar(35) NOT NULL,
  `Packing_small` varchar(25) NOT NULL,
  `Packing_medium` varchar(25) NOT NULL,
  `Packing_Bulk` varchar(25) NOT NULL,
  `Packing_Other` varchar(25) NOT NULL,
  `Grade_concentration1` varchar(35) DEFAULT NULL,
  `Grade_concentration2` varchar(35) DEFAULT NULL,
  `Grade_concentration3` varchar(35) DEFAULT NULL,
  `Location1` varchar(35) DEFAULT NULL,
  `Location2` varchar(35) DEFAULT NULL,
  `Location3` varchar(35) DEFAULT NULL,
  `Location4` varchar(35) DEFAULT NULL,
  `Location5` varchar(35) DEFAULT NULL,
  `MSDS` varchar(100) NOT NULL,
  `Hazard_Acute_toxicity` varchar(25) DEFAULT NULL,
  `Hazard_Acute_aquatic_toxicity` varchar(25) DEFAULT NULL,
  `Hazard_Oxidizing` varchar(25) DEFAULT NULL,
  `Hazard_Flammable` varchar(25) DEFAULT NULL,
  `Hazard_Compressed_gas` varchar(25) DEFAULT NULL,
  `Hazard_Carcinogenic` varchar(25) DEFAULT NULL,
  `Hazard_Corrosive` varchar(25) DEFAULT NULL,
  `Hazard_Harmfull` varchar(25) DEFAULT NULL,
  `Hazard_Irritant` varchar(25) DEFAULT NULL,
  `Category` varchar(25) NOT NULL,
  `Remarks` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemlist_copy`
--

INSERT INTO `chemlist_copy` (`No`, `Name`, `Synonim`, `Local_name`, `Original_form`, `Chemical_formula`, `Packing_small`, `Packing_medium`, `Packing_Bulk`, `Packing_Other`, `Grade_concentration1`, `Grade_concentration2`, `Grade_concentration3`, `Location1`, `Location2`, `Location3`, `Location4`, `Location5`, `MSDS`, `Hazard_Acute_toxicity`, `Hazard_Acute_aquatic_toxicity`, `Hazard_Oxidizing`, `Hazard_Flammable`, `Hazard_Compressed_gas`, `Hazard_Carcinogenic`, `Hazard_Corrosive`, `Hazard_Harmfull`, `Hazard_Irritant`, `Category`, `Remarks`) VALUES
('1600-001', 'Acetic Acid Glacial', '', '', 'Liquid', 'CH3COOH', 'Small', '', '', '', 'Analytical grade 96%', NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, 'Corrosive', NULL, NULL, '2.b', ''),
('1600-002', 'Acetone', '', '', 'Liquid', 'C3H6O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', 'Supply Chem storage', NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-003', 'Acetylene', '', '', 'Gas', 'C2H2', '', '', '', 'Other', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', 'Drilling', 'Workshop Mobile ', NULL, 'Available', NULL, NULL, NULL, 'Flammable', 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-004', 'Activated carbon', '', '', 'Solid', 'C', '', '', 'Bulk', '', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-005', 'Aluminium sulphate', '', 'Tawas', 'Solid', 'Al2(SO4)3', 'Small', '', '', '', NULL, NULL, NULL, 'Supply W2', 'Enviro section', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-006', 'Amido Sulfuric Acid', 'Sulfamic acid', '', 'Solid', 'H3NSO3', 'Small', '', '', '', 'Technical grade', NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-007', 'Ammonium Iron (II) Sulphate Hexahydrate', '', '', 'Solid', '(NH4)2Fe(SO4)2.6H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-008', 'Argon', '', '', 'Gas', 'Ar', '', '', '', 'Other', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', 'Workshop Mobile ', NULL, NULL, 'Available', NULL, NULL, NULL, NULL, 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-009', 'Barbituric Acid', '', '', '', 'C4H4N2O3', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-010', 'Barium chloride dihydrate', '', '', '', 'BaCl2.2H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', ''),
('1600-011', 'Barium Reagent Test Kit - BariVer 4', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '3.a', ''),
('1600-012', 'Battery Fuild Accid', '', '', '', 'H2SO4', 'Small', '', '', '', NULL, NULL, NULL, 'Drilling', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-013', 'Borax', '', '', '', 'Na2B4O7.10H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '3.a', ''),
('1600-014', 'Buffer Solution pH 4', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-015', 'Buffer Solution pH 7', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-016', 'Buffer Solution pH 10', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-017', 'Buffer Solution pH 12', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-018', 'Cadmium chloride', '', '', '', 'CdCl2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '1', ''),
('1600-019', 'Cadmium Reagent test Kit - Buffer powder Pillow Ci', '', '', '', 'C6H8O7 & N2H4.H2O4S & C6H5O7Na3.2H2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, 'Irritant', '1', ''),
('1600-020', 'Carbon Dioxide', '', '', '', 'CO2', '', '', '', 'Other', NULL, NULL, NULL, 'Workshop Mobile', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-021', 'Chloramine-T Trihydrate', '', '', '', 'C7H7ClNaNO2S.3H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, 'Irritant', '3.a', ''),
('1600-022', 'Chloroform', '', '', '', 'CHCl3', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', NULL, NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '1', ''),
('1600-023', 'Chromium Hexavalent Reagent test kit - ChromaVer 3', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, 'Irritant', '3.a', ''),
('1600-024', 'Chromium Reagent test kit - Dithiver Metals', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, 'Irritant', '3.a', ''),
('1600-025', 'Chromium Total Reagent test kit - Acid reagent Pow', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-026', 'Chromium Total Reagent test kit - Chromium 1 Reage', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-027', 'Chromium Total Reagent test kit - Chromium 2 Reage', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-028', 'Clarifix', '', '', '', 'AlI3', '', '', '', 'Other', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-029', 'Cobalt Reagent Test Kit - EDTA Powder', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-030', 'Cobalt Reagent Test Kit - PAN Indicator 0.3% ', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, 'Irritant', '2.a', ''),
('1600-031', 'Cobalt Reagent Test Kit - Phthalate-Phosphate', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-032', 'Cobalt Reagent Test Kit - Rochelle Salt Solution', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-033', 'Copper (II) Sulfate anhydrous', '', '', '', 'CuSO4', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '2.a', ''),
('1600-034', 'Copper Reagent Test Kit - Copper Masking', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-035', 'Copper Reagent Test Kit - Porphyrine 1 Powder', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-036', 'Copper Reagent Test Kit - Porphyrine 2 Powder', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-037', 'Cyanide test kit', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, 'Corrosive', NULL, NULL, '2.b', ''),
('1600-038', 'Diatomaceous Earth', '', '', '', 'SiO2.nH2O', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-039', 'Diisobutyl Ketone', '', 'DIBK', '', 'C9H18O', '', 'Medium', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-040', 'EM4', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-041', 'Etanol', '', '', '', 'C2H5OH', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, NULL, '2.b', ''),
('1600-042', 'GEOSTAT CRM GOLD (Au AR 0.90-1.00 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-043', 'GEOSTAT CRM GOLD (Au AR 2.45-2.50 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-044', 'GEOSTAT CRM GOLD (Au AR 24.00-25.00 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-045', 'GEOSTAT CRM GOLD (Au AR 5.50-6.50 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-046', 'GEOSTAT CRM SILVER (Ag 10-15 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-047', 'GEOSTAT CRM SILVER (Ag 150-160 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-048', 'GEOSTAT CRM SILVER (Ag 48-50 PPM)', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-049', 'Hydrated lime', '', '', '', 'Ca(OH)2', '', '', 'Bulk', '', NULL, NULL, NULL, 'Supply W2', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-050', 'Hydrochloric Acid', '', '', 'Liquid', 'HCl', '', 'Medium', '', '', 'Analytical grade 37%', 'Technical grade', NULL, 'Laboratory', 'Supply Chem storage', 'Mill Plant', 'Supply W2', NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-051', 'Hydrogen Peroxide ', '', '', '', 'H2O2', '', 'Medium', '', '', 'Analytical grade 35%', 'Technical grade 50%', NULL, 'Laboratory', 'Mill Plant', 'Enviro section', 'Supply Chem storage', 'Supply W2', 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-052', 'Hydroxylamine sulphate', '', '', '', '(HONH3)2SO4', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, 'Irritant', '2.a', ''),
('1600-053', 'Iodine', '', '', '', 'I2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, 'Irritant', '2.a', ''),
('1600-054', 'Iron Reagent Test Kit - Ferrous Iron Powder ', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '2.a', ''),
('1600-055', 'Iron Reagent Test Kit - FerroVer', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, 'Irritant', '3.a', ''),
('1600-056', 'Lead (II) Carbonate', '', '', '', 'PbCO3', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, 'Irritant', '2.a', ''),
('1600-057', 'Lime', '', '', '', 'CaO', '', '', 'Bulk', '', NULL, NULL, NULL, 'Mill Plant', 'Enviro section', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-058', 'LPG (Liquefied Petroleum Gas)', '', '', '', 'C3H8 , C4H10 , C3H6 ', '', '', '', 'Other', NULL, NULL, NULL, 'Workshop Mobile ', 'Camp', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, 'Carcinogenic', NULL, NULL, NULL, '2.b', ''),
('1600-059', 'Magnesium Chloride Hexahydrate', '', '', '', 'MgCl2.6H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-060', 'Manganesse Reagent Test Kit - Alkaline Cyanide Rea', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '1', ''),
('1600-061', 'Manganesse Reagent Test Kit - Asorbic Acid', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-062', 'Manganesse Reagent Test Kit - PAN Indicator 0.1%', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, NULL, '3.a', ''),
('1600-063', 'Malathion', '', 'Fogging agent', '', 'C10H19O6PS2', 'Small', '', '', '', NULL, NULL, NULL, 'Camp', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, 'Harmfull', NULL, '2.a', ''),
('1600-064', 'Methyl Orange', '', '', '', 'C14H14N3NaO3S', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', ''),
('1600-065', 'Methyl Red', '2-(4-Dimethylaminophenylazo)benzoic acid', '', '', 'C15H15N3O2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.a', ''),
('1600-066', 'Methyl trioctyl ammonium chloride', 'Aliquat', '', '', 'C25H54ClN', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '2.a', ''),
('1600-067', 'Nickel Reagent test kit - Nickel 1 Reagent', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-068', 'Nickel Reagent test kit - Nickel 2 Reagent', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-069', 'Nitric Acid', '', '', '', 'HNO3', 'Small', '', '', '', 'Analytical grade 69-70%', 'Technical grade 68%', NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, 'Oxidizing', NULL, NULL, NULL, 'Corrosive', NULL, NULL, '2.b', ''),
('1600-070', 'Nitrogen', '', '', '', 'N2', '', '', '', 'Other', NULL, NULL, NULL, 'Workshop Mobile', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-071', 'Nitrous Oxide', '', '', '', 'N2O', '', '', '', 'Other', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, 'Oxidizing', NULL, 'Compressed gas', NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-072', 'Oxygen', '', '', '', 'O2', '', '', '', 'Other', NULL, NULL, NULL, 'Mill Plant', 'Drilling', 'Workshop Mobile', NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-073', 'Perchloric Acid', '', '', '', 'HClO4', 'Small', '', '', '', 'Analytical grade 72%', NULL, NULL, 'Laboratory', 'Supply Chem storage', 'Mill Plant', NULL, NULL, 'Available', NULL, NULL, 'Oxidizing', NULL, NULL, NULL, 'Corrosive', NULL, NULL, '2.b', ''),
('1600-074', 'Pestisida', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, '', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.a', ''),
('1600-075', 'Phenolphthalein', '', '', '', 'C20H14O4', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '3.a', ''),
('1600-076', 'Phosphoric acid', '', '', '', 'H3PO4', 'Small', '', '', '', 'Technical grade 85%', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-077', 'Poly aluminium chloride', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Supply W2', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-078', 'Potasium Silver Cyanide', '', '', '', 'KAg(CN)2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-079', 'Potassium chlorate', '', '', '', 'KClO3', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.a', ''),
('1600-080', 'Potassium Chloride (KCl)', '', '', '', 'KCl', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-081', 'Potassium cyanide', '', '', '', 'KCN', 'Small', '', '', '', 'Analytical grade', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', ''),
('1600-082', 'Potassium dichromate', '', '', '', 'K2Cr2O7', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', 'Oxidizing', NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, NULL, '1', ''),
('1600-083', 'Potassium dihydrogen phosphate', '', '', '', 'KH2PO4', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-084', 'Potassium hexacyanoferrate (II) trihydrate', '', '', '', 'K4[Fe(CN)6].3H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.a', ''),
('1600-085', 'Potassium hydrogen Phthalate', '', '', '', 'C8H5KO4', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-086', 'Potassium Iodide', '', '', '', 'KI', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-087', 'Potassium permanganate ', '', '', '', 'KMnO4', 'Small', '', '', '', 'Technical grade', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', 'Oxidizing', NULL, NULL, NULL, 'Corrosive', 'Harmfull', NULL, '2.a', ''),
('1600-088', 'Pupuk NPK', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-089', 'Pupuk Urea', '', '', '', '(NH2)2CO', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-090', 'Pyridine', '', '', '', 'C5H5N', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-091', 'R134A', '', '', '', 'HFC', 'Small', '', '', '', NULL, NULL, NULL, 'Workshop Mobile', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, 'Compressed gas', NULL, NULL, NULL, NULL, '2.b', ''),
('1600-092', 'Resin Ambersep', '', '', '', 'C19H29COOH', '', '', 'Bulk', '', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-093', 'Rhodanine', '4-dimethylamino-Benzylidine', '', '', 'C12H12N2OS2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-094', 'Roundup', '', '', '', 'C6H17O5N2P', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-095', 'Silica Flour', '', '', '', 'SiO2', 'Small', '', '', '', NULL, NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Harmfull', NULL, '3.b', ''),
('1600-096', 'Silver Nitrate', '', '', '', 'AgNO3', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Mill Plant', NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', 'Oxidizing', NULL, NULL, NULL, 'Corrosive', NULL, NULL, '2.a', ''),
('1600-097', 'Soda Ash ', '', '', '', 'Na2CO3', 'Small', '', '', '', 'Technical Grade', NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '4', ''),
('1600-098', 'Sodium Acetate Trihydrate', '', '', '', 'CH3COONa.3H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-099', 'Sodium Borohydride', '', '', '', 'NaBH4', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', 'Acute toxicity', NULL, NULL, 'Flammable', NULL, NULL, 'Corrosive', NULL, NULL, '1', ''),
('1600-100', 'Sodium Chloride', '', '', '', 'NaCl', 'Small', '', '', '', 'Technical grade', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-101', 'Sodium cyanide', '', '', '', 'NaCN', 'Small', '', '', '', 'Technical grade, 98%', NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', ''),
('1600-102', 'Sodium dihydrogen phosphate dihydrate', '', '', '', 'NaH2PO4.H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', 'Supply Chem storage', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-103', 'Sodium Hydroxide', '', '', '', 'NaOH', 'Small', '', '', '', 'Analytical grade 99%', 'Sorensen 50%', NULL, 'Laboratory', 'Mill Plant', 'Enviro section', 'Supply Chem storage', 'Supply W2', 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-104', 'Sodium hypochlorite', '', 'Bleaching', '', 'NaOCl', 'Small', '', '', '', 'Technical grade', NULL, NULL, 'Camp', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '2.a', ''),
('1600-105', 'Sodium Iodide', '', '', '', 'NaI', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.a', ''),
('1600-106', 'Sodium Metabisulfit', '', '', '', 'Na2S2O5', 'Small', '', '', '', 'Technical grade 97%', NULL, NULL, 'Mill Plant', 'Supply W2', NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-107', 'Standard solution - Aluminium', '', '', '', 'Al(NO3)3 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-108', 'Standard solution - Arsenic ', '', '', '', 'H3AsO4 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, NULL, '3.a', ''),
('1600-109', 'Standard solution - Barium ', '', '', '', 'Ba(NO3)2  in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-110', 'Standard solution - Cadmium ', '', '', '', 'Cd(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-111', 'Standard solution - Chromium', '', '', '', 'Cr(NO3)3 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-112', 'Standard solution - Cobalt ', '', '', '', 'Co(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, NULL, '3.a', ''),
('1600-113', 'Standard solution - Copper ', '', '', '', 'Cu(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-114', 'Standard solution - Gold ', '', '', '', 'AuCl4 in HCl 2 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-115', 'Standard solution - Iron ', '', '', '', 'Fe(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-116', 'Standard solution - Lead ', '', '', '', 'Pb(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-117', 'Standard solution - Magnesium ', '', '', '', 'Mg(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-118', 'Standard solution - Manganesse ', '', '', '', 'Mn(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-119', 'Standard solution - Mercury ', '', '', '', 'Hg(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-120', 'Standard solution - Nickel ', '', '', '', 'Ni(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, 'Carcinogenic', 'Corrosive', NULL, NULL, '3.a', ''),
('1600-121', 'Standard solution - Selenium ', '', '', '', 'SeO2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-122', 'Standard solution - Silver ', '', '', '', 'AgNO3 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '2.a', ''),
('1600-123', 'Standard solution - Stannum', '', '', '', 'SnCl4 in 2 mol/L HCl', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-124', 'Standard solution - Zinc ', '', '', '', 'Zn(NO3)2 in HNO3 0.5 mol/L', 'Small', '', '', '', '1000 ppm', NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-125', 'Sulphuric Acid', '', '', '', 'H2SO4', 'Small', '', '', '', 'Analytical grade 98%', 'Technical grade', NULL, 'Laboratory', 'Mill Plant', 'Supply Chem storage', 'Supply W2', NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, NULL, '3.b', ''),
('1600-126', 'Synoff', 'Cypermethrin', 'Fogging agent', '', 'C22H19Cl2NO3', 'Small', '', '', '', NULL, NULL, NULL, 'Camp', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '2.a', ''),
('1600-127', 'Tin (II) chloride dihydrate', '', '', '', 'SnCl2.2H2O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-128', 'TSP (Triple Super Phosphat)', '', '', '', 'Ca(H2PO4)', 'Small', '', '', '', NULL, NULL, NULL, 'Enviro section', NULL, NULL, NULL, NULL, 'Available', NULL, NULL, NULL, NULL, NULL, NULL, 'Corrosive', NULL, 'Irritant', '3.b', ''),
('1600-129', 'Vaseline', '', '', '', 'C3H8O2', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Non Hazardous', ''),
('1600-130', 'Zinc (II) acetate dihydrate', '', '', '', '(CH3COO)2Zn*2H2ONa', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, 'Available', NULL, 'Acute aquatic toxicity', NULL, NULL, NULL, NULL, NULL, NULL, 'Irritant', '2.a', ''),
('1600-131', 'Zinc test kit - Cyclohexanone ', '', '', '', 'C6H10O', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 'Flammable', NULL, NULL, NULL, NULL, 'Irritant', '2.b', ''),
('1600-132', 'Zinc test kit - ZincoVer 5 Reagent', '', '', '', '', 'Small', '', '', '', NULL, NULL, NULL, 'Laboratory', NULL, NULL, NULL, NULL, '', 'Acute toxicity', 'Acute aquatic toxicity', NULL, NULL, NULL, 'Carcinogenic', NULL, NULL, NULL, '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `chemlist_copy1`
--

CREATE TABLE IF NOT EXISTS `chemlist_copy1` (
  `No` varchar(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Synonim` varchar(50) NOT NULL,
  `Local_name` varchar(35) NOT NULL,
  `Original_form` varchar(35) NOT NULL,
  `Chemical_formula` varchar(35) NOT NULL,
  `Packing` varchar(25) NOT NULL,
  `Grade_concentration` varchar(75) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Hazard_Identification` varchar(100) NOT NULL,
  `Hazard_category` varchar(25) NOT NULL,
  `Hazard_Remarks` varchar(50) NOT NULL,
  `MSDS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chemlist_copy1`
--

INSERT INTO `chemlist_copy1` (`No`, `Name`, `Synonim`, `Local_name`, `Original_form`, `Chemical_formula`, `Packing`, `Grade_concentration`, `Location`, `Hazard_Identification`, `Hazard_category`, `Hazard_Remarks`, `MSDS`) VALUES
('1600-001', 'Acetic Acid Glacial', 'N/A', 'Asam asetat glasial', 'Liquid', 'CH3COOH', 'Small', 'Analytical grade 96%', 'Laboratory - Supply Chem storage', 'Flammable - Corrosive', '2.b', 'Dangerous', 'Available'),
('1600-002', 'Acetone', 'N/A', 'Aseton', 'Liquid', 'C3H6O', 'Small', '', 'Laboratory - Mill Plant - Supply Chem storage', 'Flammable - Irritant', '2.b', 'Dangerous', 'Available'),
('1600-003', 'Acetylene', 'N/A', 'Asetilen', 'Gas', 'C2H2', 'Other', '', 'Laboratory - Mill Plant - Drilling - Workshop Mobile ', 'Flammable - Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-004', 'Activated carbon', 'N/A', 'Karbon aktif', 'Solid', 'C', 'Bulk', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-005', 'Aluminium sulphate', 'N/A', 'Tawas', 'Solid', 'Al2(SO4)3', 'Small', '', 'Supply W2 - Enviro section', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-006', 'Amido Sulfuric Acid', 'Sulfamic acid', 'Asam sulfamat', 'Solid', 'H3NSO3', 'Small', 'Technical grade', 'Laboratory - Mill Plant', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-007', 'Ammonium Iron (II) Sulphate Hexahydrate', 'N/A', 'N/A', 'Solid', '(NH4)2Fe(SO4)2.6H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-008', 'Argon', 'N/A', 'Argon', 'Gas', 'Ar', 'Other', '', 'Laboratory - Mill Plant - Workshop Mobile ', 'Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-009', 'Barbituric Acid', 'N/A', 'Asam barbiturat', 'Solid', 'C4H4N2O3', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-010', 'Barium chloride dihydrate', 'Barium chloride', 'Barium klorida', 'Solid', 'BaCl2.2H2O', 'Small', '', 'Laboratory', 'Acute toxicity', '1', 'Very Dangerous', 'Available'),
('1600-011', 'Barium Reagent Test Kit - BariVer 4', 'N/A', 'N/A', 'Solid', 'C6H8O7 , Gum Arabic , Na2SO4', 'Small', '', 'Laboratory', 'Carcinogenic', '3.a', 'Mildly Dangerous', 'Available'),
('1600-012', 'Battery Fluid Acid', 'Sulphuric acid', 'Air aki', 'Liquid', 'H2SO4', 'Small', '', 'Drilling', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-013', 'Borax', 'Natrium borate', 'Boraks', 'Solid', 'Na2B4O7?10H2O', 'Small', '', 'Mill Plant - Supply W2', 'Carcinogenic', '3.a', 'Mildly Dangerous', 'Available'),
('1600-014', 'Buffer Solution pH 4', 'N/A', 'Larutan buffer pH 4', 'Liquid', 'C6H8O7 , NaOH , HCl', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-015', 'Buffer Solution pH 7', 'N/A', 'Larutan buffer pH 7', 'Liquid', 'Na2HPO4 & KH2PO4', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-016', 'Buffer Solution pH 10', 'N/A', 'Larutan buffer pH 10', 'Liquid', 'H3BO3 & KCl & NaOH', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-017', 'Buffer Solution pH 12', 'N/A', 'Larutan buffer pH 12', 'Liquid', 'NaOH', 'Small', '', 'Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-018', 'Cadmium chloride', 'N/A', 'Kadmium Klorida', 'Solid', 'CdCl2', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic', '1', 'Very Dangerous', 'Available'),
('1600-019', 'Cadmium Reagent test Kit - Buffer powder Pillow Ci', 'N/A', 'N/A', 'Solid', 'C6H8O7 , N2H4.H2O4S , C6H5O7Na3.2H2', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic - Irritant', '1', 'Very Dangerous', 'Available'),
('1600-020', 'Carbon Dioxide', 'N/A', 'Karbon dioksida', 'Gas', 'CO2', 'Other', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-021', 'Chloramine-T Trihydrate', 'N/A', 'Kloromin-T', 'Solid', 'C7H7ClNaNO2S.3H2O', 'Small', '', 'Laboratory - Supply Chem storage', 'Carcinogenic - Corrosive - Irritant', '3.a', 'Mildly Dangerous', 'Available'),
('1600-022', 'Chloroform', 'N/A', 'Kloroform', 'Liquid', 'CHCl3', 'Small', 'Analytical grade 99.8%', 'Laboratory', 'Acute toxicity -  Carcinogenic', '1', 'Very Dangerous', 'Available'),
('1600-023', 'Chromium Hexavalent Reagent test kit - ChromaVer 3', 'N/A', 'N/A', 'Solid', 'K2S2O7 , MgSO4 , C13H14N4O', 'Small', '', 'Laboratory', 'Carcinogenic -  Irritant', '3.a', 'Mildly Dangerous', 'Available'),
('1600-024', 'Chromium Reagent test kit - Dithiver Metals', 'N/A', 'N/A', 'Solid', 'Na2S2O5', 'Small', '', 'Laboratory', 'Carcinogenic - Corrosive - Irritant', '3.a', 'Mildly Dangerous', 'Available'),
('1600-025', 'Chromium Total Reagent test kit - Acid reagent Pow', 'N/A', 'N/A', 'Solid', 'K2S2O7 ', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-026', 'Chromium Total Reagent test kit - Chromium 1 Reage', 'N/A', 'N/A', 'Solid', 'LiOH , Na2SO4 , BrLiO', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-027', 'Chromium Total Reagent test kit - Chromium 2 Reage', 'N/A', 'N/A', 'Solid', 'HO3SC6H3-2-(OH)CO2H?2H2O , C28H40Na', 'Small', '', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-028', 'Clarifix', 'N/A', 'Klarifiks', 'Liquid', 'AlI3', 'Other', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-029', 'Cobalt Reagent Test Kit - EDTA Powder', 'N/A', 'N/A', 'Solid', 'C10H16N2O8', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-030', 'Cobalt Reagent Test Kit - PAN Indicator 0.3% ', 'N/A', 'N/A', 'Liquid', 'HCON(CH3)2 , C14H22O(C2H4O)n (n = 9', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic - Corrosive - Irritant', '2.a', 'Dangerous', 'Available'),
('1600-031', 'Cobalt Reagent Test Kit - Phthalate-Phosphate', 'N/A', 'N/A', 'Liquid', 'C8H5KO4 & Na4P2O7', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-032', 'Cobalt Reagent Test Kit - Rochelle Salt Solution', 'N/A', 'N/A', 'Solid', 'H2O & KNaC4H4O6?4H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-033', 'Copper (II) Sulfate anhydrous', 'Copper Sulfate', 'Terusi', 'Solid', 'CuSO4', 'Small', '', 'Mill Plant', 'Acute aquatic toxicity -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-034', 'Copper Reagent Test Kit - Copper Masking', 'N/A', 'N/A', 'Solid', 'Na2S2O3 & C4H4Na2O4', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-035', 'Copper Reagent Test Kit - Porphyrine 1 Powder', 'N/A', 'N/A', 'Solid', 'C6H7NaO6 & C6H8O6', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-036', 'Copper Reagent Test Kit - Porphyrine 2 Powder', 'N/A', 'N/A', 'Solid', 'Na2S2O4', 'Small', '', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', 'Available'),
('1600-037', 'Core Recovery Polimer ', 'N/A', 'CPR', 'Solid', '?(C3H5NO)n ', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-038', 'Cyanide test kit', 'N/A', 'N/A', 'Liquid', 'C3H6Cl2N3NaO5', 'Small', '', 'Laboratory', 'Flammable - Corrosive', '2.b', 'Dangerous', 'Available'),
('1600-039', 'Diatomaceous Earth', 'Silicone Dioxide', 'Tanah diatom', 'Solid', 'SiO2.nH2O', 'Small', '', 'Mill Plant - Supply W2', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-040', 'Diisobutyl Ketone', 'N/A', 'DIBK', 'Liquid', 'C9H18O', 'Medium', '', 'Laboratory - Supply Chem storage', 'Flammable - Irritant', '2.b', 'Dangerous', 'Available'),
('1600-041', 'Drill Foam ', 'N/A', 'Drill foam', 'Liquid', 'C2nH4n+2On+   & H2O', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-042', 'Ethanol', 'N/A', 'Alkohol', 'Liquid', 'C2H5OH', 'Small', 'Technical Grade', 'Laboratory - Supply Chem storage', 'Flammable', '2.b', 'Dangerous', 'Available'),
('1600-043', 'GEOSTAT CRM GOLD (Au AR 0.90-1.00 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-044', 'GEOSTAT CRM GOLD (Au AR 2.45-2.50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-045', 'GEOSTAT CRM GOLD (Au AR 24.00-25.00 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-046', 'GEOSTAT CRM GOLD (Au AR 5.50-6.50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-047', 'GEOSTAT CRM SILVER (Ag 10-15 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-048', 'GEOSTAT CRM SILVER (Ag 150-160 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-049', 'GEOSTAT CRM SILVER (Ag 48-50 PPM)', 'N/A', 'N/A', 'Solid', 'N/A', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-050', 'Hydrated lime', 'Calcium hydroxide', 'Kalsium hidroksida', 'Solid', 'Ca(OH)2', 'Bulk', '', 'Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-051', 'Hydrochloric Acid', 'N/A', 'Asam klorida', 'Liquid', 'HCl', 'Medium', 'Analytical grade 37% - Technical grade', 'Laboratory - Supply Chem storage - Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-052', 'Hydrogen Peroxide ', 'Peroxide', 'Peroksida', 'Liquid', 'H2O2', 'Medium', 'Analytical grade 35% - Technical grade 50%', 'Laboratory - Mill Plant - Enviro section - Supply Chem storage - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-053', 'Hydroxylamine sulphate', 'N/A', 'N/A', 'Solid', '(HONH3)2SO4', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic - Corrosive - Irritant', '2.a', 'Dangerous', 'Available'),
('1600-054', 'Iodine', 'N/A', 'Iodin', 'Solid', 'I2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-055', 'Iron Reagent Test Kit - Ferrous Iron Powder ', 'N/A', 'N/A', 'Solid', 'NaHCO3 & C14H20N2O8S2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-056', 'Iron Reagent Test Kit - FerroVer', 'N/A', 'N/A', 'Solid', 'Na2S2O3 , Na2S2O5 & Na2S2O4 , ?Na3C', 'Small', '', 'Laboratory', 'Carcinogenic - Corrosive -  Irritant', '3.a', 'Mildly Dangerous', 'Available'),
('1600-057', 'Lead (II) Carbonate', 'Timbal Carbonate', 'N/A', 'Solid', 'PbCO3', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Carcinogenic -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-058', 'Lime', 'Calcium Oxide /Quick Lime', 'Kapur tohor', 'Solid', 'CaO', 'Bulk', '', 'Mill Plant - Enviro section', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-059', 'Liquimud ', 'N/A', 'N/A', 'Liquid', '?(C3H5NO)n ', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-060', 'LPG (Liquefied Petroleum Gas)', 'N/A', 'N/A', 'Gas', 'C3H8 , C4H10 , C3H6 ', 'Other', '', 'Workshop Mobile  - Camp', 'Flammable -  Carcinogenic', '2.b', 'Dangerous', 'Available'),
('1600-061', 'Magnesium Chloride Hexahydrate', 'Magnesium Chloride ', 'Magnesium klorida', 'Solid', 'MgCl2.6H2O', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-062', 'Manganesse Reagent Test Kit - Alkaline Cyanide Rea', 'N/A', 'N/A', 'Liquid', 'H2O & NaCN & NaOH', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity -  Corrosive', '1', 'Very Dangerous', 'Available'),
('1600-063', 'Manganesse Reagent Test Kit - Asorbic Acid', 'N/A', 'Asam asorbat', 'Solid', 'C6H8O7 ', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-064', 'Manganesse Reagent Test Kit - PAN Indicator 0.1%', 'N/A', 'N/A', 'Liquid', 'HCON(CH3)2 , C2H3O2NH4 , (C2H4O)n C', 'Small', '', 'Laboratory', 'Carcinogenic -  Corrosive', '3.a', 'Mildly Dangerous', 'Available'),
('1600-065', 'Malathion', 'N/A', 'Fogging agent', 'Liquid', 'C10H19O6PS2', 'Small', 'Analytical Grade 57%', 'Camp', 'Acute aquatic toxicity -  Harmfull', '2.a', 'Dangerous', 'Available'),
('1600-066', 'Methyl Orange', 'N/A', 'Indikator Metil Orange', 'Solid', 'C14H14N3NaO3S', 'Small', '', 'Mill Plant', 'Acute toxicity', '1', 'Very Dangerous', 'Available'),
('1600-067', 'Methyl Red', '2-(4-Dimethylaminophenylazo)benzoic acid', 'Indikator Metil Merah', 'Solid', 'C15H15N3O2', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', 'Available'),
('1600-068', 'Methyl trioctyl ammonium chloride', 'Aliquat', 'Aliquat', 'Liquid', 'C25H54ClN', 'Small', '', 'Laboratory - Supply Chem storage', 'Acute toxicity - Acute aquatic toxicity -  Corrosive', '1', 'Very Dangerous', 'Available'),
('1600-069', 'Nickel Reagent test kit - Nickel 1 Reagent', 'N/A', 'N/A', 'Solid', 'C?H?Na?O? * 2H?O & Na2S2O3', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-070', 'Nickel Reagent test kit - Nickel 2 Reagent', 'N/A', 'N/A', 'Solid', 'Na2HPO4 , KH2PO4  , Cycloheptanedio', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-071', 'Nitric Acid', 'N/A', 'Asam Nitrat', 'Liquid', 'HNO3', 'Small', 'Analytical grade 69-70% - Technical grade 68%', 'Laboratory - Supply Chem storage', 'Oxidizing -  Corrosive', '2.b', 'Dangerous', 'Available'),
('1600-072', 'Nitrogen', 'N/A', 'Nitrogen', 'Gas', 'N2', 'Other', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-073', 'Nitrous Oxide', 'N/A', 'Nitrous', 'Gas', 'N2O', 'Other', '', 'Laboratory', 'Oxidizing - Compressed gas -  Irritant', '2.b', 'Dangerous', 'Available'),
('1600-074', 'Oxygen', 'N/A', 'Oksigen', 'Gas', 'O2', 'Other', '', 'Mill Plant - Drilling - Workshop Mobile', 'Flammable -  Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-075', 'Perchloric Acid', 'N/A', 'Asam Perklorat', 'Liquid', 'HClO4', 'Small', 'Analytical grade 72%', 'Laboratory - Supply Chem storage - Mill Plant', 'Oxidizing -  Corrosive', '2.b', 'Dangerous', 'Available'),
('1600-076', 'Phenolphthalein', 'N/A', 'Indikator PP', 'Solid', 'C20H14O4', 'Small', '', 'Laboratory - Mill Plant', 'Carcinogenic', '3.a', 'Mildly Dangerous', 'Available'),
('1600-077', 'Phosphoric acid', 'N/A', 'Asam fosfat', 'Liquid', 'H3PO4', 'Small', 'Technical grade 85%', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-078', 'Plug A', 'N/A', 'N/A', 'Liquid', 'C2H2Cl2 & C4H5F5', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', 'N/A'),
('1600-079', 'Plug B', 'N/A', 'N/A', 'Liquid', 'C15H10N2O2 & POLYMETHYL POLYPHENYL ', 'Small', '', 'Drilling', 'Harmfull', '3.b', 'Mildly Dangerous', 'N/A'),
('1600-080', 'Poly aluminium chloride', 'Aluminium Chlorohydrate', 'Aluminium klorida', 'Liquid', 'Aln(OH)mCl3n-m', 'Small', '', 'Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-081', 'Potasium Silver Cyanide', 'N/A', 'N/A', 'Solid', 'KAg(CN)2', 'Small', '', 'Laboratory', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-082', 'Potassium chlorate', 'Kalium chlorate', 'Kalium klorat', 'Solid', 'KClO3', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Flammable -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-083', 'Potassium Chloride', 'Kalium Chloride', 'Kalium klorida', 'Solid', 'KCl', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-084', 'Potassium cyanide', 'Kalium cyanide', 'Potas', 'Solid', 'KCN', 'Small', 'Analytical grade', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity', '1', 'Very Dangerous', 'Available'),
('1600-085', 'Potassium dichromate', 'Kalium dichromate', 'kalium kromat', 'Solid', 'K2Cr2O7', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Oxidizing - Carcinogenic - Corrosive', '1', 'Very Dangerous', 'Available'),
('1600-086', 'Potassium dihydrogen phosphate', 'Kalium dihydrogen phosphate', 'Kalium fosfat', 'Solid', 'KH2PO4', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-087', 'Potassium hexacyanoferrate (II) trihydrate', 'Kalium hexacyanoferrate (II) trihydrate', 'Kalium heksa sianida', 'Solid', 'K4[Fe(CN)6].3H2O', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', 'Available'),
('1600-088', 'Potassium hydrogen Phthalate', 'Kalium hydrogen Phthalate', 'Kalium Phthalate', 'Solid', 'C8H5KO4', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-089', 'Potassium Iodide', 'Kalium Iodide', 'Kalium Iodida', 'Solid', 'KI', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-090', 'Potassium permanganate ', 'Kalium permanganate ', 'Kalium permanganat', 'Solid', 'KMnO4', 'Small', 'Technical grade', 'Laboratory', 'Acute aquatic toxicity - Oxidizing - Corrosive -  Harmfull', '2.a', 'Dangerous', 'Available'),
('1600-091', 'Pupuk NPK', 'N/A', 'NPK', 'Solid', 'H6NO4P , (NH4)2HPO4 , KCl , CH4N2O ', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-092', 'Pupuk Urea', 'N/A', 'Urea', 'Solid', '(NH2)2CO', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-093', 'Pyridine', 'N/A', 'Piridin', 'Liquid', 'C5H5N', 'Small', 'Analytcal Grade 99.5%', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', 'Available'),
('1600-094', 'R134A', '1,1,1,2 Tetrafluoroethane, HFC-134a, Norflurane', 'N/A', 'Gas', 'C2H2F4', 'Small', '', 'Workshop Mobile', 'Compressed gas', '2.b', 'Dangerous', 'Available'),
('1600-095', 'Resin Ambersep', 'N/A', 'Resin', 'Solid', 'C19H29COOH', 'Bulk', '', 'Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-096', 'Rhodanine', '4-dimethylamino-Benzylidine', 'Rodanin', 'Solid', 'C12H12N2OS2', 'Small', '', 'Laboratory - Mill Plant', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-097', 'Roundup', 'N/A', 'N/A', 'Liquid', 'C6H17O5N2P', 'Small', '', 'Enviro section', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-098', 'Silica Flour', 'N/A', 'Silika', 'Solid', 'SiO2', 'Small', '', 'Mill Plant - Supply W2', 'Harmfull', '3.b', 'Mildly Dangerous', 'Available'),
('1600-099', 'Silver Nitrate', 'N/A', 'Perak nitrat', 'Solid', 'AgNO3', 'Small', '', 'Laboratory - Mill Plant', 'Acute aquatic toxicity - Oxidizing -  Corrosive', '2.a', 'Dangerous', 'Available'),
('1600-100', 'Soda Ash ', 'Natrium carbonate/Sodium carbonate', 'Soda As', 'Solid', 'Na2CO3', 'Small', 'Technical Grade', 'Mill Plant - Supply W2', 'Irritant', '4', 'Less Dangerous', 'Available'),
('1600-101', 'Sodium Acetate Trihydrate', 'Natrium Acetate', 'Natrium asetat', 'Solid', 'CH3COONa.3H2O', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-102', 'Sodium Borohydride', 'Natrium borohydride', 'Natrium borohidrida', 'Solid', 'NaBH4', 'Small', '', 'Laboratory', 'Acute toxicity - Flammable -  Corrosive', '1', 'Very Dangerous', 'Available'),
('1600-103', 'Sodium Chloride', 'Natrium Chloride', 'Garam dapur', 'Solid', 'NaCl', 'Small', 'Technical grade', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-104', 'Sodium cyanide', 'Natrium cyanide', 'Sianida', 'Solid', 'NaCN', 'Small', 'Technical grade, 98%', 'Mill Plant - Supply W2', 'Acute toxicity - Acute aquatic toxicity', '1', 'Very Dangerous', 'Available'),
('1600-105', 'Sodium dihydrogen phosphate dihydrate', 'Natrium dihydrogen phosphate dihydrate', 'Natrium phosfat', 'Solid', 'NaH2PO4.H2O', 'Small', '', 'Laboratory - Supply Chem storage', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-106', 'Sodium Hydroxide', 'Natrium Hydroxide', 'Natrium Hydroksida', 'Solid', 'NaOH', 'Small', 'Analytical grade 99% - Sorensen 50%', 'Laboratory - Mill Plant - Enviro section - Supply Chem storage - Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-107', 'Sodium hypochlorite', 'Natrium hypochlorite', 'Bleaching', 'Liquid', 'NaOCl', 'Small', 'Technical grade', 'Camp', 'Acute aquatic toxicity - Corrosive -  Irritant', '2.a', 'Dangerous', 'Available'),
('1600-108', 'Sodium Iodide', 'Natrium Iodide', 'Natrium Iodida', 'Solid', 'NaI', 'Small', '', 'Laboratory', 'Acute aquatic toxicity', '2.a', 'Dangerous', 'Available'),
('1600-109', 'Sodium Metabisulfit', 'Natrium Metabisulfit', 'Garam sulfat', 'Solid', 'Na2S2O5', 'Small', 'Technical grade 97%', 'Mill Plant - Supply W2', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-110', 'Standard solution - Aluminium', 'N/A', 'Larutan Standar Aluminium', 'Solution', 'Al(NO3)3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-111', 'Standard solution - Arsenic ', 'N/A', 'larutan Standar arsen', 'Solution', 'H3AsO4 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', 'Available'),
('1600-112', 'Standard solution - Barium ', 'N/A', 'Larutan Standar barium', 'Solution', 'Ba(NO3)2  in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-113', 'Standard solution - Cadmium ', 'N/A', 'Larutan Standar kadmium', 'Solution', 'Cd(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-114', 'Standard solution - Chromium', 'N/A', 'Larutan Standar krom', 'Solution', 'Cr(NO3)3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-115', 'Standard solution - Cobalt ', 'N/A', 'larutan Standar kobalt', 'Solution', 'Co(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', 'Available'),
('1600-116', 'Standard solution - Copper ', 'N/A', 'Larutan Standar tembaga', 'Solution', 'Cu(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-117', 'Standard solution - Gold ', 'N/A', 'Larutan Standar emas', 'Solution', 'AuCl4 in HCl 2 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-118', 'Standard solution - Iron ', 'N/A', 'Larutan Standar basi', 'Solution', 'Fe(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-119', 'Standard solution - Lead ', 'N/A', 'Larutan Standar timbal', 'Solution', 'Pb(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-120', 'Standard solution - Magnesium ', 'N/A', 'Larutan Standar magnesium', 'Solution', 'Mg(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-121', 'Standard solution - Manganesse ', 'N/A', 'Larutan Standar magan', 'Solution', 'Mn(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-122', 'Standard solution - Mercury ', 'N/A', 'Larutan Standar merkuri', 'Solution', 'Hg(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-123', 'Standard solution - Nickel ', 'N/A', 'Larutan Standar nikel', 'Solution', 'Ni(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Carcinogenic - Corrosive', '3.a', 'Mildly Dangerous', 'Available'),
('1600-124', 'Standard solution - Selenium ', 'N/A', 'Larutan Standar selenium', 'Solution', 'SeO2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-125', 'Standard solution - Silver ', 'N/A', 'Larutan Standar perak', 'Solution', 'AgNO3 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Acute aquatic toxicity - Corrosive', '2.a', 'Dangerous', 'Available'),
('1600-126', 'Standard solution - Stannum', 'N/A', 'Larutan Standar stanum', 'Solution', 'SnCl4 in 2 mol/L HCl', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-127', 'Standard solution - Zinc ', 'N/A', 'Larutan Standar seng', 'Solution', 'Zn(NO3)2 in HNO3 0.5 mol/L', 'Small', '1000 ppm', 'Laboratory', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-128', 'Sulphuric Acid', 'N/A', 'asam sulfat', 'Liquid', 'H2SO4', 'Small', 'Analytical grade 98% - Technical grade', 'Laboratory - Mill Plant - Supply Chem storage - Supply W2', 'Corrosive', '3.b', 'Mildly Dangerous', 'Available'),
('1600-129', 'Supertrol ', 'N/A', 'N/A', 'Solid', '', 'Small', '', 'Drilling', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-130', 'Synoff', 'Cypermethrin', 'Fogging agent', 'Liquid', 'C22H19Cl2NO3', 'Small', '', 'Camp', 'Acute aquatic toxicity - Irritant', '2.a', 'Dangerous', 'Available'),
('1600-131', 'Tin (II) chloride dihydrate', 'N/A', 'Stanum klorida', 'Solid', 'SnCl2.2H2O', 'Small', '', 'Laboratory', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-132', 'TSP (Triple Super Phosphat)', 'Granulated Triple Superphosphate, GTSP', 'N/A', 'Solid', 'Ca(H2PO4)', 'Small', '', 'Enviro section', 'Corrosive -  Irritant', '3.b', 'Mildly Dangerous', 'Available'),
('1600-133', 'Vaseline', 'N/A', 'N/A', 'Solid', 'C3H8O2', 'Small', '', 'Laboratory', '', 'Non Hazardous', 'Non Hazardous', 'Available'),
('1600-134', 'Zinc (II) acetate dihydrate', 'N/A', 'N/A', 'Solid', '(CH3COO)2Zn*2H2ONa', 'Small', '', 'Laboratory', 'Acute aquatic toxicity - Irritant', '2.a', 'Dangerous', 'Available'),
('1600-135', 'Zinc test kit - Cyclohexanone ', 'N/A', 'N/A', 'Liquid', 'C6H10O', 'Small', '', 'Laboratory', 'Flammable - Irritant', '2.b', 'Dangerous', 'Available'),
('1600-136', 'Zinc test kit - ZincoVer 5 Reagent', 'N/A', 'N/A', 'Solid', 'K3BO3 &  ?C6H7NaO6 & B2O3 & KCN', 'Small', '', 'Laboratory', 'Acute toxicity - Acute aquatic toxicity - Carcinogenic', '1', 'Very Dangerous', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `hazardous_chemical`
--

CREATE TABLE IF NOT EXISTS `hazardous_chemical` (
  `No` varchar(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Storing_Tightly_Closed` varchar(25) NOT NULL,
  `Storing_Locked_Up` varchar(25) NOT NULL,
  `Storing_Authorized_Personnel` varchar(25) NOT NULL,
  `Storing_Well_Ventilated` varchar(25) NOT NULL,
  `Storing_Dry_Cool` varchar(25) NOT NULL,
  `Storing_Protect_Light` varchar(25) NOT NULL,
  `Storing_Away_Ignition` varchar(25) NOT NULL,
  `Storing_Other` varchar(25) NOT NULL,
  `Incompabilities_Reg_Chemlist` varchar(250) NOT NULL,
  `Incompabilities_Other_Chemical` varchar(100) NOT NULL,
  `usrid` varchar(20) NOT NULL,
  `recdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hazardous_chemical`
--

INSERT INTO `hazardous_chemical` (`No`, `Name`, `Storing_Tightly_Closed`, `Storing_Locked_Up`, `Storing_Authorized_Personnel`, `Storing_Well_Ventilated`, `Storing_Dry_Cool`, `Storing_Protect_Light`, `Storing_Away_Ignition`, `Storing_Other`, `Incompabilities_Reg_Chemlist`, `Incompabilities_Other_Chemical`, `usrid`, `recdate`) VALUES
('1600-001', 'Acetic Acid Glacial', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-017 1600-042 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106 1600-128', ' All metals', '', '2016-12-04 22:08:05'),
('1600-002', 'Acetone', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-022 1600-050  1600-052 1600-053 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', 'Rubber, all plastics', '', '2016-12-04 22:08:05'),
('1600-003', 'Acetylene', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', 'Metals (Cu, Ag, Hg)', '', '2016-12-04 22:08:05'),
('1600-004', 'Activated carbon', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-082 1600-085 1600-090 1600-128', '-', 'mirlab', '2016-12-06 00:25:38'),
('1600-005', 'Aluminium sulphate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', 'Galvanise', '', '2016-12-04 22:08:05'),
('1600-006', 'Amido Sulfuric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', 'All metals', '', '2016-12-04 22:08:05'),
('1600-007', 'Ammonium Iron (II) Sulphate Hexahydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-008', 'Argon', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-009', 'Barbituric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-058 1600-106', '', '', '2016-12-04 22:08:05'),
('1600-010', 'Barium chloride dihydrate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-011', 'Barium Reagent Test Kit - BariVer 4', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-017 1600-050 1600-051 1600-052 1600-058 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-106 1600-128', 'Metals (Al)', '', '2016-12-04 22:08:05'),
('1600-012', 'Battery Fuild Accid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', ' Water, finely divided metals', '', '2016-12-04 22:08:05'),
('1600-013', 'Borax', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-014', 'Buffer Solution pH 4', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-015', 'Buffer Solution pH 7', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-016', 'Buffer Solution pH 10', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-017', 'Buffer Solution pH 12', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-018', 'Cadmium chloride', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', 'Metals ( Al, Zn, Cr, Fe, Ni,Pb, Cu, Ag)', '', '2016-12-04 22:08:05'),
('1600-019', 'Cadmium Reagent test Kit - Buffer powder Pillow Ci', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-020', 'Carbon Dioxide', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-021', 'Chloramine-T Trihydrate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-022', 'Chloroform', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-002 1600-017 1600-042 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', ' Rubber, all plastics', '', '2016-12-04 22:08:05'),
('1600-023', 'Chromium Hexavalent Reagent test kit - ChromaVer 3', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', '', '', '2016-12-04 22:08:05'),
('1600-024', 'Chromium Reagent test kit - Dithiver Metals', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-025', 'Chromium Total Reagent test kit - Acid reagent Pow', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-058 1600-106', '', '', '2016-12-04 22:08:05'),
('1600-026', 'Chromium Total Reagent test kit - Chromium 1 Reage', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-027', 'Chromium Total Reagent test kit - Chromium 2 Reage', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-028', 'Clarifix', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-0903', '', '', '2016-12-04 22:08:05'),
('1600-029', 'Cobalt Reagent Test Kit - EDTA Powder', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-030', 'Cobalt Reagent Test Kit - PAN Indicator 0.3% ', 'N/R', 'Yes', 'Yes', 'N/R', 'N/R', 'Yes', 'N/R', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-031', 'Cobalt Reagent Test Kit - Phthalate-Phosphate', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-032', 'Cobalt Reagent Test Kit - Rochelle Salt Solution', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '', '', '', '2016-12-04 22:08:05'),
('1600-033', 'Copper (II) Sulfate anhydrous', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-034', 'Copper Reagent Test Kit - Copper Masking', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-035', 'Copper Reagent Test Kit - Porphyrine 1 Powder', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'None', '', '', '2016-12-04 22:08:05'),
('1600-036', 'Copper Reagent Test Kit - Porphyrine 2 Powder', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'H2O', '', '2016-12-04 22:08:05'),
('1600-037', 'Core Recovery Polimer ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-071', '', '', '2016-12-04 22:08:05'),
('1600-038', 'Cyanide test kit', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-039', 'Diatomaceous Earth', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-040', 'Diisobutyl Ketone', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', 'PVC, vinyl acetate, Fat, oils', '', '2016-12-04 22:08:05'),
('1600-041', 'Drill Foam ', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-071 1600-107', '', '', '2016-12-04 22:08:05'),
('1600-042', 'Ethanol', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-052 1600-054 1600-071 1600-075 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-043', 'GEOSTAT CRM GOLD (Au AR 0.90-1.00 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-044', 'GEOSTAT CRM GOLD (Au AR 2.45-2.50 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-045', 'GEOSTAT CRM GOLD (Au AR 24.00-25.00 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-046', 'GEOSTAT CRM GOLD (Au AR 5.50-6.50 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-047', 'GEOSTAT CRM SILVER (Ag 10-15 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-048', 'GEOSTAT CRM SILVER (Ag 150-160 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-049', 'GEOSTAT CRM SILVER (Ag 48-50 PPM)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-050', 'Hydrated lime', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-077 1600-128', 'Metal', '', '2016-12-04 22:08:05'),
('1600-051', 'Hydrochloric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-017 1600-050 1600-058 1600-090 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-052', 'Hydrogen Peroxide ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-001 1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-053', 'Hydroxylamine sulphate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', 'Powder Metals', '', '2016-12-04 22:08:05'),
('1600-054', 'Iodine', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-003 1600-042', 'Powder Metals, Non metals', '', '2016-12-04 22:08:05'),
('1600-055', 'Iron Reagent Test Kit - Ferrous Iron Powder ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-056', 'Iron Reagent Test Kit - FerroVer', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'Organic materials, Al', '', '2016-12-04 22:08:05'),
('1600-057', 'Lead (II) Carbonate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-071', '', '', '2016-12-04 22:08:05'),
('1600-058', 'Lime', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-040 1600-042 1600-051 1600-071 1600-075 1600-128', 'Light metals', '', '2016-12-04 22:08:05'),
('1600-059', 'Liquimud ', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-071 1600-107', '', '', '2016-12-04 22:08:05'),
('1600-060', 'LPG (Liquefied Petroleum Gas)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-061', 'Magnesium Chloride Hexahydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-062', 'Manganesse Reagent Test Kit - Alkaline Cyanide Rea', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-063', 'Manganesse Reagent Test Kit - Asorbic Acid', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', 'Metals (Cu, Fe)', '', '2016-12-04 22:08:05'),
('1600-064', 'Manganesse Reagent Test Kit - PAN Indicator 0.1%', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-065', 'Malathion', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-052 1600-058 1600-071 1600-075 1600-082 1600-085 1600-090 1600-106', ' Iron, Stell', '', '2016-12-04 22:08:05'),
('1600-066', 'Methyl Orange', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-067', 'Methyl Red', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-068', 'Methyl trioctyl ammonium chloride', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-017 1600-050 1600-051 1600-052 1600-058 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-106 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-069', 'Nickel Reagent test kit - Nickel 1 Reagent', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-070', 'Nickel Reagent test kit - Nickel 2 Reagent', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-071', 'Nitric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-001 1600-002 1600-006 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-052 1600-058 1600-075 1600-082 1600-085 1600-090 1600-106 1600-107 1600-128', 'Cellulose, metals', '', '2016-12-04 22:08:05'),
('1600-072', 'Nitrogen', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-073', 'Nitrous Oxide', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-040 1600-042', 'Metal (Al, Hg, Ni), grease', '', '2016-12-04 22:08:05'),
('1600-074', 'Oxygen', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-040 1600-042', ' oli, grease', '', '2016-12-04 22:08:05'),
('1600-075', 'Perchloric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-001 1600-002 1600-012 1600-040 1600-042 1600-051 1600-052 1600-071 1600-077 1600-082 1600-085 1600-090 1600-093 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-076', 'Phenolphthalein', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-077', 'Phosphoric acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-058 1600-106', 'Metals', '', '2016-12-04 22:08:05'),
('1600-078', 'Plug A', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-050 1600-058 1600-071 1600-106 1600-107', '', '', '2016-12-04 22:08:05'),
('1600-079', 'Plug B', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-017 1600-042 1600-050 1600-058 1600-071 1600-106 1600-107', '', '', '2016-12-04 22:08:05'),
('1600-080', 'Poly aluminium chloride', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-017 1600-050 1600-058 1600-106', ' Al, Stainless Ni, and Copper', '', '2016-12-04 22:08:05'),
('1600-081', 'Potasium Silver Cyanide', 'N/R', 'Yes', 'Yes', 'N/R', 'N/R', 'Yes', 'N/R', 'Yes', 'None', '', '', '2016-12-04 22:08:05'),
('1600-082', 'Potassium chlorate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-001 1600-002 1600-012 1600-022 1600-040 1600-042 1600-052 1600-071 1600-075 1600-085 1600-090 1600-095 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-083', 'Potassium Chloride', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-084', 'Potassium cyanide', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-085', 'Potassium dichromate', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-001 1600-002 1600-012 1600-052 1600-071 1600-075 1600-082 1600-090 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-086', 'Potassium dihydrogen phosphate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-050 1600-051 1600-052 1600-058 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-106 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-087', 'Potassium hexacyanoferrate (II) trihydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-040 1600-042 1600-051 1600-071 1600-077 1600-095 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-088', 'Potassium hydrogen Phthalate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-089', 'Potassium Iodide', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-090', 'Potassium permanganate ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-091', 'Pupuk NPK', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', 'Metals', '', '2016-12-04 22:08:05'),
('1600-092', 'Pupuk Urea', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090 1600-107', '', '', '2016-12-04 22:08:05'),
('1600-093', 'Pyridine', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-094', 'R134A', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', 'Metals', '', '2016-12-04 22:08:05'),
('1600-095', 'Resin Ambersep', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-071', '', '', '2016-12-04 22:08:05'),
('1600-096', 'Rhodanine', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-097', 'Roundup', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', 'Galvanised steel', '', '2016-12-04 22:08:05'),
('1600-098', 'Silica Flour', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'None', 'H2O', '', '2016-12-04 22:08:05'),
('1600-099', 'Silver Nitrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-100', 'Soda Ash ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-077 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-101', 'Sodium Acetate Trihydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-071', '', '', '2016-12-04 22:08:05'),
('1600-102', 'Sodium Borohydride', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-042 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-103', 'Sodium Chloride', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-104', 'Sodium cyanide', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-020 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-105', 'Sodium dihydrogen phosphate dihydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-106', 'Sodium Hydroxide', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-107', 'Sodium hypochlorite', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-012 1600-051 1600-077 1600-128 1600-052 1600-071 1600-075 1600-082 1600-085 1600-090 1600-042 1600-091', 'Metals', '', '2016-12-04 22:08:05'),
('1600-108', 'Sodium Iodide', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-109', 'Sodium Metabisulfit', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-110', 'Standard solution - Aluminium', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-111', 'Standard solution - Arsenic ', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-002 1600-022 1600-040 1600-042 1600-052', 'Metals', '', '2016-12-04 22:08:05'),
('1600-112', 'Standard solution - Barium ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-113', 'Standard solution - Cadmium ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-051 1600-050 1600-052 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-114', 'Standard solution - Chromium', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-115', 'Standard solution - Cobalt ', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-116', 'Standard solution - Copper ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-117', 'Standard solution - Gold ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', 'Metals', '', '2016-12-04 22:08:05'),
('1600-118', 'Standard solution - Iron ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-119', 'Standard solution - Lead ', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'None', '', '', '2016-12-04 22:08:05'),
('1600-120', 'Standard solution - Magnesium ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-121', 'Standard solution - Manganesse ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-122', 'Standard solution - Mercury ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-123', 'Standard solution - Nickel ', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-017 1600-050 1600-058-1600-106', 'Metals', '', '2016-12-04 22:08:05'),
('1600-124', 'Standard solution - Selenium ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-125', 'Standard solution - Silver ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-077 1600-071 1600-075 1600-128 1600-106', 'Metals', '', '2016-12-04 22:08:05'),
('1600-126', 'Standard solution - Stannum', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', 'Metals', '', '2016-12-04 22:08:05'),
('1600-127', 'Standard solution - Zinc ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-012 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106 1600-128', 'Metals', '', '2016-12-04 22:08:05'),
('1600-128', 'Sulphuric Acid', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-002 1600-017 1600-022 1600-040 1600-042 1600-050 1600-051 1600-058 1600-071 1600-075 1600-077 1600-106', 'Metals', '', '2016-12-04 22:08:05'),
('1600-129', 'Supertrol ', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-130', 'Synoff', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-131', 'Tin (II) chloride dihydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-012 1600-051 1600-052 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-128', '', '', '2016-12-04 22:08:05'),
('1600-132', 'TSP (Triple Super Phosphat)', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', 'N/R', '1600-017 1600-050 1600-058 1600-106', '', '', '2016-12-04 22:08:05'),
('1600-133', 'Vaseline', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', '1600-052 1600-071 1600-075 1600-082 1600-085 1600-090', '', '', '2016-12-04 22:08:05'),
('1600-134', 'Zinc (II) acetate dihydrate', 'Yes', 'N/R', 'N/R', 'Yes', 'Yes', 'N/R', 'Yes', 'N/R', 'None', '', '', '2016-12-04 22:08:05'),
('1600-135', 'Zinc test kit - Cyclohexanone ', 'N/R', 'Yes', 'Yes', 'N/R', 'N/R', 'Yes', 'N/R', 'Yes', '1600-012 1600-017 1600-050 1600-051 1600-052 1600-058 1600-071 1600-075 1600-077 1600-082 1600-085 1600-090 1600-106 1600-028', '', '', '2016-12-04 22:08:05'),
('1600-136', 'Zinc test kit - ZincoVer 5 Reagent', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '1600-012 1600-051 1600-071 1600-075 1600-077 1600-128', '', '', '2016-12-04 22:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `hazard_category`
--

CREATE TABLE IF NOT EXISTS `hazard_category` (
  `No` mediumint(2) NOT NULL,
  `Hazard_cat` varchar(15) NOT NULL,
  `Hazard_remarks` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hazard_category`
--

INSERT INTO `hazard_category` (`No`, `Hazard_cat`, `Hazard_remarks`) VALUES
(1, '1', 'Very Dangerous'),
(2, '2.a', 'Dangerous'),
(3, '2.b', 'Dangerous'),
(4, '3.a', 'Midly Dangerous'),
(5, '3.b', 'Midly Dangerous'),
(6, '4', 'Less Dangerous'),
(7, 'Non Hazardous', 'Non Hazardous');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chemicals_users`
--
ALTER TABLE `chemicals_users`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chemlist`
--
ALTER TABLE `chemlist`
 ADD PRIMARY KEY (`No`);

--
-- Indexes for table `chemlist_copy`
--
ALTER TABLE `chemlist_copy`
 ADD PRIMARY KEY (`No`);

--
-- Indexes for table `chemlist_copy1`
--
ALTER TABLE `chemlist_copy1`
 ADD PRIMARY KEY (`No`);

--
-- Indexes for table `hazardous_chemical`
--
ALTER TABLE `hazardous_chemical`
 ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chemicals_users`
--
ALTER TABLE `chemicals_users`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
