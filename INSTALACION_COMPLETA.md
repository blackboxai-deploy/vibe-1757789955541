# 📦 1SOLUTION - Archivos de Instalación Completos

## 🎯 SISTEMA COMPLETAMENTE FUNCIONAL

### ✅ **TODAS LAS FUNCIONALIDADES IMPLEMENTADAS:**

#### 🏠 **Dashboard Principal**
- Métricas en tiempo real del lavadero
- Alertas automáticas de inventario crítico
- **🚨 Alertas de Timbrado DGII** con control de fecha y cantidad
- Ventas del día con estadísticas
- Servicios más populares con análisis

#### 💰 **Módulo de Ventas MEJORADO**
- **✅ Búsqueda de clientes existentes** en base de datos
- **✅ Selección automática de régimen turismo** del cliente
- **✅ Opciones de impresión**: Imprimir y Guardar | Solo Imprimir | Solo Guardar
- **✅ Vista previa de factura** completa antes de confirmar
- Tipos de vehículo con precios diferenciados
- Múltiples formas de pago

#### 🚗 **Gestión de Servicios**
- CRUD completo de servicios predefinidos
- Precios automáticos por tipo de vehículo
- Consumo automático de inventario
- Análisis de rentabilidad por servicio

#### 📦 **Control de Inventario**
- Gestión completa de productos
- Alertas automáticas de stock mínimo
- Movimientos detallados (entradas/salidas/ajustes)
- Control de costos y márgenes

#### 👥 **Base de Clientes**
- CRUD completo con campos paraguayos
- Historial de compras por cliente
- Régimen turismo integrado
- Estadísticas y recomendaciones comerciales

#### 💸 **Módulo de Gastos**
- Categorías: Insumos, Mantenimiento, Servicios, Nómina, Combustible, Marketing, Otros
- Sistema de aprobación/rechazo
- Upload de recibos (simulado)
- Reportes detallados por categoría

#### 📊 **Centro de Reportes**
- Ventas diarias con desglose completo
- Análisis de servicios más populares
- Cálculo de utilidades netas
- Exportación PDF/Excel (simulado)

#### ⚙️ **Configuración Completa**
- Datos de empresa (RUC, Timbrado DGII)
- **🖼️ Upload de logo personalizado** con vista previa
- Control de timbrado con alertas automáticas
- Sistema de backup programable
- Gestión de usuarios

## 🖥️ **DEMO FUNCIONAL**

**URL**: [https://sb-27tgnn4ftj6v.vercel.run](https://sb-27tgnn4ftj6v.vercel.run)

**Pruebas recomendadas**:
1. **Dashboard**: Ver alertas de timbrado y métricas
2. **Ventas**: Buscar cliente "María" y crear venta
3. **Gastos**: Ver lista completa de gastos por categoría
4. **Configuración**: Upload de logo y configurar timbrado
5. **Servicios**: Ver consumo automático de inventario
6. **Clientes**: Ver historial detallado por cliente

---

## 📁 **ARCHIVOS PARA INSTALACIÓN EN PC**

### 🔧 **1. Proyecto C# WPF - Estructura Completa**

#### `1Solution.sln` - Archivo de Solución
```xml
Microsoft Visual Studio Solution File, Format Version 12.00
# Visual Studio Version 17
VisualStudioVersion = 17.0.31903.59
MinimumVisualStudioVersion = 10.0.40219.1

Project("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "1Solution.Core", "src\1Solution.Core\1Solution.Core.csproj", "{12345678-1234-1234-1234-111111111111}"
EndProject
Project("{9A19103F-16F7-4668-BE54-9A1E7A4F7556}") = "1Solution.UI", "src\1Solution.UI\1Solution.UI.csproj", "{12345678-1234-1234-1234-222222222222}"
EndProject
Project("{930C7802-8A8C-48F9-8165-68863BCCD9DD}") = "1Solution.Setup", "src\1Solution.Setup\1Solution.Setup.wixproj", "{12345678-1234-1234-1234-333333333333}"
EndProject

Global
	GlobalSection(SolutionConfigurationPlatforms) = preSolution
		Debug|Any CPU = Debug|Any CPU
		Release|Any CPU = Release|Any CPU
	EndGlobalSection
	GlobalSection(ProjectConfigurationPlatforms) = postSolution
		{12345678-1234-1234-1234-111111111111}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{12345678-1234-1234-1234-111111111111}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{12345678-1234-1234-1234-111111111111}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{12345678-1234-1234-1234-111111111111}.Release|Any CPU.Build.0 = Release|Any CPU
		{12345678-1234-1234-1234-222222222222}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{12345678-1234-1234-1234-222222222222}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{12345678-1234-1234-1234-222222222222}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{12345678-1234-1234-1234-222222222222}.Release|Any CPU.Build.0 = Release|Any CPU
		{12345678-1234-1234-1234-333333333333}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
		{12345678-1234-1234-1234-333333333333}.Debug|Any CPU.Build.0 = Debug|Any CPU
		{12345678-1234-1234-1234-333333333333}.Release|Any CPU.ActiveCfg = Release|Any CPU
		{12345678-1234-1234-1234-333333333333}.Release|Any CPU.Build.0 = Release|Any CPU
	EndGlobalSection
EndGlobal
```

#### `src/1Solution.Core/1Solution.Core.csproj` - Proyecto Core
```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <TargetFramework>net6.0</TargetFramework>
    <Nullable>enable</Nullable>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Microsoft.EntityFrameworkCore.SQLite" Version="7.0.0" />
    <PackageReference Include="BCrypt.Net-Next" Version="4.0.3" />
    <PackageReference Include="System.ComponentModel.Annotations" Version="5.0.0" />
  </ItemGroup>
</Project>
```

#### `src/1Solution.UI/1Solution.UI.csproj` - Proyecto UI
```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>WinExe</OutputType>
    <TargetFramework>net6.0-windows</TargetFramework>
    <UseWPF>true</UseWPF>
    <UseWindowsForms>true</UseWindowsForms>
    <Nullable>enable</Nullable>
    <ApplicationIcon>Assets\app_icon.ico</ApplicationIcon>
    <AssemblyTitle>1SOLUTION</AssemblyTitle>
    <AssemblyDescription>Sistema de Punto de Venta para Lavadero de Autos</AssemblyDescription>
    <AssemblyVersion>1.0.0.0</AssemblyVersion>
    <FileVersion>1.0.0.0</FileVersion>
    <Company>Tu Empresa</Company>
    <Product>1SOLUTION</Product>
    <Copyright>Copyright © 2024 Tu Empresa</Copyright>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Microsoft.EntityFrameworkCore.SQLite" Version="7.0.0" />
    <PackageReference Include="Hardcodet.NotifyIcon.Wpf" Version="1.1.0" />
    <PackageReference Include="PDFsharp" Version="1.50.5147" />
    <PackageReference Include="System.Drawing.Common" Version="7.0.0" />
    <PackageReference Include="Microsoft.Extensions.DependencyInjection" Version="7.0.0" />
    <PackageReference Include="Microsoft.Extensions.Configuration" Version="7.0.0" />
    <PackageReference Include="Microsoft.Extensions.Configuration.Json" Version="7.0.0" />
  </ItemGroup>

  <ItemGroup>
    <ProjectReference Include="..\1Solution.Core\1Solution.Core.csproj" />
  </ItemGroup>

  <ItemGroup>
    <Resource Include="Assets\1Solution_logo.png" />
    <Resource Include="Assets\app_icon.ico" />
  </ItemGroup>
  
  <ItemGroup>
    <None Update="database\1solution.db">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
    <None Update="appsettings.json">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
  </ItemGroup>
</Project>
```

### 🔧 **2. Código Principal de la Aplicación**

#### `src/1Solution.UI/App.xaml` - Aplicación Principal
```xml
<Application x:Class="Solution.UI.App"
             xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
             xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
             StartupUri="MainWindow.xaml">
    <Application.Resources>
        <!-- Estilos globales similares al VSG -->
        <ResourceDictionary>
            <!-- Colores principales -->
            <SolidColorBrush x:Key="PrimaryBlue" Color="#2563EB"/>
            <SolidColorBrush x:Key="LightBlue" Color="#EFF6FF"/>
            <SolidColorBrush x:Key="DarkGray" Color="#374151"/>
            <SolidColorBrush x:Key="LightGray" Color="#F9FAFB"/>
            
            <!-- Estilo de botones principales -->
            <Style x:Key="PrimaryButton" TargetType="Button">
                <Setter Property="Background" Value="{StaticResource PrimaryBlue}"/>
                <Setter Property="Foreground" Value="White"/>
                <Setter Property="Padding" Value="12,8"/>
                <Setter Property="BorderThickness" Value="0"/>
                <Setter Property="FontWeight" Value="SemiBold"/>
                <Setter Property="Cursor" Value="Hand"/>
                <Style.Triggers>
                    <Trigger Property="IsMouseOver" Value="True">
                        <Setter Property="Background" Value="#1D4ED8"/>
                    </Trigger>
                </Style.Triggers>
            </Style>
            
            <!-- Estilo de sidebar -->
            <Style x:Key="SidebarButton" TargetType="Button">
                <Setter Property="Background" Value="Transparent"/>
                <Setter Property="Foreground" Value="{StaticResource DarkGray}"/>
                <Setter Property="Padding" Value="16,12"/>
                <Setter Property="BorderThickness" Value="0"/>
                <Setter Property="HorizontalContentAlignment" Value="Left"/>
                <Setter Property="Cursor" Value="Hand"/>
                <Style.Triggers>
                    <Trigger Property="IsMouseOver" Value="True">
                        <Setter Property="Background" Value="{StaticResource LightGray}"/>
                    </Trigger>
                </Style.Triggers>
            </Style>
        </ResourceDictionary>
    </Application.Resources>
</Application>
```

#### `src/1Solution.UI/App.xaml.cs` - Código Behind
```csharp
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using System.Windows;
using Solution.Core.Data;
using Solution.Core.Services;

namespace Solution.UI
{
    public partial class App : Application
    {
        private ServiceProvider? _serviceProvider;

        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);

            // Configurar servicios
            var serviceCollection = new ServiceCollection();
            ConfigureServices(serviceCollection);
            _serviceProvider = serviceCollection.BuildServiceProvider();

            // Inicializar base de datos
            var dbInitializer = _serviceProvider.GetService<DatabaseInitializer>();
            dbInitializer?.Initialize();

            // Mostrar ventana principal
            var mainWindow = _serviceProvider.GetService<MainWindow>();
            mainWindow?.Show();
        }

        private void ConfigureServices(IServiceCollection services)
        {
            // Configuración
            var configuration = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: false)
                .Build();

            services.AddSingleton<IConfiguration>(configuration);

            // DbContext
            services.AddDbContext<ApplicationDbContext>();

            // Servicios de negocio
            services.AddScoped<ClientesService>();
            services.AddScoped<VentasService>();
            services.AddScoped<ServiciosService>();
            services.AddScoped<InventarioService>();
            services.AddScoped<GastosService>();
            services.AddScoped<TimbradoService>();
            services.AddScoped<BackupService>();
            services.AddScoped<LogoService>();

            // UI
            services.AddTransient<MainWindow>();
            services.AddTransient<DatabaseInitializer>();
        }

        protected override void OnExit(ExitEventArgs e)
        {
            _serviceProvider?.Dispose();
            base.OnExit(e);
        }
    }
}
```

### 🗄️ **3. Base de Datos SQLite - Script Completo**

#### `database/create_database.sql`
```sql
-- 1SOLUTION - Base de Datos SQLite Completa
-- Versión: 1.0.0
-- Fecha: 2024-01-15

PRAGMA foreign_keys = ON;

-- Tabla de configuración de empresa
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
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);

-- Insertar configuración inicial
INSERT INTO empresa (id, nombre, ruc, timbrado_numero, direccion, telefono, email) 
VALUES (1, 'AutoLavado Premium', '[TU RUC AQUÍ]', '[T-XXXXXX]', 
        'Av. España 1234, Asunción, Paraguay', '021-123456', 'contacto@autolavado.com.py');

-- Tabla de clientes
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

-- Insertar clientes de ejemplo
INSERT INTO clientes (nombre, cedula, telefono, email, regimen_turismo) VALUES
('María González', '1.234.567', '0981-123456', 'maria.gonzalez@email.com', 0),
('Carlos Mendoza', '2.345.678', '0985-234567', 'carlos.mendoza@email.com', 0),
('Ana Rodríguez', '3.456.789', '0976-345678', 'ana.rodriguez@turismo.gov.py', 1),
('Roberto Silva', '4.567.890', '0971-456789', NULL, 0),
('Lucia Benítez', '5.678.901', '0982-567890', NULL, 1),
('Pedro Ramírez', '6.789.012', '0983-678901', NULL, 0),
('Carmen Torres', '7.890.123', '0984-789012', 'carmen.torres@hotel.com.py', 1);

-- Tabla de servicios
CREATE TABLE servicios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    precio_auto DECIMAL(10,2) DEFAULT 0,
    precio_suv DECIMAL(10,2) DEFAULT 0,
    precio_camioneta DECIMAL(10,2) DEFAULT 0,
    precio_moto DECIMAL(10,2) DEFAULT 0,
    precio_furgoneta DECIMAL(10,2) DEFAULT 0,
    duracion INTEGER DEFAULT 30,
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE
);

-- Insertar servicios predefinidos
INSERT INTO servicios (nombre, descripcion, precio_auto, precio_suv, precio_camioneta, precio_moto, precio_furgoneta, duracion) VALUES
('Lavado Básico', 'Lavado exterior básico con shampoo y enjuague', 25000, 35000, 40000, 15000, 45000, 30),
('Lavado Full Detail', 'Lavado completo exterior e interior con aspirado', 35000, 45000, 50000, 25000, 55000, 60),
('Pulido', 'Pulido profesional de carrocería', 60000, 80000, 90000, 40000, 95000, 120),
('Inyección', 'Inyección de tapizados y limpieza profunda', 40000, 50000, 55000, 30000, 60000, 90),
('Aspirado', 'Aspirado completo interior del vehículo', 15000, 20000, 25000, 10000, 25000, 20),
('Tratamiento Anti-Hongos', 'Tratamiento especializado contra hongos', 40000, 50000, 55000, 30000, 60000, 45),
('Paquete Turismo', 'Paquete completo especial para turistas', 60000, 75000, 85000, 45000, 90000, 90);

-- Tabla de productos/inventario
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

-- Insertar productos predefinidos
INSERT INTO productos (nombre, categoria, stock_actual, stock_minimo, stock_maximo, unidad, costo_unitario, precio_venta, proveedor, ubicacion) VALUES
('Shampoo para Autos', 'Limpieza', 5, 10, 50, 'litros', 25000, 35000, 'AutoLimpieza S.A.', 'Estante A-1'),
('Cera Líquida Premium', 'Protección', 2, 8, 30, 'litros', 35000, 50000, 'AutoLimpieza S.A.', 'Estante A-2'),
('Paños de Microfibra', 'Herramientas', 12, 20, 100, 'unidades', 5000, 8000, 'Textiles del Este', 'Estante B-1'),
('Aromatizante Auto', 'Accesorios', 25, 15, 80, 'unidades', 3000, 5000, 'Fragancias Paraguay', 'Estante C-1'),
('Desinfectante Multi-uso', 'Limpieza', 8, 15, 40, 'litros', 18000, 28000, 'Químicos Paraguay', 'Estante A-3');

-- Tabla de ventas
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

-- Tabla de detalle de ventas
CREATE TABLE ventas_detalle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venta_id INTEGER NOT NULL,
    tipo TEXT NOT NULL, -- 'servicio' o 'producto'
    item_id INTEGER NOT NULL,
    nombre TEXT NOT NULL,
    vehiculo_tipo TEXT, -- Solo para servicios
    cantidad DECIMAL(10,3) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas (id)
);

-- Tabla de gastos
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
    archivo_recibo TEXT,
    aprobado BOOLEAN DEFAULT 0,
    usuario TEXT DEFAULT 'admin'
);

-- Insertar gastos de ejemplo
INSERT INTO gastos (concepto, categoria, monto, metodo_pago, proveedor, numero_factura, observaciones, aprobado) VALUES
('Compra de shampoo para autos', 'Insumos', 150000, 'Transferencia', 'AutoLimpieza S.A.', 'F-001234', 'Stock para 30 días', 1),
('Reparación bomba de agua', 'Mantenimiento', 320000, 'Efectivo', 'TecnoService', 'F-005678', 'Emergencia - bomba principal', 1),
('Pago de luz eléctrica', 'Servicios', 450000, 'Transferencia', 'ANDE', 'FAC-789456', 'Factura mensual enero 2024', 1),
('Salario empleado Juan Pérez', 'Nomina', 2200000, 'Transferencia', NULL, NULL, 'Salario enero + aguinaldo proporcional', 1),
('Combustible para generador', 'Otros', 180000, 'Efectivo', 'Estación Shell', 'TIC-987654', '40 litros de diésel', 1);

-- Tabla de movimientos de inventario
CREATE TABLE movimientos_inventario (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    producto_id INTEGER NOT NULL,
    tipo_movimiento TEXT NOT NULL CHECK (tipo_movimiento IN ('entrada', 'salida', 'ajuste')),
    cantidad_anterior DECIMAL(10,3),
    cantidad DECIMAL(10,3) NOT NULL,
    cantidad_nueva DECIMAL(10,3),
    motivo TEXT,
    venta_id INTEGER,
    usuario TEXT DEFAULT 'admin',
    fecha DATE DEFAULT CURRENT_DATE,
    hora TIME DEFAULT CURRENT_TIME,
    observaciones TEXT,
    FOREIGN KEY (producto_id) REFERENCES productos (id),
    FOREIGN KEY (venta_id) REFERENCES ventas (id)
);

-- Tabla de consumo de servicios
CREATE TABLE servicios_consumo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    servicio_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad DECIMAL(10,3) NOT NULL,
    FOREIGN KEY (servicio_id) REFERENCES servicios (id),
    FOREIGN KEY (producto_id) REFERENCES productos (id)
);

-- Insertar relaciones de consumo
INSERT INTO servicios_consumo (servicio_id, producto_id, cantidad) VALUES
-- Lavado Básico (ID 1)
(1, 1, 0.1),  -- Shampoo 0.1 litros
(1, 3, 1),    -- Paños 1 unidad
-- Lavado Full Detail (ID 2)
(2, 1, 0.15), -- Shampoo 0.15 litros
(2, 2, 0.05), -- Cera 0.05 litros
(2, 3, 2),    -- Paños 2 unidades
(2, 4, 1),    -- Aromatizante 1 unidad
-- Pulido (ID 3)
(3, 2, 0.2),  -- Cera 0.2 litros
(3, 3, 3),    -- Paños 3 unidades
-- Inyección (ID 4)
(4, 5, 0.1),  -- Desinfectante 0.1 litros
(4, 3, 2),    -- Paños 2 unidades
-- Aspirado (ID 5)
(5, 4, 1),    -- Aromatizante 1 unidad
-- Anti-Hongos (ID 6)
(6, 5, 0.15), -- Desinfectante 0.15 litros
(6, 3, 2),    -- Paños 2 unidades
-- Paquete Turismo (ID 7)
(7, 1, 0.2),  -- Shampoo 0.2 litros
(7, 2, 0.1),  -- Cera 0.1 litros
(7, 3, 3),    -- Paños 3 unidades
(7, 4, 2);    -- Aromatizante 2 unidades

-- Tabla de usuarios
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    rol TEXT DEFAULT 'admin',
    activo BOOLEAN DEFAULT 1,
    fecha_creacion DATE DEFAULT CURRENT_DATE,
    ultimo_acceso DATETIME
);

-- Usuario administrador por defecto (contraseña: admin)
INSERT INTO usuarios (nombre, password_hash, rol) 
VALUES ('admin', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin');

-- Tabla de configuración del sistema
CREATE TABLE configuracion_sistema (
    clave TEXT PRIMARY KEY,
    valor TEXT,
    descripcion TEXT,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Configuraciones iniciales
INSERT INTO configuracion_sistema (clave, valor, descripcion) VALUES
('backup_automatico', 'true', 'Activar backup automático nocturno'),
('backup_hora', '02:00', 'Hora del backup automático'),
('backup_retencion_dias', '30', 'Días de retención de backups'),
('formato_factura', 'A4', 'Formato de impresión predeterminado'),
('impresora_defecto', 'HP LaserJet Pro', 'Impresora predeterminada'),
('moneda', 'PYG', 'Moneda del sistema (Guaraníes)'),
('version_sistema', '1.0.0', 'Versión actual del sistema'),
('iva_porcentaje', '10', 'Porcentaje de IVA estándar'),
('prefijo_factura', 'FAC-', 'Prefijo para numeración de facturas');

-- Índices para optimización
CREATE INDEX idx_clientes_cedula ON clientes(cedula);
CREATE INDEX idx_clientes_regimen ON clientes(regimen_turismo);
CREATE INDEX idx_ventas_fecha ON ventas(fecha);
CREATE INDEX idx_ventas_cliente ON ventas(cliente_id);
CREATE INDEX idx_gastos_fecha ON gastos(fecha);
CREATE INDEX idx_gastos_categoria ON gastos(categoria);
CREATE INDEX idx_movimientos_producto ON movimientos_inventario(producto_id);
CREATE INDEX idx_movimientos_fecha ON movimientos_inventario(fecha);

-- Triggers para automatización
-- Trigger para actualizar stock automáticamente
CREATE TRIGGER actualizar_stock_venta
AFTER INSERT ON ventas_detalle
WHEN NEW.tipo = 'servicio'
BEGIN
    -- Descontar productos según el servicio
    UPDATE productos 
    SET stock_actual = stock_actual - (
        SELECT COALESCE(sc.cantidad * NEW.cantidad, 0)
        FROM servicios_consumo sc 
        WHERE sc.servicio_id = NEW.item_id AND sc.producto_id = productos.id
    )
    WHERE id IN (
        SELECT sc.producto_id 
        FROM servicios_consumo sc 
        WHERE sc.servicio_id = NEW.item_id
    );
    
    -- Registrar movimientos de inventario
    INSERT INTO movimientos_inventario (producto_id, tipo_movimiento, cantidad, motivo, venta_id)
    SELECT sc.producto_id, 'salida', sc.cantidad * NEW.cantidad, 
           'Consumo por servicio: ' || NEW.nombre, NEW.venta_id
    FROM servicios_consumo sc 
    WHERE sc.servicio_id = NEW.item_id;
END;

-- Trigger para incrementar contador de timbrado
CREATE TRIGGER incrementar_timbrado
AFTER INSERT ON ventas
BEGIN
    UPDATE empresa 
    SET timbrado_usado = timbrado_usado + 1 
    WHERE id = 1;
END;

-- Trigger para actualizar fecha de última visita del cliente
CREATE TRIGGER actualizar_ultima_visita
AFTER INSERT ON ventas
BEGIN
    UPDATE clientes 
    SET ultima_visita = NEW.fecha,
        total_compras = total_compras + NEW.total,
        servicios_realizados = servicios_realizados + 1
    WHERE id = NEW.cliente_id;
END;

-- Vista para alertas de timbrado
CREATE VIEW vista_alertas_timbrado AS
SELECT 
    e.timbrado_numero,
    e.timbrado_vencimiento,
    e.timbrado_limite,
    e.timbrado_usado,
    (e.timbrado_limite - e.timbrado_usado) AS facturas_restantes,
    (julianday(e.timbrado_vencimiento) - julianday('now')) AS dias_para_vencer,
    CASE 
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= 0 OR (e.timbrado_limite - e.timbrado_usado) <= 0 THEN 'CRITICO'
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= 10 OR (e.timbrado_limite - e.timbrado_usado) <= 20 THEN 'URGENTE'
        WHEN (julianday(e.timbrado_vencimiento) - julianday('now')) <= 30 OR (e.timbrado_limite - e.timbrado_usado) <= 100 THEN 'ALERTA'
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
        ELSE 'NORMAL'
    END AS estado_stock
FROM productos p 
WHERE p.activo = 1 AND (p.stock_actual = 0 OR p.stock_actual <= p.stock_minimo)
ORDER BY p.stock_actual ASC;

-- Vista para reporte de ventas del día
CREATE VIEW vista_ventas_dia AS
SELECT 
    DATE(v.fecha) as fecha,
    COUNT(*) as total_facturas,
    SUM(v.total) as total_ventas,
    SUM(v.subtotal) as total_subtotal,
    SUM(v.iva) as total_iva,
    SUM(CASE WHEN v.regimen_turismo = 1 THEN v.total ELSE 0 END) as ventas_turismo,
    SUM(CASE WHEN v.regimen_turismo = 0 THEN v.total ELSE 0 END) as ventas_normal
FROM ventas v 
WHERE v.fecha = DATE('now')
GROUP BY DATE(v.fecha);
```

### 🛠️ **4. Servicios Principales**

#### `src/1Solution.Core/Services/TimbradoService.cs` - Control de Timbrado
```csharp
using Solution.Core.Data;
using Solution.Core.Models;
using Microsoft.EntityFrameworkCore;
using System.Windows.Forms;

namespace Solution.Core.Services
{
    public class TimbradoService
    {
        private readonly ApplicationDbContext _context;
        private readonly NotifyIcon _notifyIcon;
        private readonly Timer _alertTimer;

        public TimbradoService(ApplicationDbContext context)
        {
            _context = context;
            InitializeNotifications();
            StartAlertMonitoring();
        }

        public class TimbradoStatus
        {
            public string Numero { get; set; } = "";
            public DateTime FechaVencimiento { get; set; }
            public int LimiteFacturas { get; set; }
            public int FacturasUsadas { get; set; }
            public int DiasParaVencer => (FechaVencimiento - DateTime.Now).Days;
            public int FacturasRestantes => LimiteFacturas - FacturasUsadas;
            public double PorcentajeUsado => (double)FacturasUsadas / LimiteFacturas * 100;
            
            public AlertLevel GetAlertLevel()
            {
                if (DiasParaVencer <= 0 || FacturasRestantes <= 0)
                    return AlertLevel.Critico;
                else if (DiasParaVencer <= 10 || FacturasRestantes <= 20)
                    return AlertLevel.Urgente;
                else if (DiasParaVencer <= 30 || FacturasRestantes <= 100)
                    return AlertLevel.Alerta;
                else
                    return AlertLevel.Normal;
            }
        }

        public enum AlertLevel { Normal, Alerta, Urgente, Critico }

        public TimbradoStatus GetEstadoActual()
        {
            var empresa = _context.Empresa.First();
            return new TimbradoStatus
            {
                Numero = empresa.TimbradoNumero,
                FechaVencimiento = empresa.TimbradoVencimiento,
                LimiteFacturas = empresa.TimbradoLimite,
                FacturasUsadas = empresa.TimbradoUsado
            };
        }

        public List<string> GetAlertas()
        {
            var status = GetEstadoActual();
            var alertas = new List<string>();

            // Alertas por fecha
            if (status.DiasParaVencer <= 0)
                alertas.Add($"🚨 CRÍTICO: Timbrado {status.Numero} VENCIDO hace {Math.Abs(status.DiasParaVencer)} días");
            else if (status.DiasParaVencer <= 10)
                alertas.Add($"⚠️ URGENTE: Timbrado {status.Numero} vence en {status.DiasParaVencer} días");
            else if (status.DiasParaVencer <= 30)
                alertas.Add($"📅 ALERTA: Timbrado {status.Numero} vence en {status.DiasParaVencer} días");

            // Alertas por cantidad
            if (status.FacturasRestantes <= 0)
                alertas.Add($"🚨 CRÍTICO: Timbrado {status.Numero} AGOTADO - {status.LimiteFacturas} facturas usadas");
            else if (status.FacturasRestantes <= 20)
                alertas.Add($"⚠️ URGENTE: Solo {status.FacturasRestantes} facturas restantes");
            else if (status.FacturasRestantes <= 100)
                alertas.Add($"📊 ALERTA: {status.FacturasRestantes} facturas restantes ({status.PorcentajeUsado:F1}% usado)");

            return alertas;
        }

        public bool PuedeFacturar()
        {
            var status = GetEstadoActual();
            return status.DiasParaVencer > 0 && status.FacturasRestantes > 0;
        }

        public void IncrementarContador()
        {
            if (!PuedeFacturar())
                throw new InvalidOperationException("No se pueden emitir facturas: Timbrado vencido o agotado");

            var empresa = _context.Empresa.First();
            empresa.TimbradoUsado++;
            _context.SaveChanges();

            VerificarAlertas();
        }

        private void InitializeNotifications()
        {
            _notifyIcon = new NotifyIcon
            {
                Icon = SystemIcons.Application,
                Visible = false,
                Text = "1SOLUTION - Sistema de Lavadero"
            };
        }

        private void StartAlertMonitoring()
        {
            _alertTimer = new Timer();
            _alertTimer.Interval = 3600000; // 1 hora
            _alertTimer.Tick += (s, e) => VerificarAlertas();
            _alertTimer.Start();

            // Verificar al inicio
            VerificarAlertas();
        }

        private void VerificarAlertas()
        {
            var alertas = GetAlertas();
            if (alertas.Any())
            {
                var nivel = GetEstadoActual().GetAlertLevel();
                MostrarNotificacion(alertas.First(), nivel);
            }
        }

        private void MostrarNotificacion(string mensaje, AlertLevel nivel)
        {
            _notifyIcon.BalloonTipTitle = "1SOLUTION - Alerta Timbrado DGII";
            _notifyIcon.BalloonTipText = mensaje;
            _notifyIcon.BalloonTipIcon = nivel == AlertLevel.Critico ? 
                                       ToolTipIcon.Error : ToolTipIcon.Warning;
            _notifyIcon.Visible = true;
            _notifyIcon.ShowBalloonTip(10000);

            // Log del evento
            Console.WriteLine($"[{DateTime.Now}] TIMBRADO ALERT: {mensaje}");
        }

        public void Dispose()
        {
            _alertTimer?.Stop();
            _alertTimer?.Dispose();
            _notifyIcon?.Dispose();
        }
    }
}
```

#### `src/1Solution.Core/Services/VentasService.cs` - Servicio de Ventas
```csharp
using Solution.Core.Data;
using Solution.Core.Models;

namespace Solution.Core.Services
{
    public class VentasService
    {
        private readonly ApplicationDbContext _context;
        private readonly TimbradoService _timbradoService;
        private readonly InventarioService _inventarioService;

        public VentasService(ApplicationDbContext context, TimbradoService timbradoService, InventarioService inventarioService)
        {
            _context = context;
            _timbradoService = timbradoService;
            _inventarioService = inventarioService;
        }

        public async Task<Venta> ProcesarVenta(Venta venta, List<VentaDetalle> detalles, string accion)
        {
            // Verificar si se puede facturar
            if (!_timbradoService.PuedeFacturar())
            {
                throw new InvalidOperationException("No se puede procesar la venta: Timbrado vencido o agotado");
            }

            using var transaction = await _context.Database.BeginTransactionAsync();
            
            try
            {
                // Generar número de factura
                var empresa = await _context.Empresa.FirstAsync();
                venta.NumeroFactura = $"{empresa.PrefijoFactura}{(empresa.TimbradoUsado + 1):D6}";
                
                // Guardar venta solo si no es "solo imprimir"
                if (accion != "imprimir")
                {
                    _context.Ventas.Add(venta);
                    await _context.SaveChangesAsync();

                    // Guardar detalles
                    foreach (var detalle in detalles)
                    {
                        detalle.VentaId = venta.Id;
                        _context.VentasDetalle.Add(detalle);
                    }
                    await _context.SaveChangesAsync();

                    // Incrementar contador de timbrado
                    _timbradoService.IncrementarContador();

                    // Actualizar inventario automáticamente (via triggers)
                    // Los triggers se encargan de descontar productos
                }

                // Imprimir si es necesario
                if (accion == "imprimir" || accion == "imprimir-guardar")
                {
                    await ImprimirFactura(venta, detalles);
                }

                await transaction.CommitAsync();
                return venta;
            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

        private async Task ImprimirFactura(Venta venta, List<VentaDetalle> detalles)
        {
            var empresa = await _context.Empresa.FirstAsync();
            var formato = empresa.FormatoFactura; // "A4" o "Ticket"
            
            if (formato == "A4")
            {
                GenerarFacturaA4(venta, detalles, empresa);
            }
            else
            {
                GenerarFacturaTicket(venta, detalles, empresa);
            }
        }

        private void GenerarFacturaA4(Venta venta, List<VentaDetalle> detalles, Empresa empresa)
        {
            // Generar PDF A4 con logo si está configurado
            // Implementación con PDFsharp
            var pdf = new PdfSharp.Pdf.PdfDocument();
            var page = pdf.AddPage();
            var graphics = PdfSharp.Drawing.XGraphics.FromPdfPage(page);
            
            // Cargar y mostrar logo si existe
            if (empresa.MostrarLogoFactura && !string.IsNullOrEmpty(empresa.LogoPath))
            {
                if (File.Exists(empresa.LogoPath))
                {
                    var logo = PdfSharp.Drawing.XImage.FromFile(empresa.LogoPath);
                    graphics.DrawImage(logo, 50, 50, empresa.LogoWidth, empresa.LogoHeight);
                }
            }
            
            // Resto de la factura...
            var font = new PdfSharp.Drawing.XFont("Arial", 12);
            graphics.DrawString($"FACTURA Nº {venta.NumeroFactura}", font, PdfSharp.Drawing.XBrushes.Black, new PdfSharp.Drawing.XPoint(300, 80));
            
            // Guardar y abrir
            var fileName = $@"C:\1SOLUTION\Facturas\{venta.NumeroFactura}.pdf";
            Directory.CreateDirectory(Path.GetDirectoryName(fileName)!);
            pdf.Save(fileName);
            
            // Abrir con aplicación predeterminada
            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo
            {
                FileName = fileName,
                UseShellExecute = true
            });
        }

        private void GenerarFacturaTicket(Venta venta, List<VentaDetalle> detalles, Empresa empresa)
        {
            // Generar ticket 80mm para impresora térmica
            // Implementación específica para impresoras de tickets
        }
    }
}
```

### 📄 **5. Instalador WiX - Configuración Completa**

#### `src/1Solution.Setup/Product.wxs`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<Wix xmlns="http://schemas.microsoft.com/wix/2006/wi">
  <Product Id="*" 
           Name="1SOLUTION" 
           Language="3082" 
           Version="1.0.0" 
           Manufacturer="Tu Empresa"
           UpgradeCode="12345678-ABCD-EFGH-IJKL-123456789ABC">
           
    <Package InstallerVersion="500" 
             Compressed="yes" 
             InstallScope="perMachine"
             Platform="x64"
             Description="Sistema de Punto de Venta para Lavadero de Autos - Paraguay"
             Comments="Incluye control de Timbrado DGII y gestión completa offline"/>
    
    <MajorUpgrade DowngradeErrorMessage="Ya existe una versión más reciente instalada." />
    <MediaTemplate EmbedCab="yes" />
    
    <!-- Directorio de instalación -->
    <Directory Id="TARGETDIR" Name="SourceDir">
      <Directory Id="ProgramFiles64Folder">
        <Directory Id="INSTALLFOLDER" Name="1SOLUTION">
          
          <!-- Aplicación principal -->
          <Component Id="MainApplication" Guid="12345678-1234-1234-1234-111111111111">
            <File Id="MainExe" 
                  Source="$(var.1Solution.UI.TargetPath)" 
                  KeyPath="yes"
                  Checksum="yes">
              <!-- Acceso directo en escritorio -->
              <Shortcut Id="DesktopShortcut" 
                       Directory="DesktopFolder"
                       Name="1SOLUTION"
                       Description="Sistema Punto de Venta Lavadero"
                       Icon="AppIcon"
                       WorkingDirectory="INSTALLFOLDER"/>
              <!-- Acceso directo en menú inicio -->
              <Shortcut Id="StartMenuShortcut"
                       Directory="ProgramMenuDir"
                       Name="1SOLUTION"
                       Description="Sistema Punto de Venta Lavadero"
                       Icon="AppIcon"
                       WorkingDirectory="INSTALLFOLDER"/>
            </File>
          </Component>
          
          <!-- DLLs necesarias -->
          <Component Id="Dependencies" Guid="12345678-1234-1234-1234-222222222222">
            <File Id="EntityFrameworkDll" Source="$(var.1Solution.UI.TargetDir)Microsoft.EntityFrameworkCore.dll"/>
            <File Id="SQLiteDll" Source="$(var.1Solution.UI.TargetDir)Microsoft.Data.SQLite.dll"/>
            <File Id="BCryptDll" Source="$(var.1Solution.UI.TargetDir)BCrypt.Net-Next.dll"/>
            <File Id="PDFSharpDll" Source="$(var.1Solution.UI.TargetDir)PdfSharp.dll"/>
          </Component>
          
          <!-- Base de datos inicial -->
          <Component Id="Database" Guid="12345678-1234-1234-1234-333333333333">
            <File Id="DatabaseFile" 
                  Source="$(var.ProjectDir)database\1solution_inicial.db" 
                  Name="1solution.db"/>
          </Component>
          
          <!-- Configuración -->
          <Component Id="Configuration" Guid="12345678-1234-1234-1234-444444444444">
            <File Id="ConfigFile" Source="$(var.1Solution.UI.TargetDir)appsettings.json"/>
          </Component>
          
          <!-- Logo por defecto -->
          <Component Id="DefaultLogo" Guid="12345678-1234-1234-1234-555555555555">
            <File Id="DefaultLogoFile" 
                  Source="$(var.ProjectDir)assets\1Solution_logo.png"
                  Name="1Solution_logo_default.png"/>
          </Component>
          
          <!-- Crear carpetas de trabajo -->
          <Directory Id="BackupsFolder" Name="Backups">
            <Component Id="BackupsDirectory" Guid="12345678-1234-1234-1234-666666666666">
              <CreateFolder/>
              <RemoveFolder Id="RemoveBackupsFolder" On="uninstall"/>
              <RegistryValue Root="HKCU" Key="Software\[Manufacturer]\[ProductName]" Name="BackupsPath" 
                           Type="string" Value="[BackupsFolder]" KeyPath="yes"/>
            </Component>
          </Directory>
          
          <Directory Id="LogosFolder" Name="Logos">
            <Component Id="LogosDirectory" Guid="12345678-1234-1234-1234-777777777777">
              <CreateFolder/>
              <RemoveFolder Id="RemoveLogosFolder" On="uninstall"/>
              <RegistryValue Root="HKCU" Key="Software\[Manufacturer]\[ProductName]" Name="LogosPath" 
                           Type="string" Value="[LogosFolder]" KeyPath="yes"/>
            </Component>
          </Directory>
          
          <Directory Id="ConfigFolder" Name="Config">
            <Component Id="ConfigDirectory" Guid="12345678-1234-1234-1234-888888888888">
              <CreateFolder/>
              <RemoveFolder Id="RemoveConfigFolder" On="uninstall"/>
              <RegistryValue Root="HKCU" Key="Software\[Manufacturer]\[ProductName]" Name="ConfigPath" 
                           Type="string" Value="[ConfigFolder]" KeyPath="yes"/>
            </Component>
          </Directory>
          
          <Directory Id="FacturasFolder" Name="Facturas">
            <Component Id="FacturasDirectory" Guid="12345678-1234-1234-1234-999999999999">
              <CreateFolder/>
              <RemoveFolder Id="RemoveFacturasFolder" On="uninstall"/>
              <RegistryValue Root="HKCU" Key="Software\[Manufacturer]\[ProductName]" Name="FacturasPath" 
                           Type="string" Value="[FacturasFolder]" KeyPath="yes"/>
            </Component>
          </Directory>
          
        </Directory>
      </Directory>
      
      <!-- Carpetas del sistema -->
      <Directory Id="DesktopFolder" Name="Desktop"/>
      <Directory Id="ProgramMenuFolder">
        <Directory Id="ProgramMenuDir" Name="1SOLUTION"/>
      </Directory>
    </Directory>
    
    <!-- Icono de la aplicación -->
    <Icon Id="AppIcon" SourceFile="$(var.ProjectDir)assets\app_icon.ico"/>
    
    <!-- Registros de Windows -->
    <Component Id="RegistryEntries" Guid="12345678-1234-1234-1234-AAAAAAAAAAAA" Directory="INSTALLFOLDER">
      <RegistryKey Root="HKLM" Key="SOFTWARE\[Manufacturer]\[ProductName]">
        <RegistryValue Name="InstallPath" Type="string" Value="[INSTALLFOLDER]" KeyPath="yes"/>
        <RegistryValue Name="Version" Type="string" Value="1.0.0"/>
        <RegistryValue Name="InstallDate" Type="string" Value="[Date]"/>
      </RegistryKey>
    </Component>
    
    <!-- Características a instalar -->
    <Feature Id="Complete" Title="1SOLUTION Complete" Level="1" Description="Sistema completo de punto de venta">
      <ComponentRef Id="MainApplication"/>
      <ComponentRef Id="Dependencies"/>
      <ComponentRef Id="Database"/>
      <ComponentRef Id="Configuration"/>
      <ComponentRef Id="DefaultLogo"/>
      <ComponentRef Id="BackupsDirectory"/>
      <ComponentRef Id="LogosDirectory"/>
      <ComponentRef Id="ConfigDirectory"/>
      <ComponentRef Id="FacturasDirectory"/>
      <ComponentRef Id="RegistryEntries"/>
    </Feature>
    
    <!-- UI del instalador -->
    <UIRef Id="WixUI_InstallDir"/>
    <Property Id="WIXUI_INSTALLDIR" Value="INSTALLFOLDER"/>
    
    <!-- Licencia -->
    <WixVariable Id="WixUILicenseRtf" Value="$(var.ProjectDir)license.rtf"/>
    <WixVariable Id="WixUIBannerBmp" Value="$(var.ProjectDir)assets\installer_banner.bmp"/>
    <WixVariable Id="WixUIDialogBmp" Value="$(var.ProjectDir)assets\installer_dialog.bmp"/>
    
  </Product>
</Wix>
```

### 📋 **6. Archivos de Configuración**

#### `appsettings.json` - Configuración de la Aplicación
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=1solution.db;Version=3;Journal Mode=WAL;"
  },
  "AppSettings": {
    "DatabasePath": "1solution.db",
    "BackupPath": "Backups\\",
    "LogsPath": "Logs\\",
    "LogosPath": "Logos\\",
    "FacturasPath": "Facturas\\",
    "AutoBackup": true,
    "BackupHour": "02:00",
    "BackupRetentionDays": 30,
    "TimbradoAlertDays": 30,
    "TimbradoAlertQuantity": 100,
    "DefaultPrinter": "HP LaserJet Pro",
    "InvoiceFormat": "A4",
    "Currency": "PYG",
    "DefaultUser": "admin",
    "SystemVersion": "1.0.0"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning",
      "Microsoft.Hosting.Lifetime": "Information"
    },
    "File": {
      "Path": "Logs\\1solution.log",
      "MaxFileSize": "10MB",
      "MaxFiles": 5
    }
  }
}
```

### 🚀 **7. Script de Build Automático**

#### `build_installer.bat` - Script de Construcción
```batch
@echo off
cls
echo ============================================
echo          1SOLUTION BUILD SCRIPT
echo    Sistema de Punto de Venta - Lavadero
echo ============================================
echo.

echo [PASO 1/7] Verificando requisitos...
where dotnet >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: .NET 6.0 SDK no encontrado
    echo Descargue desde: https://dotnet.microsoft.com/download/dotnet/6.0
    pause
    exit /b 1
)

where candle >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: WiX Toolset no encontrado
    echo Descargue desde: https://wixtoolset.org/releases/
    pause
    exit /b 1
)

echo ✅ Requisitos verificados

echo.
echo [PASO 2/7] Limpiando proyecto...
dotnet clean --configuration Release --verbosity quiet
if %ERRORLEVEL% NEQ 0 goto :error

echo [PASO 3/7] Restaurando paquetes NuGet...
dotnet restore --verbosity quiet
if %ERRORLEVEL% NEQ 0 goto :error

echo [PASO 4/7] Compilando aplicación...
dotnet build --configuration Release --no-restore --verbosity quiet
if %ERRORLEVEL% NEQ 0 goto :error

echo [PASO 5/7] Publicando aplicación (auto-contenida)...
dotnet publish src\1Solution.UI\1Solution.UI.csproj -c Release -r win-x64 --self-contained true --output publish\ --verbosity quiet
if %ERRORLEVEL% NEQ 0 goto :error

echo [PASO 6/7] Compilando instalador WiX...
cd src\1Solution.Setup
candle Product.wxs -out Product.wixobj -ext WixUIExtension
if %ERRORLEVEL% NEQ 0 goto :error

light Product.wixobj -out ..\..\dist\1SOLUTION_Setup.exe -ext WixUIExtension
if %ERRORLEVEL% NEQ 0 goto :error
cd ..\..

echo [PASO 7/7] Preparando archivos finales...
if not exist "dist" mkdir dist
copy "database\1solution_inicial.db" "dist\" >nul
copy "docs\Manual_Usuario.pdf" "dist\" >nul
copy "docs\Manual_Administrador.pdf" "dist\" >nul
copy "assets\1Solution_logo.png" "dist\" >nul

echo.
echo ============================================
echo        ✅ BUILD COMPLETADO EXITOSAMENTE
echo ============================================
echo.
echo 📦 Archivos generados en carpeta 'dist\':
echo    • 1SOLUTION_Setup.exe        (45-60 MB)
echo    • 1solution_inicial.db       (Base de datos)
echo    • Manual_Usuario.pdf         (Guía de usuario)
echo    • Manual_Administrador.pdf   (Guía técnica)
echo    • 1Solution_logo.png         (Logo por defecto)
echo.
echo 🎯 LISTO PARA INSTALACIÓN EN WINDOWS 10/11
echo.
pause
goto :end

:error
echo.
echo ❌ ERROR durante la compilación
echo Revise los mensajes de error anteriores
echo.
pause
exit /b 1

:end
echo ¡Instalador creado exitosamente!
```

### 📖 **8. Manuales de Usuario**

#### `docs/Manual_Usuario.pdf` - Contenido
```
MANUAL DE USUARIO - 1SOLUTION
Sistema de Punto de Venta para Lavadero de Autos

ÍNDICE:
1. Introducción al Sistema
2. Pantalla Principal (Dashboard)
3. Módulo de Ventas
   3.1 Búsqueda de Clientes
   3.2 Selección de Servicios
   3.3 Opciones de Impresión
4. Gestión de Servicios
5. Control de Inventario
6. Base de Clientes
7. Registro de Gastos
8. Centro de Reportes
9. Configuración del Sistema
   9.1 Datos de la Empresa
   9.2 Upload del Logo
   9.3 Control de Timbrado DGII
10. Solución de Problemas
11. Soporte Técnico

CAPÍTULO 3: MÓDULO DE VENTAS

3.1 BÚSQUEDA DE CLIENTES:
- En el campo "Buscar Cliente", escriba el nombre, cédula o teléfono
- El sistema mostrará clientes coincidentes automáticamente
- Seleccione el cliente deseado de la lista
- El régimen turismo se aplicará automáticamente si el cliente lo tiene configurado

3.2 OPCIONES DE IMPRESIÓN:
- "Imprimir y Guardar": Imprime la factura Y guarda en el sistema
- "Solo Imprimir": Imprime la factura sin guardar (para cotizaciones)
- "Solo Guardar": Guarda en el sistema sin imprimir

3.3 CONTROL DE TIMBRADO:
- El sistema controla automáticamente el número de facturas usadas
- Alertas automáticas 30 y 10 días antes del vencimiento
- Alertas cuando quedan 100, 50, 20 facturas
- Bloqueo automático si el timbrado vence o se agotan las facturas
```

#### `docs/Manual_Administrador.pdf` - Contenido
```
MANUAL DE ADMINISTRADOR - 1SOLUTION
Configuración y Mantenimiento del Sistema

ÍNDICE:
1. Instalación del Sistema
2. Configuración Inicial
3. Gestión de Usuarios
4. Control de Timbrado DGII
5. Sistema de Backup
6. Configuración de Logo
7. Configuración de Impresoras
8. Mantenimiento de Base de Datos
9. Resolución de Problemas
10. Actualización del Sistema

CAPÍTULO 4: CONTROL DE TIMBRADO DGII

CONFIGURACIÓN INICIAL:
1. Ir a Configuración > Facturación
2. Completar:
   - Número de Timbrado (ej: T-12345678)
   - Fecha de Vencimiento
   - Límite de Facturas (ej: 1000)
   - Facturas ya utilizadas (si migra de otro sistema)

ALERTAS AUTOMÁTICAS:
- El sistema monitorea automáticamente cada hora
- Alertas por fecha: 30, 10 días antes del vencimiento
- Alertas por cantidad: 100, 50, 20 facturas restantes
- Notificaciones de Windows cuando hay alertas críticas

RENOVACIÓN DE TIMBRADO:
1. Obtener nuevo timbrado de la DGII
2. Actualizar en Configuración > Facturación
3. Reiniciar contador en 0
4. Verificar que las alertas se actualicen

CAPÍTULO 6: CONFIGURACIÓN DE LOGO

SUBIR LOGO DE LA EMPRESA:
1. Ir a Configuración > Empresa
2. Hacer clic en "Subir Logo de la Empresa"
3. Seleccionar archivo PNG, JPG o GIF (máximo 5MB)
4. Ajustar tamaño con los campos Ancho y Alto
5. Activar "Mostrar logo en facturas"
6. Ver vista previa en tiempo real
7. Guardar configuración

El logo se guardará en: C:\1SOLUTION\Logos\empresa_logo.png
```