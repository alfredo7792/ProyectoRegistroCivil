use bdregistrocivil;
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2024 a las 19:59:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdregistrocivil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta`
--

CREATE TABLE `acta` (
  `idActa` int(11) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `observacion` varchar(30) DEFAULT NULL,
  `lugar_ocurrencia` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `nombreRegistradorCivil` varchar(50) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta`
--

INSERT INTO `acta` (`idActa`, `fecha_registro`, `observacion`, `lugar_ocurrencia`, `estado`, `nombreRegistradorCivil`, `localidad`) VALUES
(1, '2023-02-27', 'ninguna', 'c', 0, 'Renatos', 'agg'),
(2, '2023-03-06', 'bff', 'bff', 1, 'Renatos', 'bff'),
(3, '2023-02-27', 'egg', 'egg', 1, 'Renatos', 'egg'),
(4, '2023-03-09', 'Ninguna', 'Trujillo', 1, 'Renatos', 'Trujillo'),
(5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2023-03-10', 'Ninguna', 'Trujillo', 1, 'Renatos', 'Trujillo'),
(7, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2023-03-22', 'Ninguna', 'Lima', 1, 'Renatos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_defuncion`
--

CREATE TABLE `acta_defuncion` (
  `idActa` int(11) NOT NULL,
  `fecha_fallecido` date DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `dniFallecido` char(8) DEFAULT NULL,
  `nombreDeclarante` varchar(50) DEFAULT NULL,
  `firma_declarante` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta_defuncion`
--

INSERT INTO `acta_defuncion` (`idActa`, `fecha_fallecido`, `edad`, `dniFallecido`, `nombreDeclarante`, `firma_declarante`) VALUES
(1, '2023-01-30', 0, '11111111', 'Dolores Pecho Barba', '/storage/ArchivosDefunsion/AKhsGKx6FVRFTvuDTZHNg9RfHSYeiX6l4hjUCfzr.jpg'),
(2, '2023-02-15', 0, '22222222', 'Dolores Pecho Barba', '/storage/ArchivosDefunsion/a3Eot4zimGAKO5j3jznBEQ0YkISuPQYYjvehFojL.jpg'),
(3, '2023-02-08', 0, '44444444', 'Pedro Amor Jurado', '/storage/ArchivosDefunsion/MofRgqtaMWrv82xdm3cg0DcwdRyCdlyJoq77t7Kc.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_matrimonio`
--

CREATE TABLE `acta_matrimonio` (
  `idActa` int(11) NOT NULL,
  `fecha_matrimonio` date DEFAULT NULL,
  `DNIEsposo` char(8) DEFAULT NULL,
  `DNIEsposa` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta_matrimonio`
--

INSERT INTO `acta_matrimonio` (`idActa`, `fecha_matrimonio`, `DNIEsposo`, `DNIEsposa`) VALUES
(8, '2023-03-21', '40000000', '33333333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_nacimiento`
--

CREATE TABLE `acta_nacimiento` (
  `idActa` int(11) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `DNIPadre` char(8) DEFAULT NULL,
  `DNIMadre` char(8) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `domicilio` varchar(30) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta_nacimiento`
--

INSERT INTO `acta_nacimiento` (`idActa`, `fecha_nacimiento`, `DNIPadre`, `DNIMadre`, `nombres`, `domicilio`, `sexo`) VALUES
(4, '2023-03-06', '55555555', '33333333', 'Crsithian aldair Fuertes Pecho', 'Garcilazo de la Vega 123', 'M'),
(6, '2023-02-27', '40000000', '33333333', 'Percy Fuertes Pecho', 'Garcilazo de la Vega 123', 'M');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta_persona`
--

CREATE TABLE `acta_persona` (
  `idActaPersona` int(11) NOT NULL,
  `idActa` int(11) NOT NULL,
  `DNI` char(8) NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `funcion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `acta_persona`
--

INSERT INTO `acta_persona` (`idActaPersona`, `idActa`, `DNI`, `estado`, `funcion`) VALUES
(1, 1, '11111111', 0, NULL),
(2, 1, '33333333', 0, NULL),
(3, 2, '22222222', 1, NULL),
(4, 2, '33333333', 1, NULL),
(5, 3, '44444444', 1, NULL),
(6, 3, '66666666', 1, NULL),
(7, 4, '55555555', 1, NULL),
(8, 4, '33333333', 1, NULL),
(9, 4, '40000000', 1, NULL),
(10, 6, '40000000', 1, NULL),
(11, 6, '33333333', 1, NULL),
(12, 6, '60000000', 1, NULL),
(13, 8, '33333333', 1, 'Esposa'),
(14, 8, '40000000', 1, 'Esposo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `idAsistencia` int(11) NOT NULL,
  `horaRegistroEntrada` time DEFAULT NULL,
  `horaRegistroSalida` time DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`idAsistencia`, `horaRegistroEntrada`, `horaRegistroSalida`, `fechaRegistro`, `idContrato`, `estado`) VALUES
(2, '20:27:56', '20:28:07', '2023-12-25', 61, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`idCargo`, `estado`, `descripcion`) VALUES
(1, 1, 'Encargado contratoss'),
(2, 1, 'Encargado de mantenimiento'),
(3, 1, 'Administrador'),
(4, 1, 'Encargado contrato'),
(5, 1, 'Encargado de mantenimientos'),
(6, 0, 'Administrador'),
(7, 0, 'pepita'),
(8, 0, 'prueba'),
(9, 1, 'gdfgfdg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cese`
--

CREATE TABLE `cese` (
  `idCese` int(11) NOT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `observacion` varchar(80) DEFAULT NULL,
  `archivoCese` varchar(150) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cese`
--

INSERT INTO `cese` (`idCese`, `fechaRegistro`, `idContrato`, `observacion`, `archivoCese`, `estado`) VALUES
(1, '2023-12-01', 61, 'ninguna', 'D:\\Aplicaciones\\Xammp\\tmp\\phpE895.tmp', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `idContrato` int(11) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `diasVacaciones` int(11) NOT NULL,
  `idEntrevista` int(11) NOT NULL,
  `idTrabajador` int(11) NOT NULL,
  `archivoContrato` varchar(150) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `monto` float NOT NULL DEFAULT 200
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`idContrato`, `descripcion`, `fecha_inicio`, `fecha_fin`, `diasVacaciones`, `idEntrevista`, `idTrabajador`, `archivoContrato`, `estado`, `monto`) VALUES
(1, 'dddd', '2023-11-01', '2026-11-13', 10, 1, 1, '/storage/ArchivosContratos/w5gFGTItmlqgYGInHaVtHsX3iHcQjRiLjDI3BWyF.pdf', 1, 200),
(2, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 2, '/storage/ArchivosContratos/sGGd05V9Ba8HyasPHYhhqpcqPXW9koQQwiUWWfDA.pdf', 1, 200),
(3, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/hWRaUzKtyFk7zvZd2xaxCclFQX2ud79B7tFOgswL.pdf', 1, 200),
(4, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/DaPAT0rEOVXfbL9aWw6BprcqE8XxTtoemAWf3hKW.pdf', 1, 200),
(5, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/1inZy4TSItTC0pJlBUks8JyNhhgKoyfjJ6LBcOqb.pdf', 1, 200),
(6, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/TWAc07XIVjFMVfc16yb4Cb5SBuGFIJ4rdRRKRC2Q.pdf', 1, 200),
(7, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/dE6zM7bAC851kYQigB1pDpGL5Szmwn5X1eYbZQdQ.pdf', 1, 200),
(8, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/fUSTZb3iGQjBKdV8Yc9ML5xyvTNShNlu5TH8ayEM.pdf', 1, 200),
(9, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/Rz8nbJTuxoYEVpFoKyfAJxbWAcWaCHQvAJ3WPEqB.pdf', 1, 200),
(10, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/jISeJ61uV1wADzZuiLMhTHJxyrMA9hsSFcvfkgU3.pdf', 1, 200),
(11, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/keRLRKEtw8ytChXtC3MUmMTiJhp9Wf1y3sTvyK1G.pdf', 1, 200),
(12, 'HOLA', '2023-11-07', '2023-12-02', 19, 1, 1, '/storage/ArchivosContratos/0Zt7ydkUHY3pdzNaD1ZOMY4QrZm7Lwb8gpJpXbb2.pdf', 1, 200),
(61, '3112', '2023-11-28', '2024-01-28', 31, 4, 4, '/storage/ArchivosContratos/zVLpTJ2GX18JZqFVx56vgcVTAlWLcNxFhIX8L8tq.pdf', 1, 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_horario`
--

CREATE TABLE `contrato_horario` (
  `idContratoHorario` int(11) NOT NULL,
  `lugar` varchar(30) DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `idHorario` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contrato_horario`
--

INSERT INTO `contrato_horario` (`idContratoHorario`, `lugar`, `idContrato`, `idHorario`, `estado`) VALUES
(1, 'RENIEC', 1, 1, 1),
(2, 'RENIEC', 1, 2, 1),
(3, 'RENIEC', 5, 5, 1),
(4, 'RENIEC', 8, 6, 1),
(5, 'RENIEC', 9, 7, 1),
(6, 'RENIEC', 9, 8, 1),
(7, 'RENIEC', 10, 9, 1),
(8, 'RENIEC', 10, 10, 1),
(9, 'RENIEC', 11, 11, 1),
(42, NULL, 61, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE `entrevista` (
  `idEntrevista` int(11) NOT NULL,
  `idPostulacion` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observacion` varchar(80) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `estadoEntrevista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrevista`
--

INSERT INTO `entrevista` (`idEntrevista`, `idPostulacion`, `fecha`, `observacion`, `estado`, `estadoEntrevista`) VALUES
(1, 1, '2023-10-29', 'holas', 1, 0),
(2, 8, '2023-11-27', 'nada', 1, 1),
(3, 10, '2023-11-28', 'aprobado', 1, 1),
(4, 10, '2023-11-28', 'asfdsdf', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_registro`
--

CREATE TABLE `ficha_registro` (
  `idficha` int(11) NOT NULL,
  `fecha_registro` date DEFAULT NULL,
  `ruta_certificado` longtext DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `idtipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha_registro`
--

INSERT INTO `ficha_registro` (`idficha`, `fecha_registro`, `ruta_certificado`, `estado`, `idtipo`) VALUES
(1, '2023-02-27', '/storage/ArchivosCertificados/mfos1lcAF16We2vVL35IAMngPQ2jDBQzlfI0SG0u.jpg', 'Aprobado', 3),
(2, '2023-02-27', '/storage/ArchivosCertificados/H1TqSI6IgBlCoyfyp3mpoHFKRvCSLSehuF1iQIqE.jpg', 'Aprobado', 3),
(3, '2023-02-27', '/storage/ArchivosCertificados/qzlLs57hYZHwiJR6ZMrFGEHzYsVzKcJC7lZeHF3N.jpg', 'Aprobado', 3),
(4, '2023-02-28', '/storage/ArchivosCertificados/yYvxj5qLOyLCjgmNXWytL8ctCs2J23XNjcwmAOq6.jpg', 'Aprobado', 1),
(5, '2023-02-28', '/storage/ArchivosCertificados/wqqU1paIdn6JULJLrRUxG2bS9PuDPNFGxyYQwTlY.jpg', 'Pendiente', 3),
(6, '2023-03-09', '/storage/ArchivosCertificados/KD0eHelB5jwItRXXJvRVktycCh6mH8mGPZQQnIJy.jpg', 'Aprobado', 1),
(7, '2023-03-22', '/storage/ArchivosCertificados/pSiA9LfltnI4hlSfP3QDkt33PsR0uNneiDybc1T2.jpg', 'Pendiente', 1),
(8, '2023-03-22', '/storage/ArchivosCertificados/NMuL8vKjgOtwX4jP1PCZyobD7OnATMS7MVSXcat3.jpg', 'Aprobado', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horaextra`
--

CREATE TABLE `horaextra` (
  `idHoraExtra` int(11) NOT NULL,
  `idContrato` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `dia` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`idHorario`, `hora_inicio`, `hora_fin`, `dia`, `estado`) VALUES
(1, '00:11:00', '22:09:00', 1, 1),
(2, '22:11:00', '08:09:00', 2, 1),
(3, '13:12:00', '10:17:00', 1, 1),
(4, '13:12:00', '10:17:00', 5, 1),
(5, '13:12:00', '10:17:00', 5, 1),
(6, '13:12:00', '10:17:00', 6, 1),
(7, '13:12:00', '16:17:00', 5, 0),
(8, '13:12:00', '10:17:00', 6, 1),
(9, '13:12:00', '10:17:00', 5, 1),
(10, '13:12:00', '10:17:00', 6, 1),
(11, '13:12:00', '10:17:00', 5, 1),
(12, '13:12:00', '10:17:00', 6, 1),
(13, '13:12:00', '10:17:00', 5, 1),
(14, '13:12:00', '10:17:00', 6, 1),
(15, '18:58:00', '21:58:00', 1, 1),
(16, '23:06:00', '18:06:00', 2, 1),
(17, '23:06:00', '18:06:00', 2, 1),
(18, '23:06:00', '18:06:00', 2, 1),
(19, '21:52:00', '20:52:00', 2, 1),
(20, '22:52:00', '18:52:00', 2, 1),
(21, '22:52:00', '18:52:00', 2, 1),
(22, '22:52:00', '18:52:00', 2, 1),
(23, '22:52:00', '18:52:00', 2, 1),
(24, '03:09:00', '04:09:00', 2, 1),
(25, '02:36:00', '08:37:00', 3, 1),
(26, '03:49:00', '01:49:00', 1, 1),
(27, '05:51:00', '02:52:00', 2, 1),
(28, '05:51:00', '02:52:00', 2, 1),
(29, '11:30:00', '16:30:00', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_solicitud`
--

CREATE TABLE `lista_solicitud` (
  `idActaSolicitada` int(11) NOT NULL,
  `idActa` int(11) NOT NULL,
  `idSolicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lista_solicitud`
--

INSERT INTO `lista_solicitud` (`idActaSolicitada`, `idActa`, `idSolicitud`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `idOferta` int(11) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `requisitos` varchar(80) DEFAULT NULL,
  `manualPostulante` varchar(80) DEFAULT NULL,
  `resultados` varchar(80) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `convocatoria` tinyint(1) NOT NULL DEFAULT 1,
  `numerovacantes` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oferta`
--

INSERT INTO `oferta` (`idOferta`, `idCargo`, `descripcion`, `fecha_inicio`, `fecha_fin`, `monto`, `requisitos`, `manualPostulante`, `resultados`, `estado`, `convocatoria`, `numerovacantes`) VALUES
(1, 1, 'Conocimientos en de leyes del trabajador y  habilidades blandas', '2023-10-17', '2023-10-31', 700, '/storage/ArchivosRequisitos/L5CxIOf68XaN72hN3RVncA6rbPexfvzuBERaCdFQ.pdf', '/storage/ArchivosManualPostulante/BhUMF58VWCRmouQxFDIQOXdcsPuObwYHSrXpQLky.pdf', NULL, 1, 1, 3),
(2, 3, 'NINGUNA', '2023-11-29', '2023-12-03', 2, '/storage/ArchivosRequisitos/iewGs7vwV1NTv6xYhSJdXpuXcJquFKnwQZrjKuAr.pdf', '/storage/ArchivosManualPostulante/FRE4EExSwTHrHre3qn5SOXfWeBSfjBqDQanPfcA5.pdf', NULL, 1, 1, 3),
(3, 3, 'ghjghj', '2023-11-30', '2023-12-07', 500, '/storage/ArchivosRequisitos/dowdmQMeNCdmG4av8dTI3uN3NjVrs8dfqXhum42i.pdf', '/storage/ArchivosManualPostulante/MRbQtRqZhxbXOZMMrqwwICozZ46oeVoYPElH00N3.pdf', NULL, 1, 1, 3),
(4, 2, 'dafadfsdf', '2023-12-31', '2024-01-17', 500, '/storage/ArchivosRequisitos/wKlKPoIv1hVoYqXGL1wOJ1EBIgzCovtEkVkXPBX7.pdf', '/storage/ArchivosManualPostulante/GvqHFQAZ8p9v2o1y7f017DgzClMLX6tB9bItcq1M.pdf', NULL, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idSuedo` int(11) NOT NULL,
  `periodo` date NOT NULL,
  `fechaRegistro` date NOT NULL,
  `idContrato` int(11) NOT NULL,
  `ingresos` float NOT NULL,
  `descuentos` float NOT NULL,
  `aportes` float NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`idSuedo`, `periodo`, `fechaRegistro`, `idContrato`, `ingresos`, `descuentos`, `aportes`, `estado`) VALUES
(1, '2024-01-19', '2024-01-19', 1, 200, 200, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `idPermiso` int(11) NOT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `motivo` varchar(80) DEFAULT NULL,
  `tipo_permiso` int(11) NOT NULL,
  `estadoPermiso` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `archivoPermiso` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `DNI` char(8) NOT NULL,
  `Apellido_Paterno` varchar(20) DEFAULT NULL,
  `Apellido_Materno` varchar(20) DEFAULT NULL,
  `Nombres` varchar(30) DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `estadocivil` varchar(20) DEFAULT NULL,
  `nacionalidad` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`DNI`, `Apellido_Paterno`, `Apellido_Materno`, `Nombres`, `sexo`, `estadocivil`, `nacionalidad`, `estado`, `direccion`, `fecha_nacimiento`) VALUES
('11111111', 'Fina', 'Segura', 'Eva', 'F', 'Soltera', 'Peruana', 0, 'Hermanos Angulos 123', '2010-03-06'),
('22222222', 'Cura', 'Sacristan', 'Rosario', 'F', 'Soltera', 'Peruana', 0, 'Jose Olaya 123', '2010-03-06'),
('33333333', 'Pecho', 'Barba', 'Dolores', 'F', 'Soltera', 'Venezolana', 1, 'Garcilazo de la Vega 123', '2000-03-06'),
('40000000', 'Fuertes', 'Pecho', 'Crsithian aldair', 'M', NULL, NULL, 1, 'Garcilazo de la Vega 123', '2000-03-06'),
('44444444', 'Seisdedos', 'Pies Planos', 'Alfonso', 'M', 'Soltero', 'Peruano', 0, 'Los Incas 123', '1999-12-31'),
('55555555', 'Fuertes', 'Barrigas', 'Jose', 'M', 'Soltero', 'Ruso', 1, 'Los Incas 254', '1999-12-31'),
('60000000', 'Fuertes', 'Pecho', 'Percy', 'M', NULL, NULL, 1, 'Garcilazo de la Vega 123', '2000-02-27'),
('66666666', 'Amor', 'Jurado', 'Pedro', 'M', 'Soltero', 'Peruano', 0, 'Los Incas 654', NULL),
('77777777', 'Marco', 'Gol', 'Miguel', 'M', 'Soltero', 'Peruano', 1, 'Jose Olaya 594', NULL),
('88888888', 'Diaz', 'Festivo', 'Domingo', 'M', 'Soltero', 'Peruano', 1, 'Jose Olata 789', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulacion`
--

CREATE TABLE `postulacion` (
  `idPostulacion` int(11) NOT NULL,
  `DNI` char(8) NOT NULL,
  `idOferta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `curriculum` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `telefono` char(9) NOT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `institucion` varchar(30) DEFAULT NULL,
  `areaEstudio` varchar(30) DEFAULT NULL,
  `nivelEstudio` varchar(30) DEFAULT NULL,
  `estadoEstudio` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `postulacion`
--

INSERT INTO `postulacion` (`idPostulacion`, `DNI`, `idOferta`, `fecha`, `curriculum`, `email`, `telefono`, `titulo`, `pais`, `institucion`, `areaEstudio`, `nivelEstudio`, `estadoEstudio`, `estado`) VALUES
(1, '11111111', 1, '2023-10-18', '/storage/ArchivosCurriculum/kapAxtsNIR2CaD7LsUHcEVIxKkJNVxelQsrGsD7s.pdf', 'demo@gmail.com', '123456789', 'Sistemas', 'Perú', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(2, '11111111', 1, '2023-10-18', '/storage/ArchivosCurriculum/2DWNGhcu57eUB7F2ZP49cA8ru3648D3HnO9IsT7h.pdf', 'demo@gmail.com', '123456789', 'Sistemas', 'Perú', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(3, '77777777', 1, '2023-11-24', '/storage/ArchivosCurriculum/CiRkRodqeKwDThmDXpiwSLtz1B1dVgkpjwgHD3hO.pdf', 'demo@gmail.com', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(4, '77777777', 1, '2023-11-24', '/storage/ArchivosCurriculum/kQ4nelWhPkAd0tjqJJuvvrnzWo5VpA6ZqnfU05rW.pdf', 'demo@gmail.com', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(5, '77777777', 1, '2023-11-24', '/storage/ArchivosCurriculum/JDw2AXLPzsMt9R4ELHGRk4nuvZgozVYEvvXqOc4V.pdf', 'demo@gmail.com', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(6, '77777777', 1, '2023-11-24', '/storage/ArchivosCurriculum/yoA01HKW8YW34i1l9gPQ2PO9IEPSKb0HJPTWp0LX.pdf', 'demo@gmail.com', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(7, '77777777', 1, '2023-11-24', '/storage/ArchivosCurriculum/O58X0PI4abnRf4ikyBJ0ySSv03hKrQxKetDFiKoT.pdf', 'demo@gmail.com', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(8, '44444444', 1, '2023-11-27', '/storage/ArchivosCurriculum/kTMkCYC9tdxMizFoC8uyhoTxTD6yRcouj2oV9BTR.pdf', 'admin@facturaweb.site', '995265487', 'Sistemas', 'BR1', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1),
(9, '44444444', 1, '2023-11-27', '/storage/ArchivosCurriculum/vj7qKKoccsjOJiNlmTbFeMQVaepyThbPMAaO4b3h.pdf', 'admin@facturaweb.site', '995265487', 'Sistemas', 'BR1', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 0),
(10, '33333333', 1, '2023-11-28', NULL, 't053300320@unitru.edu.pe', '995265487', 'Sistemas', 'BR', 'UNT', 'ing de sistemas', 'Profesional', 'Finalizado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `nombreRol` varchar(50) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`, `estado`) VALUES
(1, 'MesaPartes', 1),
(2, 'Registrador', 1),
(3, 'Administrador', 1),
(4, 'Administrador de Sistemas', 1),
(5, 'Encargado contrato', 1),
(6, 'Encargado de RRHH', 1),
(7, 'Administrador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `DNISolicitante` char(8) NOT NULL,
  `fechaSolicitud` date DEFAULT NULL,
  `horaSolicitud` time DEFAULT NULL,
  `observacion` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL,
  `pago` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `DNISolicitante`, `fechaSolicitud`, `horaSolicitud`, `observacion`, `estado`, `pago`) VALUES
(1, '11111111', '2023-03-09', NULL, 'ninguna', 1, '0'),
(2, '11111111', '2023-03-22', NULL, 'Ninguna', 1, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoficha`
--

CREATE TABLE `tipoficha` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoficha`
--

INSERT INTO `tipoficha` (`idtipo`, `nombre`) VALUES
(1, 'Nacimiento'),
(2, 'Matrimonio'),
(3, 'Defunción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idTrabajador` int(11) NOT NULL,
  `seguro` varchar(30) NOT NULL,
  `ONP` tinyint(1) NOT NULL,
  `DNI` char(8) NOT NULL,
  `correoPersonal` varchar(30) DEFAULT NULL,
  `telefono` char(9) NOT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idTrabajador`, `seguro`, `ONP`, `DNI`, `correoPersonal`, `telefono`, `direccion`, `estado`) VALUES
(1, 'ESALUDD', 1, '11111111', 'pepito@gmail.com', '995265487', '917 juan zapata', 1),
(2, 'ESALUD', 1, '11111111', 'pepito@gmail.com', '111111111', '917 juan zapata', 0),
(3, 'ESALUD', 1, '44444444', 'pepito@gmail.com', '995265487', '917 juan zapata', 1),
(4, 'ESALUD', 1, '33333333', 'pepito@gmail.com', '995265487', '917 juan zapata', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotoPerfil` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idRol` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `idTrabajador` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `fotoPerfil`, `email_verified_at`, `password`, `idRol`, `remember_token`, `created_at`, `updated_at`, `idTrabajador`) VALUES
(1, 'Renato', 'renaenciso@gmail.com', NULL, NULL, '$2y$10$d42YNmxFM14NuLTZAfLtFeefUy.WgXvWTzC3WSt2WSsU5adE2basi', 1, NULL, '2023-02-27 23:24:05', '2023-02-27 23:24:05', 0),
(2, 'Renatos', 't053300320@unitru.edu.pe', NULL, NULL, '$2y$10$8Hn80mW98HO4qeqvxVDQDufQqgdib8/pr6znos9/E7MwX3m3FI/Qm', 2, 'dElWqyfcbsWNDUabc5FC7xC5K5bgCkCDWJ0rzq0UBAjH2N7AmSqMPMnFSjhE', '2023-02-27 23:24:54', '2023-10-02 07:28:56', 0),
(3, 'Renato', 'demo@gmail.com', NULL, NULL, '$2y$10$SOvkzeHwjyW2xokqi4eMi.W4kzspgH2stQ.aoj5Ni3O3NHjllfPdC', 1, NULL, '2023-09-19 13:21:24', '2023-09-19 13:21:24', 0),
(4, 'Renato', 'eliannesuarez25@gmail.com', NULL, NULL, '$2y$10$yK5txwW.j3Mz9bC3Dhmjp.WiOmeCXgIPnVve5qQ/fltdc7KjBdfcW', 4, NULL, '2023-09-20 11:53:03', '2023-09-20 11:53:03', 0),
(5, 'Renato', 'renatoenciso22@gmail.com', NULL, NULL, '$2y$10$Rm.1TMVNvBJ4lE7B9hn0XO8TcXFBT23I1TeDFkQhqATxNVl0F0rAy', 5, NULL, '2023-09-20 15:53:07', '2023-09-20 15:53:07', 0),
(6, 'Renato', 'rena@gmail.com', '/storage/archivosFotoPerfil/6.jpg', NULL, '$2y$10$kVzkNxVqGkaCnPXZVx9SFuZJdngB1a7yQmB06zkuGMUy1SLFIqkdi', 5, NULL, '2023-09-15 00:13:08', '2023-10-21 10:19:58', 0),
(7, 'RenatoEnciso', 'renatoenciso2230@gmail.com', NULL, NULL, '$2y$10$tUjVjrwX67y5NnpHlmQtUuXgnZlTG3z4a8j9SAyZCFuHszOMmSv5m', 4, NULL, '2023-09-28 09:15:57', '2023-09-28 09:15:57', 0),
(8, 'fabricio', 'ga@gmail.com', NULL, NULL, '$2y$10$X7opHZacKCMWX4Eufqtx1.DtC557dBHv/dTpLvZTR/vrZU0jgKpp2', 1, NULL, '2023-11-17 07:54:55', '2023-11-17 07:54:55', 0),
(9, 'Administrador de sistema', 'admi@gmail.com', NULL, '2023-12-09 10:17:59', '$2y$10$4Q4qjdjK91artj3dLpp4JOcqc0.jADvoNCmMn0lRh1jTkbNLNwFIa', 4, 'VaKyLnouFIdj2LvoWHQQcQf4DyGfca5TE3kUye1CEWCJGLoermXuMtxE69ui', '2023-12-09 10:17:59', '2023-12-09 10:17:59', 0),
(10, 'Usuario de Contrato', 'contrato@gmail.com', NULL, '2023-12-09 10:17:59', '$2y$10$rDvchjTwCMa/nsDQ8ZLaTOjlSqDxQtwDzUeMSnBP/AUZ2cp1WI9CG', 5, 'z3fmSo65K337cHzzqFZZTgAWq4O7oU6VO2gnYBxS7jR6wbFueiDroeQAJOMJ', '2023-12-09 10:17:59', '2023-12-09 10:17:59', 0),
(11, 'Usuario de RRHH', 'rrhh@gmail.com', NULL, '2023-12-09 10:17:59', '$2y$10$qzgCBZygxfgkLRIwqxkmMOcQGZ.E2Yx7HAg216eQNE0mGnhe1qfRW', 6, 'ky9Uo3ObjWzJpToER2sP1rvSMYQa30tDAzV0AnFHoFwNs8AiY2Ikk09p5XCP', '2023-12-09 10:17:59', '2023-12-09 10:17:59', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacacion`
--

CREATE TABLE `vacacion` (
  `idVacacion` int(11) NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vacacion`
--

INSERT INTO `vacacion` (`idVacacion`, `descripcion`, `fecha_inicio`, `fecha_fin`, `idContrato`, `estado`) VALUES
(1, 'sdfsdfdsf', '2023-11-29', '2023-12-30', 61, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acta`
--
ALTER TABLE `acta`
  ADD PRIMARY KEY (`idActa`);

--
-- Indices de la tabla `acta_defuncion`
--
ALTER TABLE `acta_defuncion`
  ADD PRIMARY KEY (`idActa`);

--
-- Indices de la tabla `acta_matrimonio`
--
ALTER TABLE `acta_matrimonio`
  ADD PRIMARY KEY (`idActa`);

--
-- Indices de la tabla `acta_nacimiento`
--
ALTER TABLE `acta_nacimiento`
  ADD PRIMARY KEY (`idActa`);

--
-- Indices de la tabla `acta_persona`
--
ALTER TABLE `acta_persona`
  ADD PRIMARY KEY (`idActaPersona`),
  ADD KEY `idActa` (`idActa`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`idAsistencia`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `cese`
--
ALTER TABLE `cese`
  ADD PRIMARY KEY (`idCese`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`idContrato`),
  ADD KEY `idTrabajador` (`idTrabajador`),
  ADD KEY `idEntrevista` (`idEntrevista`);

--
-- Indices de la tabla `contrato_horario`
--
ALTER TABLE `contrato_horario`
  ADD PRIMARY KEY (`idContratoHorario`),
  ADD KEY `idContrato` (`idContrato`),
  ADD KEY `idHorario` (`idHorario`);

--
-- Indices de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`idEntrevista`),
  ADD KEY `idPostulacion` (`idPostulacion`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `ficha_registro`
--
ALTER TABLE `ficha_registro`
  ADD PRIMARY KEY (`idficha`),
  ADD KEY `idtipo` (`idtipo`);

--
-- Indices de la tabla `horaextra`
--
ALTER TABLE `horaextra`
  ADD PRIMARY KEY (`idHoraExtra`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`idHorario`);

--
-- Indices de la tabla `lista_solicitud`
--
ALTER TABLE `lista_solicitud`
  ADD PRIMARY KEY (`idActaSolicitada`),
  ADD KEY `idActa` (`idActa`),
  ADD KEY `idSolicitud` (`idSolicitud`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`idOferta`),
  ADD KEY `idCargo` (`idCargo`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idSuedo`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`idPermiso`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD PRIMARY KEY (`idPostulacion`),
  ADD KEY `idOferta` (`idOferta`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`),
  ADD KEY `DNISolicitante` (`DNISolicitante`);

--
-- Indices de la tabla `tipoficha`
--
ALTER TABLE `tipoficha`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idTrabajador`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_idrol_foreign` (`idRol`);

--
-- Indices de la tabla `vacacion`
--
ALTER TABLE `vacacion`
  ADD PRIMARY KEY (`idVacacion`),
  ADD KEY `idContrato` (`idContrato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acta_persona`
--
ALTER TABLE `acta_persona`
  MODIFY `idActaPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `idAsistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cese`
--
ALTER TABLE `cese`
  MODIFY `idCese` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `idContrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `contrato_horario`
--
ALTER TABLE `contrato_horario`
  MODIFY `idContratoHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  MODIFY `idEntrevista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ficha_registro`
--
ALTER TABLE `ficha_registro`
  MODIFY `idficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `horaextra`
--
ALTER TABLE `horaextra`
  MODIFY `idHoraExtra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `lista_solicitud`
--
ALTER TABLE `lista_solicitud`
  MODIFY `idActaSolicitada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `idOferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `idSuedo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `idPermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulacion`
--
ALTER TABLE `postulacion`
  MODIFY `idPostulacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoficha`
--
ALTER TABLE `tipoficha`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `idTrabajador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `vacacion`
--
ALTER TABLE `vacacion`
  MODIFY `idVacacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acta`
--
ALTER TABLE `acta`
  ADD CONSTRAINT `acta_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `ficha_registro` (`idficha`);

--
-- Filtros para la tabla `acta_defuncion`
--
ALTER TABLE `acta_defuncion`
  ADD CONSTRAINT `acta_defuncion_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `acta` (`idActa`);

--
-- Filtros para la tabla `acta_matrimonio`
--
ALTER TABLE `acta_matrimonio`
  ADD CONSTRAINT `acta_matrimonio_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `acta` (`idActa`);

--
-- Filtros para la tabla `acta_nacimiento`
--
ALTER TABLE `acta_nacimiento`
  ADD CONSTRAINT `acta_nacimiento_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `acta` (`idActa`);

--
-- Filtros para la tabla `acta_persona`
--
ALTER TABLE `acta_persona`
  ADD CONSTRAINT `acta_persona_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `acta` (`idActa`),
  ADD CONSTRAINT `acta_persona_ibfk_2` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);

--
-- Filtros para la tabla `cese`
--
ALTER TABLE `cese`
  ADD CONSTRAINT `cese_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`idEntrevista`) REFERENCES `entrevista` (`idEntrevista`);

--
-- Filtros para la tabla `contrato_horario`
--
ALTER TABLE `contrato_horario`
  ADD CONSTRAINT `contrato_horario_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`),
  ADD CONSTRAINT `contrato_horario_ibfk_2` FOREIGN KEY (`idHorario`) REFERENCES `horario` (`idHorario`);

--
-- Filtros para la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `entrevista_ibfk_1` FOREIGN KEY (`idPostulacion`) REFERENCES `postulacion` (`idPostulacion`);

--
-- Filtros para la tabla `ficha_registro`
--
ALTER TABLE `ficha_registro`
  ADD CONSTRAINT `ficha_registro_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipoficha` (`idtipo`);

--
-- Filtros para la tabla `horaextra`
--
ALTER TABLE `horaextra`
  ADD CONSTRAINT `horaextra_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);

--
-- Filtros para la tabla `lista_solicitud`
--
ALTER TABLE `lista_solicitud`
  ADD CONSTRAINT `lista_solicitud_ibfk_1` FOREIGN KEY (`idActa`) REFERENCES `acta` (`idActa`),
  ADD CONSTRAINT `lista_solicitud_ibfk_2` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`);

--
-- Filtros para la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`);

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);

--
-- Filtros para la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD CONSTRAINT `permiso_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);

--
-- Filtros para la tabla `postulacion`
--
ALTER TABLE `postulacion`
  ADD CONSTRAINT `postulacion_ibfk_1` FOREIGN KEY (`idOferta`) REFERENCES `oferta` (`idOferta`),
  ADD CONSTRAINT `postulacion_ibfk_2` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`DNISolicitante`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_idrol_foreign` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`);

--
-- Filtros para la tabla `vacacion`
--
ALTER TABLE `vacacion`
  ADD CONSTRAINT `vacacion_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
