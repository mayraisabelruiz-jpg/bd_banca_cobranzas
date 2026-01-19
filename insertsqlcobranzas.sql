use bd_banca_cobranzas1

INSERT INTO agentes (nombres, apellidos, segmento_asignado)
VALUES
('Luis Alberto', 'Gómez Rivas', 'Alto'),
('María Elena', 'Torres Silva', 'Medio'),
('Jorge Andrés', 'Paredes León', 'Bajo'),
('Carolina', 'Vargas Ruiz', 'Medio'),
('Ricardo', 'Salinas Prado', 'Alto');

INSERT INTO canales (nombre_canal)
VALUES
('Llamada Telefónica'),
('SMS'),
('Email'),
('Visita Domiciliaria'),
('WhatsApp');

INSERT INTO personas_naturales (
    numero_documento, nombres, apellidos, email, direccion, celular,
    fecha_nacimiento, genero, estado_civil, SegmentoRiesgo
)
VALUES
('74851236', 'María Fernanda', 'Rojas Pérez', 'mrojas@example.com', 'Jr. Las Gardenias 450', '987654321', '1988-03-15', 'Femenino', 'Casado', 'Bajo'),
('10234589', 'Carlos Alberto', 'Mendoza Ruiz', 'cmendoza@example.com', 'Av. América Sur 1234', '912345678', '1992-11-02', 'Masculino', 'Soltero', 'Medio'),
('55678901', 'Lucía Beatriz', 'Salazar Torres', 'lsalazar@example.com', 'Calle Los Laureles 789', '999888777', '1985-07-28', 'Femenino', 'Divorciado', 'Alto'),
('88990011', 'Jorge Luis', 'Ramírez Castillo', 'jramirez@example.com', 'Mz. B Lt. 12 Urb. Primavera', '955443322', '1998-01-10', 'Masculino', 'Conviviente', 'Medio'),
('66778899', 'Ana Sofía', 'Gutiérrez León', 'agutierrez@example.com', 'Av. Larco 560', '944332211', '1990-09-22', 'Femenino', 'Soltero', 'Bajo');


INSERT INTO personas_juridicas (
    ruc, razon_social, direccion, email, telefono,
    tipo_empresa, rubro, fecha_creacion
)
VALUES
('20604578123', 'Inversiones Andinas SAC', 'Av. Larco 1020, Trujillo', 'contacto@andinas.com', '044123456', 'SAC', 'Comercio', '2015-06-12'),
('20587412345', 'Servicios Industriales del Norte EIRL', 'Jr. Pizarro 450, Trujillo', 'info@sinorte.com', '044987654', 'EIRL', 'Industrial', '2010-03-28'),
('20457896321', 'Agroexportadora El Sol SRL', 'Carretera Industrial Km 4, Virú', 'ventas@elsol.com', '044765432', 'SRL', 'Agroexportación', '2018-11-05'),
('20678954123', 'Tecnologías del Pacífico SAC', 'Av. América Sur 1550, Trujillo', 'soporte@tecnapac.com', '044556677', 'SAC', 'Tecnología', '2020-01-15'),
('20569874125', 'Constructora Horizonte S.A.', 'Av. Mansiche 2200, Trujillo', 'contacto@horizonte.com', '044334455', 'S.A.', 'Construcción', '2012-09-30');

INSERT INTO clientes (tipo_cliente, id_persona_natural, id_persona_juridica, segmento_riesgo)
VALUES
('Natural', 1, NULL, 'Bajo'),
('Natural', 2, NULL, 'Medio'),
('Natural', 3, NULL, 'Alto'),
('Juridica', NULL, 1, 'Medio'),
('Juridica', NULL, 2, 'Alto');

INSERT INTO creditos (id_cliente, tipo_credito, monto_total, fecha_desembolso, plazo_meses, tasa_interes, estado)
VALUES
(1,'Consumo',5000,'2024-01-10',12,15.5,'Vigente'),
(1,'Consumo',3000,'2024-02-10',10,14.0,'Vigente'),
(2,'Vehicular',25000,'2023-05-20',36,12.0,'Vigente'),
(2,'Consumo',8000,'2024-03-01',18,16.0,'Vigente'),
(3,'Consumo',4000,'2024-01-15',12,15.0,'Vencido'),
(3,'Tarjeta',2000,'2024-01-01',6,20.0,'Vigente'),
(4,'Capital de Trabajo',80000,'2024-03-01',24,10.5,'Vigente'),
(4,'Leasing',120000,'2022-10-15',48,9.8,'Refinanciado'),
(5,'Hipotecario',180000,'2021-07-30',240,8.5,'Vigente'),
(5,'Consumo',6000,'2024-04-01',12,15.0,'Vigente'),
(1,'Tarjeta',1500,'2024-02-01',6,22.0,'Vigente'),
(2,'Consumo',7000,'2024-01-20',12,14.5,'Vigente'),
(3,'Vehicular',30000,'2023-11-10',36,12.2,'Vigente'),
(4,'Capital de Trabajo',90000,'2024-02-15',24,11.0,'Vigente'),
(5,'Consumo',4500,'2024-03-10',10,15.0,'Vigente'),
(1,'Consumo',5200,'2024-01-25',12,15.5,'Vigente'),
(2,'Tarjeta',1800,'2024-02-05',6,21.0,'Vigente'),
(3,'Consumo',3500,'2024-03-01',12,16.0,'Vigente'),
(4,'Leasing',110000,'2023-09-01',48,9.5,'Vigente'),
(5,'Hipotecario',175000,'2022-08-01',240,8.4,'Vigente');

INSERT INTO cuotas (id_credito, numero_cuota, fecha_vencimiento, monto_cuota, saldo_cuota, estado)
VALUES
(1,1,'2024-02-10',450,450,'Pendiente'),
(1,2,'2024-03-10',450,450,'Pendiente'),
(2,1,'2023-06-20',900,0,'Pagada'),
(3,1,'2024-04-01',3500,3500,'Vencida'),
(4,1,'2021-08-30',1200,0,'Pagada'),
(5,1,'2024-02-15',350,350,'Pendiente'),
(6,1,'2024-02-10',200,200,'Pendiente'),
(7,1,'2024-04-01',4000,4000,'Vencida'),
(8,1,'2023-11-15',2500,2500,'Vencida'),
(9,1,'2021-08-30',1200,0,'Pagada'),
(10,1,'2024-05-01',500,500,'Pendiente'),
(11,1,'2024-03-01',250,250,'Pendiente'),
(12,1,'2024-02-20',600,600,'Pendiente'),
(13,1,'2023-12-10',950,950,'Vencida'),
(14,1,'2024-03-15',3800,3800,'Pendiente'),
(15,1,'2024-04-10',450,450,'Pendiente'),
(16,1,'2024-02-28',460,460,'Pendiente'),
(17,1,'2024-03-05',300,300,'Pendiente'),
(18,1,'2024-04-01',350,350,'Pendiente'),
(19,1,'2023-10-01',2500,2500,'Vencida');

INSERT INTO pagos (id_cuota, fecha_pago, monto_pagado, medio_pago)
VALUES
(1,'2024-02-11',200,'Yape'),
(1,'2024-02-15',250,'Agencia'),
(2,'2024-03-11',450,'Transferencia'),
(3,'2023-06-18',900,'Transferencia'),
(4,'2024-04-10',1000,'Transferencia'),
(5,'2021-08-29',1200,'Agencia'),
(6,'2024-02-16',100,'Yape'),
(7,'2024-04-02',500,'Agencia'),
(8,'2023-11-20',1000,'Transferencia'),
(9,'2021-08-29',1200,'Agencia'),
(10,'2024-05-02',200,'Yape'),
(11,'2024-03-02',250,'Agencia'),
(12,'2024-02-21',300,'Transferencia'),
(13,'2023-12-12',500,'Agencia'),
(14,'2024-03-16',1000,'Transferencia'),
(15,'2024-04-11',200,'Yape'),
(16,'2024-03-01',460,'Agencia'),
(17,'2024-03-06',150,'Transferencia'),
(18,'2024-04-02',200,'Agencia'),
(19,'2023-10-05',500,'Transferencia');

INSERT INTO gestiones_cobranza (id_cuota, id_agente, id_canal, fecha_gestion, tipo_gestion, resultado, observaciones)
VALUES
(1,1,1,'2024-02-12','Preventiva','Promesa','Cliente promete pagar'),
(2,2,2,'2024-03-11','Correctiva','No contesta','3 intentos fallidos'),
(3,3,3,'2023-06-19','Preventiva','Pagado','Cliente cumplió'),
(4,4,4,'2024-04-02','Correctiva','Promesa','Promete pagar 1000'),
(5,5,5,'2021-08-28','Preventiva','Pagado','Pago en agencia'),
(6,1,1,'2024-02-17','Preventiva','Promesa','Promete pagar 100'),
(7,2,2,'2024-04-03','Correctiva','Negativa','Cliente no quiere pagar'),
(8,3,3,'2023-11-21','Correctiva','Promesa','Promete pagar 500'),
(9,4,4,'2021-08-28','Preventiva','Pagado','Pago completo'),
(10,5,5,'2024-05-02','Preventiva','Promesa','Promete pagar 200'),
(11,1,1,'2024-03-02','Preventiva','Promesa','Promete pagar 250'),
(12,2,2,'2024-02-22','Correctiva','No contesta','Sin respuesta'),
(13,3,3,'2023-12-13','Correctiva','Promesa','Promete pagar 500'),
(14,4,4,'2024-03-16','Preventiva','Promesa','Promete pagar 1000'),
(15,5,5,'2024-04-11','Correctiva','Promesa','Promete pagar 200'),
(16,1,1,'2024-03-01','Preventiva','Promesa','Promete pagar 460'),
(17,2,2,'2024-03-06','Correctiva','Promesa','Promete pagar 150'),
(18,3,3,'2024-04-02','Preventiva','Promesa','Promete pagar 200'),
(19,4,4,'2023-10-05','Correctiva','Promesa','Promete pagar 500'),
(20,5,5,'2024-04-15','Correctiva','Negativa','Cliente rechaza pago');

INSERT INTO promesas_pago (id_gestion, fecha_promesa, monto_prometido, estado)
VALUES
(1,'2024-02-15',250,'Pendiente'),
(2,'2024-03-15',450,'Incumplida'),
(3,'2023-06-20',900,'Cumplida'),
(4,'2024-04-10',1000,'Pendiente'),
(6,'2024-02-20',100,'Cumplida'),
(7,'2024-04-10',500,'Incumplida'),
(8,'2023-11-25',500,'Cumplida'),
(10,'2024-05-05',200,'Pendiente'),
(11,'2024-03-05',250,'Cumplida'),
(13,'2023-12-20',500,'Incumplida'),
(14,'2024-03-20',1000,'Pendiente'),
(15,'2024-04-15',200,'Cumplida'),
(16,'2024-03-05',460,'Cumplida'),
(17,'2024-03-10',150,'Pendiente'),
(18,'2024-04-05',200,'Pendiente'),
(19,'2023-10-10',500,'Incumplida'),
(20,'2024-04-20',300,'Pendiente'),
(5,'2021-08-30',1200,'Cumplida'),
(9,'2021-08-29',1200,'Cumplida'),
(12,'2024-02-25',600,'Incumplida');