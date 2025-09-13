-- 1SOLUTION - Base de Datos SQLite Inicial
-- Sistema de Punto de Venta para Lavadero de Autos
-- Versión: 1.0.0 - Paraguay

PRAGMA foreign_keys = ON;

-- ===============================================
-- TABLA DE CONFIGURACIÓN DE EMPRESA
-- ===============================================
CREATE TABLE empresa (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL DEFAULT 'AutoLavado Premium',
    ruc TEXT NOT NULL DEFAULT '[TU RUC AQUÍ]',
    timbrado_numero TEXT NOT NULL DEFAULT '[T-XXXXXX]',
    timbrado_vencimiento DATE NOT NULL DEFAULT '2024-12-31',
    timbrado_limite INTEGER NOT NULL DEFAULT 1000,
    timbrado_usado INTEGER DEFAULT 0,
    timbrado_alerta_dias INTEGER DEFAULT 30,
    timbrado_alerta_cantidad INTEGER DEFAULT 100,
    direccion TEXT DEFAULT 'Av. España 1234, Asunción, Paraguay',
    telefono TEXT DEFAULT '021-123456',
    celular TEXT DEFAULT '0981-123456',
    email TEXT DEFAULT 'contacto@autolavado.com.py',
    website TEXT,
    logo_path TEXT,
    logo_width INTEGER DEFAULT 150,
    logo_height INTEGER DEFAULT 80,
    mostrar_logo_factura BOOLEAN DEFAULT 1,
    formato_factura TEXT DEFAULT 'A4',
    prefijo_factura TEXT DEFAULT 'FAC-',
    iva_porcentaje DECIMAL(5,2) DEFAULT 10.0,
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);

-- Configuración inicial (PERSONALIZAR CON TUS DATOS)
INSERT INTO empresa VALUES (
    1, 
    'AutoLavado Premium',           -- Cambiar por nombre de tu lavadero
    '[TU RUC AQUÍ]',               -- Cambiar por tu RUC
    '[T-XXXXXX]',                  -- Cambiar por tu timbrado DGII
    '2024-12-31',                  -- Cambiar por fecha vencimiento timbrado
    1000,                          -- Cambiar por límite facturas del timbrado
    0,                             -- Facturas ya usadas (empezar en 0)
    30,                            -- Días antes vencimiento para alertar
    100,                           -- Facturas restantes para alertar
    'Av. España 1234, Asunción, Paraguay',  -- Tu dirección
    '021-123456',                  -- Tu teléfono
    '0981-123456',                 -- Tu celular
    'contacto@autolavado.com.py',  -- Tu email
    'www.autolavado.com.py',       -- Tu website
    NULL,                          -- Logo (se sube desde configuración)
    150, 80, 1,                    -- Tamaño logo y mostrar en factura
    'A4', 'FAC-', 10.0,          -- Formato factura, prefijo, IVA
    1,                             -- Activo
    CURRENT_DATE                   -- Fecha creación
);

-- ===============================================
-- TABLA DE CLIENTES
-- ===============================================
CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    cedula TEXT UNIQUE,
    telefono TEXT,
    email TEXT,
    direccion TEXT,
    regimen_turismo BOOLEAN DEFAULT 0,
    fecha_registro DATE DEFAULT CURRENT_DATE,
    ultima_visita DATE,
    total_compras DECIMAL(12,2) DEFAULT 0,
    servicios_realizados INTEGER DEFAULT 0,
    activo BOOLEAN DEFAULT 1
);

-- Clientes de ejemplo (PARA PROBAR BÚSQUEDA EN VENTAS)
INSERT INTO clientes (nombre, cedula, telefono, email, regimen_turismo) VALUES
('María González', '1.234.567', '0981-123456', 'maria.gonzalez@email.com', 0),
('Carlos Mendoza', '2.345.678', '0985-234567', 'carlos.mendoza@email.com', 0),
('Ana Rodríguez', '3.456.789', '0976-345678', 'ana.rodriguez@turismo.gov.py', 1),
('Roberto Silva', '4.567.890', '0971-456789', NULL, 0),
('Lucia Benítez', '5.678.901', '0982-567890', NULL, 1),
('Pedro Ramírez', '6.789.012', '0983-678901', 'pedro.ramirez@email.com', 0),
('Carmen Torres', '7.890.123', '0984-789012', 'carmen.torres@hotel.com.py', 1),
('Diego Morales', '8.901.234', '0975-890123', NULL, 0),
('Elena Vázquez', '9.012.345', '0987-901234', 'elena.vazquez@turismo.py', 1),
('Fernando López', '1.023.456', '0988-012345', 'fernando.lopez@email.com', 0);

-- ===============================================
-- TABLA DE SERVICIOS (PREDEFINIDOS LAVADERO)
-- ===============================================
CREATE TABLE servicios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    precio_auto DECIMAL(10,2) DEFAULT 0,
    precio_suv DECIMAL(10,2) DEFAULT 0,
    precio_camioneta DECIMAL(10,2) DEFAULT 0,
    precio_moto DECIMAL(10,2) DEFAULT 0,
    precio_furgoneta DECIMAL(10,2) DEFAULT 0,
    duracion INTEGER DEFAULT 30,  -- minutos
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);

-- Servicios predefinidos del lavadero
INSERT INTO servicios (nombre, descripcion, precio_auto, precio_suv, precio_camioneta, precio_moto, precio_furgoneta, duracion) VALUES
('Lavado Básico', 'Lavado exterior básico con shampoo y enjuague', 25000, 35000, 40000, 15000, 45000, 30),
('Lavado Full Detail', 'Lavado completo exterior e interior con aspirado', 35000, 45000, 50000, 25000, 55000, 60),
('Pulido', 'Pulido profesional de carrocería', 60000, 80000, 90000, 40000, 95000, 120),
('Inyección', 'Inyección de tapizados y limpieza profunda', 40000, 50000, 55000, 30000, 60000, 90),
('Aspirado', 'Aspirado completo interior del vehículo', 15000, 20000, 25000, 10000, 25000, 20),
('Tratamiento Anti-Hongos', 'Tratamiento especializado contra hongos y bacterias', 40000, 50000, 55000, 30000, 60000, 45),
('Paquete Turismo', 'Paquete completo especial para turistas', 60000, 75000, 85000, 45000, 90000, 90),
('Encerado Premium', 'Encerado de alta gama con protección UV', 50000, 65000, 75000, 35000, 80000, 75),
('Limpieza de Motor', 'Lavado y desengrase del motor', 30000, 40000, 45000, 20000, 50000, 45),
('Pulido de Faros', 'Restauración y pulido de faros opacos', 25000, 25000, 25000, 15000, 25000, 30);

-- ===============================================
-- TABLA DE PRODUCTOS/INVENTARIO
-- ===============================================
CREATE TABLE productos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    categoria TEXT,
    stock_actual DECIMAL(10,3) DEFAULT 0,
    stock_minimo DECIMAL(10,3) DEFAULT 0,
    stock_maximo DECIMAL(10,3) DEFAULT 0,
    unidad TEXT,
    costo_unitario DECIMAL(10,2) DEFAULT 0,
    precio_venta DECIMAL(10,2) DEFAULT 0,
    proveedor TEXT,
    ubicacion TEXT,
    lote TEXT,
    fecha_vencimiento DATE,
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    ultima_actualizacion DATE DEFAULT CURRENT_DATE
);

-- Productos predefinidos para lavadero
INSERT INTO productos (nombre, categoria, stock_actual, stock_minimo, stock_maximo, unidad, costo_unitario, precio_venta, proveedor, ubicacion) VALUES
('Shampoo para Autos', 'Limpieza', 5, 10, 50, 'litros', 25000, 35000, 'AutoLimpieza S.A.', 'Estante A-1'),
('Cera Líquida Premium', 'Protección', 2, 8, 30, 'litros', 35000, 50000, 'AutoLimpieza S.A.', 'Estante A-2'),
('Paños de Microfibra', 'Herramientas', 12, 20, 100, 'unidades', 5000, 8000, 'Textiles del Este', 'Estante B-1'),
('Aromatizante Auto', 'Accesorios', 25, 15, 80, 'unidades', 3000, 5000, 'Fragancias Paraguay', 'Estante C-1'),
('Desinfectante Multi-uso', 'Limpieza', 8, 15, 40, 'litros', 18000, 28000, 'Químicos Paraguay', 'Estante A-3'),
('Aspiradora Líquida', 'Limpieza', 3, 5, 20, 'litros', 22000, 32000, 'AutoLimpieza S.A.', 'Estante A-4'),
('Protector de Plásticos', 'Protección', 6, 10, 25, 'litros', 28000, 40000, 'Químicos Paraguay', 'Estante B-2'),
('Limpiador de Llantas', 'Limpieza', 4, 8, 30, 'litros', 15000, 25000, 'AutoLimpieza S.A.', 'Estante C-2'),
('Toallas Absorbentes', 'Herramientas', 15, 25, 80, 'unidades', 8000, 12000, 'Textiles del Este', 'Estante B-3'),
('Cepillos de Detalle', 'Herramientas', 8, 15, 50, 'unidades', 12000, 18000, 'Herramientas Pro', 'Estante C-3');

-- ===============================================
-- TABLA DE VENTAS
-- ===============================================
CREATE TABLE ventas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    numero_factura TEXT UNIQUE NOT NULL,
    cliente_id INTEGER,
    fecha DATE DEFAULT CURRENT_DATE,
    hora TIME DEFAULT CURRENT_TIME,
    subtotal DECIMAL(12,2) NOT NULL,
    iva DECIMAL(12,2) DEFAULT 0,
    total DECIMAL(12,2) NOT NULL,
    metodo_pago TEXT,
    regimen_turismo BOOLEAN DEFAULT 0,
    estado TEXT DEFAULT 'Completado',
    usuario TEXT DEFAULT 'admin',
    observaciones TEXT,
    FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);

-- ===============================================
-- TABLA DE GASTOS (MÓDULO COMPLETO)
-- ===============================================
CREATE TABLE gastos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fecha DATE DEFAULT CURRENT_DATE,
    hora TIME DEFAULT CURRENT_TIME,
    concepto TEXT NOT NULL,
    categoria TEXT NOT NULL CHECK (categoria IN ('Insumos', 'Mantenimiento', 'Servicios', 'Nomina', 'Combustible', 'Marketing', 'Otros')),
    monto DECIMAL(12,2) NOT NULL,
    metodo_pago TEXT CHECK (metodo_pago IN ('Efectivo', 'Tarjeta', 'Transferencia', 'Cheque')),
    proveedor TEXT,
    numero_factura TEXT,
    observaciones TEXT,
    archivo_recibo TEXT,  -- Ruta archivo escaneado
    aprobado BOOLEAN DEFAULT 0,
    usuario TEXT DEFAULT 'admin'
);

-- Gastos de ejemplo
INSERT INTO gastos (concepto, categoria, monto, metodo_pago, proveedor, numero_factura, observaciones, aprobado) VALUES
('Compra shampoo para autos - Stock mensual', 'Insumos', 150000, 'Transferencia', 'AutoLimpieza S.A.', 'F-001234', 'Pedido mensual de insumos básicos', 1),
('Reparación aspiradora industrial', 'Mantenimiento', 320000, 'Efectivo', 'TecnoService', 'F-005678', 'Cambio de motor y filtros de aspiradora principal', 1),
('Factura luz eléctrica enero', 'Servicios', 450000, 'Transferencia', 'ANDE', 'FAC-789456', 'Consumo eléctrico del mes de enero 2024', 1),
('Salario empleado Juan Pérez', 'Nomina', 2200000, 'Transferencia', NULL, NULL, 'Salario enero 2024 + aguinaldo proporcional', 1),
('Combustible generador backup', 'Combustible', 180000, 'Efectivo', 'Estación Shell', 'TIC-987654', '40 litros diésel para generador de emergencia', 1),
('Campaña Facebook Ads enero', 'Marketing', 200000, 'Tarjeta', 'Meta Platforms', 'FB-456789', 'Publicidad digital redes sociales mes enero', 1),
('Compra cera líquida premium', 'Insumos', 280000, 'Transferencia', 'AutoLimpieza S.A.', 'F-002345', 'Stock cera para servicios premium', 0),
('Mantenimiento bomba agua', 'Mantenimiento', 150000, 'Efectivo', 'Bombas Paraguay', 'MAN-123456', 'Revisión y cambio filtros bomba principal', 0);

-- ===============================================
-- TABLA DE USUARIOS
-- ===============================================
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    rol TEXT DEFAULT 'admin',
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    ultimo_acceso DATETIME
);

-- Usuario administrador por defecto (CAMBIAR CONTRASEÑA)
INSERT INTO usuarios (nombre, password_hash, rol) VALUES 
('admin', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');

-- ===============================================
-- CONFIGURACIÓN DEL SISTEMA
-- ===============================================
CREATE TABLE configuracion_sistema (
    clave TEXT PRIMARY KEY,
    valor TEXT,
    descripcion TEXT,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO configuracion_sistema (clave, valor, descripcion) VALUES
('backup_automatico', 'true', 'Activar backup automático nocturno'),
('backup_hora', '02:00', 'Hora del backup automático (formato HH:MM)'),
('backup_retencion_dias', '30', 'Días de retención de archivos backup'),
('impresora_defecto', 'HP LaserJet Pro', 'Impresora predeterminada del sistema'),
('moneda', 'PYG', 'Código de moneda (Guaraníes Paraguay)'),
('version_sistema', '1.0.0', 'Versión actual del sistema 1SOLUTION'),
('ultimo_backup', '', 'Fecha y hora del último backup realizado'),
('alertas_activas', 'true', 'Activar alertas automáticas del sistema'),
('notificaciones_windows', 'true', 'Mostrar notificaciones de Windows'),
('idioma', 'es-PY', 'Idioma del sistema (Español Paraguay)');

-- ===============================================
-- ÍNDICES PARA OPTIMIZACIÓN
-- ===============================================
CREATE INDEX idx_clientes_cedula ON clientes(cedula);
CREATE INDEX idx_clientes_regimen ON clientes(regimen_turismo);
CREATE INDEX idx_clientes_activo ON clientes(activo);
CREATE INDEX idx_ventas_fecha ON ventas(fecha);
CREATE INDEX idx_ventas_cliente ON ventas(cliente_id);
CREATE INDEX idx_ventas_numero ON ventas(numero_factura);
CREATE INDEX idx_gastos_fecha ON gastos(fecha);
CREATE INDEX idx_gastos_categoria ON gastos(categoria);
CREATE INDEX idx_gastos_aprobado ON gastos(aprobado);

-- ===============================================
-- VISTAS PARA REPORTES
-- ===============================================

-- Vista para alertas de timbrado
CREATE VIEW vista_alertas_timbrado AS
SELECT 
    e.timbrado_numero,
    e.timbrado_vencimiento,
    e.timbrado_limite,
    e.timbrado_usado,
    (e.timbrado_limite - e.timbrado_usado) AS facturas_restantes,
    CAST((julianday(e.timbrado_vencimiento) - julianday('now')) AS INTEGER) AS dias_para_vencer,
    ROUND(((e.timbrado_usado * 1.0) / e.timbrado_limite * 100), 2) AS porcentaje_usado,
    CASE 
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= 0 OR (e.timbrado_limite - e.timbrado_usado) <= 0 THEN 'CRITICO'
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= 10 OR (e.timbrado_limite - e.timbrado_usado) <= 20 THEN 'URGENTE'
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= e.timbrado_alerta_dias OR (e.timbrado_limite - e.timbrado_usado) <= e.timbrado_alerta_cantidad THEN 'ALERTA'
        ELSE 'NORMAL'
    END AS nivel_alerta
FROM empresa e WHERE e.id = 1;

-- Vista para productos con stock bajo
CREATE VIEW vista_productos_stock_bajo AS
SELECT 
    p.id,
    p.nombre,
    p.categoria,
    p.stock_actual,
    p.stock_minimo,
    p.proveedor,
    CASE 
        WHEN p.stock_actual = 0 THEN 'AGOTADO'
        WHEN p.stock_actual <= p.stock_minimo THEN 'CRITICO'
        WHEN p.stock_actual <= (p.stock_minimo * 1.5) THEN 'BAJO'
        ELSE 'NORMAL'
    END AS estado_stock
FROM productos p 
WHERE p.activo = 1 
ORDER BY p.stock_actual ASC, p.nombre ASC;

-- Vista para gastos por categoría
CREATE VIEW vista_gastos_categoria AS
SELECT 
    g.categoria,
    COUNT(*) as total_gastos,
    SUM(g.monto) as total_monto,
    SUM(CASE WHEN g.aprobado = 1 THEN g.monto ELSE 0 END) as monto_aprobado,
    SUM(CASE WHEN g.aprobado = 0 THEN g.monto ELSE 0 END) as monto_pendiente,
    AVG(g.monto) as promedio_gasto
FROM gastos g 
GROUP BY g.categoria
ORDER BY total_monto DESC;

-- ===============================================
-- TRIGGERS PARA AUTOMATIZACIÓN
-- ===============================================

-- Trigger: Incrementar contador timbrado con cada venta
CREATE TRIGGER incrementar_timbrado
AFTER INSERT ON ventas
BEGIN
    UPDATE empresa 
    SET timbrado_usado = timbrado_usado + 1 
    WHERE id = 1;
END;

-- Trigger: Actualizar estadísticas del cliente
CREATE TRIGGER actualizar_cliente_stats
AFTER INSERT ON ventas
BEGIN
    UPDATE clientes 
    SET ultima_visita = NEW.fecha,
        total_compras = total_compras + NEW.total,
        servicios_realizados = servicios_realizados + 1
    WHERE id = NEW.cliente_id;
END;

-- ===============================================
-- DATOS INICIALES DE PRUEBA
-- ===============================================

-- Ventas de ejemplo para demostración
INSERT INTO ventas (numero_factura, cliente_id, fecha, hora, subtotal, iva, total, metodo_pago, regimen_turismo, estado) VALUES
('FAC-000001', 1, '2024-01-15', '10:30:00', 65000, 6500, 71500, 'Tarjeta', 0, 'Completado'),
('FAC-000002', 2, '2024-01-15', '11:15:00', 40000, 4000, 44000, 'Efectivo', 0, 'Completado'),
('FAC-000003', 3, '2024-01-15', '12:00:00', 180000, 0, 180000, 'Transferencia', 1, 'Completado'),
('FAC-000004', 4, '2024-01-15', '12:30:00', 10000, 1000, 11000, 'Efectivo', 0, 'Completado'),
('FAC-000005', 5, '2024-01-15', '13:45:00', 95000, 0, 95000, 'Crédito', 1, 'Pendiente');

-- Actualizar contador de timbrado
UPDATE empresa SET timbrado_usado = 5 WHERE id = 1;

-- ===============================================
-- CONFIGURACIONES ADICIONALES
-- ===============================================

-- Configuración de alertas
INSERT INTO configuracion_sistema (clave, valor, descripcion) VALUES
('timbrado_check_interval', '3600', 'Intervalo verificación timbrado (segundos)'),
('stock_check_interval', '1800', 'Intervalo verificación stock (segundos)'),
('backup_check_interval', '86400', 'Intervalo verificación backup (segundos)'),
('max_file_size_logo', '5242880', 'Tamaño máximo archivo logo (5MB)'),
('formatos_logo_permitidos', 'png,jpg,jpeg,gif', 'Formatos de imagen permitidos para logo'),
('ruta_logos', 'Logos\\', 'Ruta relativa para almacenar logos'),
('ruta_facturas', 'Facturas\\', 'Ruta relativa para PDFs de facturas'),
('ruta_backups', 'Backups\\', 'Ruta relativa para archivos backup'),
('email_alertas', '', 'Email para envío de alertas críticas (opcional)'),
('telefono_alertas', '', 'Teléfono para SMS alertas críticas (opcional)');

-- ===============================================
-- FINALIZACIÓN
-- ===============================================

-- Verificar integridad
PRAGMA integrity_check;

-- Estadísticas finales
SELECT 'Empresa' as tabla, COUNT(*) as registros FROM empresa
UNION ALL
SELECT 'Clientes' as tabla, COUNT(*) as registros FROM clientes  
UNION ALL
SELECT 'Servicios' as tabla, COUNT(*) as registros FROM servicios
UNION ALL
SELECT 'Productos' as tabla, COUNT(*) as registros FROM productos
UNION ALL
SELECT 'Gastos' as tabla, COUNT(*) as registros FROM gastos
UNION ALL
SELECT 'Usuarios' as tabla, COUNT(*) as registros FROM usuarios
UNION ALL
SELECT 'Configuración' as tabla, COUNT(*) as registros FROM configuracion_sistema;

-- ===============================================
-- BASE DE DATOS 1SOLUTION CREADA EXITOSAMENTE
-- Versión: 1.0.0
-- Fecha: 2024-01-15
-- Para: Sistema Punto de Venta Lavadero Paraguay
-- ===============================================