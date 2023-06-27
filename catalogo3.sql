-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2023 a las 07:54:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$v1DxeB2TvojJylmU1MGbzr$cTwGAfL0AaiUrQOzpeIS/wnuYEQLMPpaXTQ7KW46VoU=', '2023-06-25 16:40:12.806599', 1, 'admin', '', '', 'luighy.valencia@ucsp.edu.pe', 1, 1, '2023-06-25 16:39:52.105525');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `codigo_categoria` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`codigo_categoria`, `nombre`) VALUES
(1001, 'ojos'),
(1002, 'boca'),
(1003, 'rostro'),
(1004, 'pestañas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetico`
--

CREATE TABLE `cosmetico` (
  `codigo_cosmetico` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` float(5,2) NOT NULL,
  `stock` int(5) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cosmetico`
--

INSERT INTO `cosmetico` (`codigo_cosmetico`, `nombre`, `precio`, `stock`, `descripcion`) VALUES
(101, 'sombras', 52.00, 75, 'Las sombras de ojos proveen profundidad y dimensión a los ojos, complementan el color de los mismos, o simplemente atraen la atención.'),
(102, 'labiales', 26.00, 95, 'es un producto cosmético que contiene pigmentos, aceites, ceras y emolientes que dan color y textura a los labios.'),
(103, 'corrector', 60.00, 150, 'El corrector como el conjunto de productos y técnicas de maquillaje encaminados a neutralizar y disimular diferentes problemas —fundamentalmente de color'),
(104, 'difuminador', 50.00, 100, 'Pincel corto de forma redonda ideal para trabajar las sombras en zonas pequeñas y concretas, ideal para hacer difuminados precisos y suavizar bordes'),
(105, 'brochas', 10.00, 300, 'herramientas empleadas para aplicar con mayor facilidad, y con mejor resultado, determinados productos de maquillaje sobre la piel.'),
(106, 'base', 70.00, 130, 'es un producto que ayuda a que la piel luzca un mejor aspecto, de igual manera puede ayudar a disminuir la apariencia de algunas imperfecciones.'),
(107, 'polvo compacto', 90.00, 160, 'Es un cosmético aplicado en nuestro rostro para lograr un acabado uniforme, fresco y sin rastro de grasa. '),
(108, 'Delineador', 105.00, 130, 'es un cosmético y maquillaje utilizado para definir el contorno de los ojos.'),
(109, 'Rimel', 70.00, 100, 'es un cosmético usado para oscurecer, espesar, curvar y definir las pestañas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetico_categoria`
--

CREATE TABLE `cosmetico_categoria` (
  `codigo_categoria` int(5) NOT NULL,
  `codigo_cosmetico` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cosmetico_categoria`
--

INSERT INTO `cosmetico_categoria` (`codigo_categoria`, `codigo_cosmetico`) VALUES
(1001, 101),
(1002, 102),
(1003, 107),
(1004, 109);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-25 16:47:01.770763', '109', 'Rimel', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'Catalogo', 'cosmetico'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 16:39:07.221204'),
(2, 'auth', '0001_initial', '2023-06-25 16:39:07.614826'),
(3, 'admin', '0001_initial', '2023-06-25 16:39:07.709734'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 16:39:07.720599'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 16:39:07.733601'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 16:39:07.787829'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 16:39:07.832958'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 16:39:07.851988'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 16:39:07.863988'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 16:39:07.903845'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 16:39:07.913815'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 16:39:07.926818'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 16:39:07.947820'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 16:39:07.968806'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 16:39:07.989683'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 16:39:08.000220'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 16:39:08.021398'),
(18, 'sessions', '0001_initial', '2023-06-25 16:39:08.050728');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c19s2qbl1tf7wcmo3w7eiylgeasfs4al', '.eJxVjDsOwjAQBe_iGll21r9Q0nMGa-1d4wBypDipEHeHSCmgfTPzXiLitta4dV7iROIstDj9bgnzg9sO6I7tNss8t3WZktwVedAurzPx83K4fwcVe_3WAYbEJgRTkLVl4nEcEBjYFaZUSibnydukjFWkGC1ocoYMoAYuvoj3BwtoOPk:1qDSma:CeOuRhUNnhwifKqsIVgpooZVznxTyEFv8tlHFJmeByg', '2023-07-09 16:40:12.809599');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `codigo_empresa` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`codigo_empresa`, `nombre`) VALUES
(1, 'Maybelline'),
(2, 'Ever Beauty'),
(3, 'ésika'),
(4, 'yambal'),
(5, 'cyzon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_cosmetico`
--

CREATE TABLE `empresa_cosmetico` (
  `codigo_empresa` int(5) NOT NULL,
  `codigo_cosmetico` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa_cosmetico`
--

INSERT INTO `empresa_cosmetico` (`codigo_empresa`, `codigo_cosmetico`) VALUES
(3, 101),
(2, 102),
(5, 106),
(1, 107),
(4, 108);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `codigo` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`codigo`, `nombre`) VALUES
(1, 'Maybelline'),
(2, 'Ever Beauty'),
(3, 'ésika'),
(4, 'yambal'),
(5, 'cyzon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_cosmetico`
--

CREATE TABLE `marca_cosmetico` (
  `codigo_marca` int(5) NOT NULL,
  `codigo_cosmetico` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca_cosmetico`
--

INSERT INTO `marca_cosmetico` (`codigo_marca`, `codigo_cosmetico`) VALUES
(2, 105),
(5, 106),
(3, 107),
(1, 108),
(4, 109);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_compra`
--

CREATE TABLE `orden_compra` (
  `codigo_orden` int(5) NOT NULL,
  `codigo_usuario` int(5) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_compra`
--

INSERT INTO `orden_compra` (`codigo_orden`, `codigo_usuario`, `fecha`) VALUES
(111, 1, '2023-05-02'),
(112, 3, '2023-05-06'),
(113, 2, '2017-06-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_detalle`
--

CREATE TABLE `orden_detalle` (
  `codigo_orden` int(5) NOT NULL,
  `codigo_cosmetico` int(5) NOT NULL,
  `cantidad` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden_detalle`
--

INSERT INTO `orden_detalle` (`codigo_orden`, `codigo_cosmetico`, `cantidad`) VALUES
(111, 104, 3),
(112, 107, 2),
(113, 106, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codigo_usuario` int(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codigo_usuario`, `nombre`, `sexo`, `fecha_nacimiento`, `direccion`, `telefono`) VALUES
(1, 'Alexa', 'F', '2004-05-14', 'Hunter', '989562231'),
(2, 'Rafaella', 'F', '2006-05-17', 'Cayma', '989562231'),
(3, 'Nicolle', 'F', '2005-05-16', 'Cerro Colorado', '985962231');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codigo_categoria`);

--
-- Indices de la tabla `cosmetico`
--
ALTER TABLE `cosmetico`
  ADD PRIMARY KEY (`codigo_cosmetico`);

--
-- Indices de la tabla `cosmetico_categoria`
--
ALTER TABLE `cosmetico_categoria`
  ADD UNIQUE KEY `codigo_categoria` (`codigo_categoria`),
  ADD UNIQUE KEY `codigo_cosmetico` (`codigo_cosmetico`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`codigo_empresa`);

--
-- Indices de la tabla `empresa_cosmetico`
--
ALTER TABLE `empresa_cosmetico`
  ADD UNIQUE KEY `codigo_empresa` (`codigo_empresa`),
  ADD UNIQUE KEY `codigo_cosmetico` (`codigo_cosmetico`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `marca_cosmetico`
--
ALTER TABLE `marca_cosmetico`
  ADD UNIQUE KEY `codigo_marca` (`codigo_marca`),
  ADD UNIQUE KEY `codigo_cosmetico` (`codigo_cosmetico`);

--
-- Indices de la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD PRIMARY KEY (`codigo_orden`),
  ADD UNIQUE KEY `codigo_usuario` (`codigo_usuario`);

--
-- Indices de la tabla `orden_detalle`
--
ALTER TABLE `orden_detalle`
  ADD PRIMARY KEY (`codigo_orden`),
  ADD UNIQUE KEY `codigo_orden` (`codigo_orden`),
  ADD UNIQUE KEY `codigo_cosmetico` (`codigo_cosmetico`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codigo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cosmetico_categoria`
--
ALTER TABLE `cosmetico_categoria`
  ADD CONSTRAINT `cosmetico_categoria_ibfk_1` FOREIGN KEY (`codigo_cosmetico`) REFERENCES `cosmetico` (`codigo_cosmetico`),
  ADD CONSTRAINT `cosmetico_categoria_ibfk_2` FOREIGN KEY (`codigo_categoria`) REFERENCES `categoria` (`codigo_categoria`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `empresa_cosmetico`
--
ALTER TABLE `empresa_cosmetico`
  ADD CONSTRAINT `empresa_cosmetico_ibfk_1` FOREIGN KEY (`codigo_cosmetico`) REFERENCES `cosmetico` (`codigo_cosmetico`),
  ADD CONSTRAINT `empresa_cosmetico_ibfk_2` FOREIGN KEY (`codigo_empresa`) REFERENCES `empresa` (`codigo_empresa`);

--
-- Filtros para la tabla `marca_cosmetico`
--
ALTER TABLE `marca_cosmetico`
  ADD CONSTRAINT `marca_cosmetico_ibfk_1` FOREIGN KEY (`codigo_marca`) REFERENCES `marca` (`codigo`),
  ADD CONSTRAINT `marca_cosmetico_ibfk_2` FOREIGN KEY (`codigo_cosmetico`) REFERENCES `cosmetico` (`codigo_cosmetico`);

--
-- Filtros para la tabla `orden_compra`
--
ALTER TABLE `orden_compra`
  ADD CONSTRAINT `orden_compra_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`codigo_usuario`);

--
-- Filtros para la tabla `orden_detalle`
--
ALTER TABLE `orden_detalle`
  ADD CONSTRAINT `orden_detalle_ibfk_1` FOREIGN KEY (`codigo_cosmetico`) REFERENCES `cosmetico` (`codigo_cosmetico`),
  ADD CONSTRAINT `orden_detalle_ibfk_2` FOREIGN KEY (`codigo_orden`) REFERENCES `orden_compra` (`codigo_orden`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
