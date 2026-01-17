# Colegio Dr. Francisco Arízaga Luque - Portal de Eventos

Sitio web funcional para el colegio con calendario de eventos, gestión de contactos y panel administrativo.

## Inicio Rápido

1. **Clonar repositorio**
```bash
git clone https://github.com/tu-usuario/arizaga-luque.git
cd arizaga-luque
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Configurar variables de entorno**
- Copiar `.env.example` a `.env`
- Agregar tus credenciales de Supabase:
  - `VITE_SUPABASE_URL`: URL de tu proyecto Supabase
  - `VITE_SUPABASE_ANON_KEY`: Clave anónima de Supabase

4. **Ejecutar localmente**
```bash
npm run dev
```
Acceder en http://localhost:5173

## Desplegar a Producción

### Opción 1: Vercel (Recomendado)
1. Crear cuenta en [vercel.com](https://vercel.com)
2. Conectar repositorio de GitHub
3. Agregar variables de entorno en Settings → Environment Variables
4. Deployer automáticamente con cada push

### Opción 2: Netlify
1. Crear cuenta en [netlify.com](https://netlify.com)
2. Conectar repositorio
3. Build command: `npm run build`
4. Publish directory: `dist`
5. Agregar variables de entorno

### Opción 3: GitHub Pages
1. Agregar este script en `package.json`:
```json
"deploy": "npm run build && gh-pages -d dist"
```
2. Ejecutar: `npm run deploy`

## Tecnologías
- React 18 + TypeScript
- Vite
- Tailwind CSS
- Supabase (Base de datos + Auth)
- FullCalendar
- Lucide Icons

## Base de Datos
Las tablas están creadas en Supabase:
- `events`: Eventos del calendario
- `contact_messages`: Mensajes de contacto
- `auth.users`: Sistema de autenticación

## Funcionalidades
- ✓ Calendario interactivo de eventos
- ✓ Formulario de contacto con base de datos
- ✓ Panel administrativo con autenticación
- ✓ Tema claro/oscuro
- ✓ Diseño responsive

## Licencia
MIT
