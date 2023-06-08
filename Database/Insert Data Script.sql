-- -----------------------------------------------------
-- Insert data `tpv`.`customer`
-- -----------------------------------------------------
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`, `address`) VALUES ('1', 'Adrián', 'Carmona', 'cpadri2003@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`, `address`) VALUES ('2', 'Sofia', 'Puertas', 'sofiapuertas@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`, `address`) VALUES ('3', 'Damaris', 'Sanchez', 'damarissanchez@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`, `address`) VALUES ('4', 'Jean', 'Martin', 'jeanmartin@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`, `address`) VALUES ('5', 'Saida', 'Campoy', 'saidacampoy@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');
INSERT INTO `tpv`.`customer` (`id_customer`, `name`, `surnames`, `email`) VALUES ('6', 'Genérico', 'Genérico', 'generico@gmail.com', 'C/ Mare de deu dels desamparats 25, PTA 1');


-- -----------------------------------------------------
-- Insert data `tpv`.`role`
-- -----------------------------------------------------
INSERT INTO `tpv`.`role` (`id_role`, `name`) VALUES ('1', 'Administrador');
INSERT INTO `tpv`.`role` (`id_role`, `name`) VALUES ('2', 'Encargado');
INSERT INTO `tpv`.`role` (`id_role`, `name`) VALUES ('3', 'Empleado');


-- -----------------------------------------------------
-- Insert data `tpv`.`user`
-- -----------------------------------------------------
INSERT INTO `tpv`.`user` (`id_user`, `name`, `surnames`, `username`, `password`, `id_role`) VALUES ('1', 'Admin', 'Admin', 'admin', 'admin', 1);
INSERT INTO `tpv`.`user` (`id_user`, `name`, `surnames`, `username`, `password`, `id_role`) VALUES ('2', 'Encargado', 'Encargado', 'encargado', 'encargado', '2');
INSERT INTO `tpv`.`user` (`id_user`, `name`, `surnames`, `username`, `password`, `id_role`) VALUES ('3', 'Empleado', 'Empleado', 'empleado', 'empleado', '3');


-- -----------------------------------------------------
-- Insert data `tpv`.`sale`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Insert data `tpv`.`permission`
-- -----------------------------------------------------
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('1', 'Introducir ventas');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('2', 'Devolución ventas');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('3', 'Introducir productos');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('4', 'Modificar / Eliminar productos');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('5', 'Campañas de publicidad');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('6', 'Gestionar usuarios');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('7', 'Edición de permisos');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('8', 'Cambio de contraseñas');
INSERT INTO `tpv`.`permission` (`id_permission`, `description`) VALUES ('9', 'Edición de roles');


-- -----------------------------------------------------
-- Insert data `tpv`.`offer`
-- -----------------------------------------------------
INSERT INTO `tpv`.`offer` (`id_offer`, `name`, `description`, `period`, `discount`) VALUES ('1', 'Publicidad', 'Descuento de Inicio', '2022-01-31', '5');
INSERT INTO `tpv`.`offer` (`id_offer`, `name`, `description`, `period`, `discount`) VALUES ('2', 'Descuento', '10% Bebidas', '2022-01-31', '10');
INSERT INTO `tpv`.`offer` (`id_offer`, `name`, `description`, `period`, `discount`) VALUES ('3', 'Descuento', '45% Descuento especial', '2022-01-31', '45');


-- -----------------------------------------------------
-- Insert data `tpv`.`category`
-- -----------------------------------------------------
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('1', 'Ofertas');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('2', 'Bebidas');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('3', 'Helados');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('4', 'Golosinas');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('5', 'Snacks');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('6', 'Juguetes');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('7', 'Prensa');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('8', 'Cromos');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('9', 'Otros');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('10', 'Otros1');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('11', 'Otros2');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('12', 'Otros3');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('13', 'Otros4');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('14', 'Otros5');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('15', 'Otros6');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('16', 'Otros7');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('17', 'Otros8');
INSERT INTO `tpv`.`category` (`id_category`, `name`) VALUES ('18', 'Otros9');


-- -----------------------------------------------------
-- Insert data `tpv`.`location`
-- -----------------------------------------------------
INSERT INTO `tpv`.`location` (`id_location`, `name`) VALUES ('1', 'Mostrador');
INSERT INTO `tpv`.`location` (`id_location`, `name`) VALUES ('2', 'Estantes');
INSERT INTO `tpv`.`location` (`id_location`, `name`) VALUES ('3', 'Nevera');
INSERT INTO `tpv`.`location` (`id_location`, `name`) VALUES ('4', 'Congelador');
INSERT INTO `tpv`.`location` (`id_location`, `name`) VALUES ('5', 'Almacén');


-- -----------------------------------------------------
-- Insert data `tpv`.`product`
-- -----------------------------------------------------
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('1', 'Fanta Naranja', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('2', 'Producto1', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('3', 'Producto2', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('4', 'Producto3', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('5', 'Producto4', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('6', 'Producto5', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('7', 'Producto6', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('8', 'Producto7', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('9', 'Producto8', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('10', 'Producto9', '0.69', '4', '100', '1', '3', '2');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`, `id_offer`) VALUES ('11', 'Producto10', '0.69', '4', '100', '1', '3', '2');

INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('12', 'Producto11', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('13', 'Producto12', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('14', 'Producto13', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('15', 'Producto14', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('16', 'Producto15', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('17', 'Producto16', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('18', 'Producto17', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('19', 'Producto18', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('20', 'Producto19', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('21', 'Producto20', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('22', 'Producto21', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('23', 'Producto22', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('24', 'Producto23', '0.05', '10', '1000', '4', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('25', 'Producto24', '0.05', '10', '1000', '4', '1');

INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('26', 'Producto25', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('27', 'Producto26', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('28', 'Producto27', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('29', 'Producto28', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('30', 'Producto29', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('31', 'Producto30', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('32', 'Producto31', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('33', 'Producto32', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('34', 'Producto33', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('35', 'Producto34', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('36', 'Producto35', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('37', 'Producto36', '1', '21', '50', '8', '1');
INSERT INTO `tpv`.`product` (`id_product`, `name`, `price`, `iva`, `quantity`, `id_category`, `id_location`) VALUES ('38', 'Producto37', '1', '21', '50', '8', '1');


-- -----------------------------------------------------
-- Insert data `tpv`.`sale_details`
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Insert data `tpv`.`role_permissions`
-- -----------------------------------------------------
-- Administrador
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '1');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '2');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '3');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '4');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '5');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '6');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '7');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '8');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('1', '9');
-- Encargado
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('2', '1');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('2', '2');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('2', '3');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('2', '4');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('2', '5');
-- Empleado
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('3', '1');
INSERT INTO `tpv`.`role_permissions` (`id_role`, `id_permission`) VALUES ('3', '3');


-- -----------------------------------------------------
-- Insert data `tpv`.`customer_offers`
-- -----------------------------------------------------
INSERT INTO `tpv`.`customer_offers` (`id_customer_offers`, `id_customer`, `id_offer`) VALUES ('1', '1', '1');
