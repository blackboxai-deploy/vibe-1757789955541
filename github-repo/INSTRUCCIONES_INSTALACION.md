# 📦 INSTRUCCIONES DE INSTALACIÓN - 1SOLUTION

## 🚀 **DESCARGA DESDE GITHUB**

### **PASO 1: DESCARGAR PROYECTO**
1. **Haz clic** en el botón verde **"Code"** (arriba a la derecha)
2. **Selecciona** **"Download ZIP"**
3. **Guarda** el archivo `1solution-lavadero-main.zip` en tu PC
4. **Descomprime** el archivo en `C:\Desarrollo\1SOLUTION\`

### **PASO 2: INSTALAR REQUISITOS**
```bash
# Descargar e instalar:
# 1. Visual Studio 2022 Community (GRATIS)
#    → https://visualstudio.microsoft.com/downloads/
#    → Durante instalación, marcar: ".NET desktop development"

# 2. .NET 6.0 SDK
#    → https://dotnet.microsoft.com/download/dotnet/6.0

# 3. Git (opcional, pero recomendado)
#    → https://git-scm.com/downloads
```

---

## 🛠️ **COMPILACIÓN DEL PROYECTO**

### **MÉTODO A: CON VISUAL STUDIO (Recomendado)**

1. **Abrir** `1solution-lavadero-main` folder
2. **Doble clic** en `1Solution.sln` (se abre Visual Studio)
3. **Esperar** que cargue las dependencias
4. **Presionar F5** o clic en "▶️ Start" (compilará y ejecutará)

### **MÉTODO B: CON LÍNEA DE COMANDOS**

```bash
# Abrir PowerShell/CMD en la carpeta del proyecto
cd C:\Desarrollo\1SOLUTION\1solution-lavadero-main

# Instalar dependencias
dotnet restore

# Compilar proyecto
dotnet build --configuration Release

# Ejecutar aplicación
dotnet run

# O crear ejecutable independiente:
dotnet publish -c Release -r win-x64 --self-contained true --output dist\
```

---

## ⚙️ **CONFIGURACIÓN INICIAL**

### **PRIMER USO DEL SISTEMA:**

#### **1. Usuario Inicial**
```
👤 Usuario: admin
🔐 Contraseña: admin
⚠️  CAMBIAR inmediatamente por seguridad
```

#### **2. Configurar Empresa**
1. Ir a **Configuración** → **Empresa**
2. Completar:
   - ✅ **Nombre**: [Nombre de tu lavadero]
   - ✅ **RUC**: [Tu RUC paraguayo]
   - ✅ **Dirección**: [Dirección completa]
   - ✅ **Teléfonos**: [Teléfono y celular]
   - ✅ **Email**: [Email de contacto]

#### **3. Configurar Timbrado DGII** ⚠️ CRÍTICO
1. Ir a **Configuración** → **Facturación**
2. Completar:
   - ✅ **Número Timbrado**: T-XXXXXXXX
   - ✅ **Fecha Vencimiento**: [Fecha del timbrado]
   - ✅ **Límite Facturas**: [Cantidad permitida ej: 1000]
   - ✅ **Facturas Usadas**: [Si migras de otro sistema]

#### **4. Subir Logo de la Empresa** 🖼️
1. Ir a **Configuración** → **Empresa** → **Logo**
2. **Hacer clic** "Subir Logo de la Empresa"
3. **Seleccionar** archivo PNG/JPG/GIF de tu PC
4. **Ajustar tamaño** (recomendado: 150x80px)
5. **Activar** "Mostrar logo en facturas"
6. **Ver vista previa** en formatos A4 y Ticket
7. **Guardar** configuración

---

## 🧪 **PRUEBAS FUNCIONALES**

### **Después de la instalación, probar:**

#### **💰 Ventas con Búsqueda de Clientes**
1. Ir a **Ventas** → **Nueva Venta**
2. En **"Buscar Cliente"** escribir `"María"`
3. **Seleccionar** cliente de la lista
4. **Agregar servicios** (ej: Lavado Full Detail → SUV)
5. **Probar botones**:
   - "Imprimir y Guardar" ✅
   - "Solo Imprimir" ✅
   - "Solo Guardar" ✅
6. **Ver vista previa** completa de factura

#### **💸 Módulo de Gastos**
1. Ir a **Gastos** → **Lista de Gastos**
2. **Ver gastos** por categoría
3. **Crear nuevo gasto** en **Nuevo Gasto**
4. **Probar filtros** por fecha, categoría
5. **Ver reportes** de gastos

#### **⚠️ Alertas de Timbrado**
1. **Dashboard** → Ver alertas automáticas
2. **Configuración** → **Facturación** → Cambiar fecha vencimiento a mañana
3. **Ver alerta crítica** en dashboard
4. **Probar** que bloquea ventas si vence

---

## 🔧 **SOLUCIÓN DE PROBLEMAS**

### **Error: "No se encuentra .NET"**
```bash
# Descargar e instalar .NET 6.0:
https://dotnet.microsoft.com/download/dotnet/6.0
```

### **Error: "No se puede compilar"**
```bash
# Limpiar proyecto y reinstalar:
dotnet clean
dotnet restore
dotnet build
```

### **Error: "Base de datos no encontrada"**
```bash
# Crear base de datos inicial:
# Ejecutar script: database/create_database.sql
# O usar datos de ejemplo incluidos
```

### **Error: "Logo no aparece"**
```bash
# Verificar:
# 1. Archivo logo en carpeta Logos/
# 2. Configuración "Mostrar logo en facturas" activada
# 3. Tamaño configurado correctamente
```

---

## 📊 **CARACTERÍSTICAS ÚNICAS**

### **🇵🇾 ESPECÍFICO PARA PARAGUAY**
- **Facturación Legal**: Cumple normativas DGII
- **Régimen Turismo**: IVA 0% automático
- **Campos Locales**: Cédula, teléfonos paraguayos
- **Moneda**: Guaraníes con formato correcto

### **🏆 INNOVACIONES DEL SISTEMA**
- **Control Timbrado Inteligente**: Fecha Y cantidad
- **Logo Personalizable**: Upload con vista previa
- **Búsqueda Inteligente**: Clientes existentes
- **Opciones Impresión**: Flexible según necesidad
- **Consumo Automático**: Inventario se actualiza solo

---

## 🎯 **RESULTADO FINAL**

**✅ SISTEMA 100% FUNCIONAL** listo para:
- Instalación en Windows 10/11
- Uso inmediato en lavaderos
- Personalización completa
- Operación offline total

**¡Tu sistema de punto de venta está completamente listo!** 🎉