-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 26, 2023 at 12:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronica`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Chaquetas'),
(2, 'Polares'),
(3, 'Abrigos'),
(4, 'Pantalones'),
(5, 'Football Vintage'),
(6, 'Sudaderas');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `Dni` varchar(8) DEFAULT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Direccion` varchar(244) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `Dni`, `Nombres`, `Direccion`, `Estado`) VALUES
(17, '2', 'Juan Guerrero Solis', 'Los Alamos', '1'),
(18, '1', 'Maria Rosas Villanueva', 'Los Laureles 234', '1'),
(19, '3', 'Andres de Santa Cruz', 'Av. La Frontera 347', '1'),
(20, '4', 'Andres Mendoza', 'Chosica, Lurigancho', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `apellido`, `correo`, `motivo`, `texto`) VALUES
(1, 'asdfads', 'casdf', 'advf', 'dfgsdf', 'asdfadsf'),
(2, 'oscar', 'savedra', 'oscar123@hotmail.com', 'cualquierea', 'uno mas '),
(3, 'oscar', 'savedra', 'oscar123@hotmail.com', 'cualquierea', 'fsfds'),
(4, 'juan', 'savedra', 'oscar123@hotmail.com', 'cualquierea', 'fsfds'),
(8, 'JOSE', 'CAZAS', 'JOSE123@hotmail.com', 'RECLAMO', 'PRODUCTO DAÑADO '),
(14, 'Jorge', 'Vega', 'jorgevegalandini123@gmail.com', 'reclamo', 'aparato roto');

-- --------------------------------------------------------

--
-- Table structure for table `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `IdDetalleVentas` int(11) UNSIGNED NOT NULL,
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioVenta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `id` int(10) UNSIGNED NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `user` varchar(8) DEFAULT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`id`, `dni`, `nombres`, `telefono`, `estado`, `user`, `password`) VALUES
(1, '123', 'Pedro Hernandez', '988252459', '1', 'emp01', ''),
(2, '123', 'Roman Riquelme', '988252459', '1', 'Jo46', ''),
(3, '123', 'Palermo Suarez', '453536458', '1', 'Em22', '');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Imagen` varchar(300) NOT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`IdProducto`, `Nombres`, `Imagen`, `Precio`, `Stock`, `Estado`, `id_categoria`) VALUES
(1, 'DERBI SHELL JACKET', 'img/c1.png', 150, 99, '1', 1),
(2, 'POLO RALPH LAUREN HOODIE', 'img/s1.png', 84, 98, '1', 6),
(3, 'MICKEY JACKET', 'img/c2.png', 120, 100, '1', 1),
(4, 'TOTTENHAM HOTSPUR FC UMBRO OFFICIAL', 'img/f1.png', 300, 98, '1', 5),
(5, 'JACK WOLFSKIN FLEECE', 'img/p1.png', 100, 98, '1', 2),
(6, 'COCOA BUTTONED VEST', 'img/c5.png', 800, 98, '1', 3),
(7, 'CAMEL ZIPPER FLEECE', 'img/p3.png', 75, 98, '1', 2),
(9, 'ROX ZIPPER FLEECE', 'img/p4.png', 80, 98, '1', 2),
(10, 'ATHLETICS TACTEL TRACK JACKET', 'img/c3.png', 120, 98, '1', 1),
(11, 'SAGAR LIGHT JACKET', 'img/c4.png', 100, 98, '1', 1),
(12, 'FRED PERRY JACKET', 'img/c6.png', 5000, 98, '1', 3),
(13, 'JEAN VINTAGE NEW STYLE', 'img/pa.png', 70, 98, '1', 4),
(14, 'FOREST VEST FLEECE', 'img/p2.png', 60, 100, '1', 2),
(15, 'TOMMY HILFIGER PINK JACKET', 'img/c7.png', 150, 50, '1', 3),
(16, 'FRED PERRY CLASSIC LIGHT JACKET', 'img/c8.png', 180, 100, '1', 3),
(17, 'OLYMPIQUE MARSEILLE ADIDAS OFFICIAL FOOTBALL', 'img/f2.png', 150, 80, '1', 5),
(18, 'FC BARCELONA NIKE OFFICIAL FOOTBALL', 'img/f3.png', 170, 100, '1', 5),
(19, 'FEDERACION MEXICANA DE FUTBOL ADIDAS OFFICIAL FOOTBALL', 'img/f4.png', 120, 100, '1', 5),
(20, 'NIKE III HOODIE', 'img/s2.png', 90, 100, '1', 6),
(21, 'BLUE COW RETRO SWEATSHIRT', 'img/s3.png', 80, 100, '1', 6),
(22, 'SERGIO TACCHINI TENNIS RETRO SWEATSHIRT', 'img/s4.png', 120, 100, '1', 6),
(23, 'JEAN CARGO NEW DARK', 'img/pa2.png', 99, 100, '1', 4),
(24, 'JEAN RIPPED NEW', 'img/pa3.png', 120, 100, '1', 4),
(25, 'JEAN WASH CARGO', 'img/pa4.png', 115, 100, '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `dni` int(11) NOT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `ciudad` varchar(80) DEFAULT NULL,
  `pais` varchar(80) DEFAULT NULL,
  `telefono` varchar(80) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `trabajador` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `correo`, `password`, `dni`, `direccion`, `ciudad`, `pais`, `telefono`, `estado`, `trabajador`) VALUES
(1, 'asdfds', 'xasdfads', 'xd@exa.vm', 'asdfadsf', 123, NULL, NULL, NULL, '0', 0, 0),
(2, 'admin', 'admin', 'admin@example.com', '$2a$10$IGHjTuEuGyOkFgMNDi7rKuOFUMMdhg3ijSjiRxepu1bOZ12xMFNEa', 12345, NULL, NULL, NULL, '0', 0, 1),
(6, 'Luis', 'Miguel', 'mac745@hotmail.com', '$2a$10$BnxTwaC.8d/ZJggfbZggl.WcwpTSCB8qMkoGiOgDUwLRyFCw7NikC', 0, NULL, NULL, NULL, '0', 0, 0),
(8, 'Jose', 'Caza', 'jose123@hotmail.com', '$2a$10$10Zu9iJ/RafYqp7CL5CH9ugR1d11x8JUN0Lb4Jvo.M7ghvZUe0IOm', 0, NULL, NULL, NULL, '0', 0, 0),
(11, 'Jhon', 'Anampa', 'e14024@utp.edu.pe', '$2a$10$5Ldcy3bMwQL6oXadOlwQ.eIJ.kzxgjOykh49F6YXJLPmp5KU6Bcg.', 1, NULL, NULL, NULL, '0', 0, 1),
(12, 'Jorge', 'Vega', 'jorgevegalandini123@gmail.com', 'elmejorx', 71061273, 'Santa Rosa', 'Lima', 'Perú', '935600844', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaVentas` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indexes for table `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`IdDetalleVentas`,`IdVentas`,`IdProducto`),
  ADD KEY `Ventas_has_Producto_FKIndex1` (`IdVentas`),
  ADD KEY `Ventas_has_Producto_FKIndex2` (`IdProducto`);

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVentas`),
  ADD KEY `Ventas_FKIndex1` (`IdEmpleado`),
  ADD KEY `Ventas_FKIndex2` (`IdCliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `IdDetalleVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `IdProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `IdVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`IdVentas`) REFERENCES `ventas` (`IdVentas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`);

--
-- Constraints for table `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
