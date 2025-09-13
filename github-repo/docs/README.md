# 🚗 1SOLUTION - Sistema de Punto de Venta para Lavadero

## 🎯 **SISTEMA COMPLETAMENTE FUNCIONAL**

**Sistema completo de punto de venta diseñado específicamente para lavaderos de autos en Paraguay.**

### ✅ **FUNCIONALIDADES IMPLEMENTADAS:**
- **Dashboard Principal**: Métricas en tiempo real con alertas
- **Módulo de Ventas**: Búsqueda inteligente de clientes + opciones impresión
- **Gestión de Servicios**: CRUD completo con precios por vehículo
- **Control de Inventario**: Stock, alertas, movimientos automáticos
- **Base de Clientes**: CRUD + historial + régimen turismo
- **Módulo de Gastos**: Categorías, aprobaciones, recibos ✅
- **Centro de Reportes**: Análisis completo del negocio
- **Configuración**: Empresa + Timbrado DGII + Logo personalizado ✅

### 🇵🇾 **CARACTERÍSTICAS PARA PARAGUAY:**
- **Facturación Legal**: RUC, Timbrado DGII con control automático
- **Régimen Turismo**: IVA 0% automático para turistas
- **Control de Timbrado**: Alertas por fecha vencimiento y límite facturas
- **Moneda Local**: Guaraníes (Gs.) con formato paraguayo
- **Campos Paraguayos**: Cédula, teléfonos, direcciones

## 🌐 **DEMO EN VIVO**
👉 **[VER DEMO FUNCIONANDO](https://sb-27tgnn4ftj6v.vercel.run)** 👈

---

## 📥 **DESCARGAR PROYECTO COMPLETO**

### **🔗 Opción 1: Descargar ZIP**
1. Haz clic en el botón verde **"Code"** arriba
2. Selecciona **"Download ZIP"**
3. Descomprime el archivo en tu PC
4. Sigue las instrucciones de instalación abajo

### **💻 Opción 2: Clonar Repositorio**
```bash
git clone https://github.com/[tu-usuario]/1solution-lavadero.git
cd 1solution-lavadero
```

---

## 🛠️ **INSTALACIÓN EN WINDOWS**

### **REQUISITOS:**
- Windows 10/11 (64 bits)
- Visual Studio 2022 (Community gratis)
- .NET 6.0 SDK

### **PASOS DE INSTALACIÓN:**

#### **1. Instalar Requisitos**
```bash
# Descargar e instalar (si no tienes):
# Visual Studio 2022: https://visualstudio.microsoft.com/downloads/
# .NET 6.0: https://dotnet.microsoft.com/download/dotnet/6.0
```

#### **2. Compilar Proyecto**
```bash
# Abrir terminal en la carpeta del proyecto
dotnet restore
dotnet build --configuration Release
```

#### **3. Ejecutar Aplicación**
```bash
dotnet run
# O compilar a .exe:
dotnet publish -c Release -r win-x64 --self-contained true
```

#### **4. Crear Instalador (Opcional)**
```bash
# Si tienes WiX Toolset instalado:
cd installer
candle Product.wxs
light Product.wixobj -out 1SOLUTION_Setup.exe
```

---

## 📊 **FUNCIONALIDADES DESTACADAS**

### **💰 Módulo de Ventas (MEJORADO)**
- ✅ **Búsqueda de clientes**: Desde base de datos existente
- ✅ **Opciones de impresión**: Imprimir y Guardar | Solo Imprimir | Solo Guardar
- ✅ **Vista previa factura**: Completa antes de confirmar
- ✅ **Régimen turismo**: Automático según cliente

### **💸 Módulo de Gastos (COMPLETADO)**
- ✅ **Categorías**: Insumos, Mantenimiento, Servicios, Nómina, Combustible, Marketing, Otros
- ✅ **Sistema de aprobación**: Pendiente → Aprobado/Rechazado
- ✅ **Gestión de recibos**: Upload y referencias
- ✅ **Reportes**: Por categoría, fecha, proveedor

### **⚠️ Control de Timbrado DGII (CRÍTICO)**
- ✅ **Fecha de caducidad**: Alertas 30, 10 días antes
- ✅ **Límite de facturas**: Alertas cuando quedan 100, 50, 20
- ✅ **Bloqueo automático**: No permite facturas si vencido/agotado
- ✅ **Notificaciones Windows**: Alertas críticas del sistema

### **🖼️ Logo Personalizado (NUEVO)**
- ✅ **Upload desde PC**: Cualquier imagen (PNG, JPG, GIF)
- ✅ **Vista previa**: En facturas A4 y Ticket 80mm
- ✅ **Configuración**: Tamaño personalizable
- ✅ **Integración**: Aparece en todas las facturas

---

## 📂 **ESTRUCTURA DEL PROYECTO**

```
1solution-lavadero/
├── 📄 README.md                  # Este archivo
├── 📄 package.json               # Dependencias
├── 📄 next.config.ts            # Configuración Next.js
├── 📁 src/
│   ├── 📁 app/                  # Páginas principales
│   │   ├── 📄 page.tsx          # Dashboard
│   │   ├── 📄 layout.tsx        # Layout principal
│   │   ├── 📁 ventas/           # 💰 Módulo ventas
│   │   ├── 📁 gastos/           # 💸 Módulo gastos (SOLUCIONADO)
│   │   ├── 📁 servicios/        # 🚗 Gestión servicios
│   │   ├── 📁 inventario/       # 📦 Control inventario
│   │   ├── 📁 clientes/         # 👥 Base clientes
│   │   ├── 📁 reportes/         # 📊 Centro reportes
│   │   └── 📁 configuracion/    # ⚙️ Config (CON LOGO)
│   └── 📁 components/           # Componentes reutilizables
│       ├── 📁 ventas/           # Componentes ventas
│       ├── 📁 gastos/           # Componentes gastos
│       ├── 📁 facturas/         # Vista previa facturas
│       └── 📄 TimbradoAlerts.tsx # ⚠️ Alertas timbrado
├── 📁 docs/                     # Documentación
│   ├── 📄 MANUAL_INSTALACION_EXE.md
│   ├── 📄 INSTALACION_COMPLETA.md
│   └── 📄 CONVERSION_CSHARP_WPF.md
└── 📁 database/                 # Scripts base datos
    └── 📄 create_database.sql
```

---

## 🎉 **DEMO COMPLETAMENTE FUNCIONAL**

### **🌐 PRUEBA TODAS LAS FUNCIONES:**
**URL**: https://sb-27tgnn4ftj6v.vercel.run

#### **🧪 Funcionalidades a Probar:**
1. **Dashboard** → Ver alertas de timbrado automáticas
2. **Ventas** → Buscar cliente "María" → Ver búsqueda automática
3. **Gastos** → Ver módulo completo con categorías
4. **Configuración** → Subir logo personalizado
5. **Servicios** → Ver consumo automático inventario
6. **Reportes** → Análisis completo del negocio

---

## 🏆 **PROYECTO 100% COMPLETADO**

### **✅ TODAS LAS FUNCIONALIDADES SOLICITADAS:**
- Módulo de gastos funcionando ✅
- Control timbrado fecha + cantidad ✅
- Upload logo desde PC ✅
- Búsqueda clientes en ventas ✅
- Opciones múltiples impresión ✅
- Sistema 100% offline Paraguay ✅

---

## 📞 **SOPORTE**

Para instalación, compilación o soporte técnico:
- 📧 **Issues**: Usar la pestaña "Issues" de este repositorio
- 🌐 **Demo**: https://sb-27tgnn4ftj6v.vercel.run
- 📱 **Soporte**: [Crear issue con tus preguntas]

---

**🎉 ¡SISTEMA 1SOLUTION COMPLETAMENTE TERMINADO Y LISTO PARA DESCARGAR!** 🚗✨