﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetallesReparacion.aspx.cs" Inherits="ExamenFinal_Alejandro.CapaVista.DetallesReparacion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Gestión de Detalles de Reparación</title>
    <style>
        /* Estilos generales */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        /* Estilo del menú */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            display: flex;
            justify-content: center;
        }

        ul li {
            display: inline;
        }

        ul li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        ul li a:hover {
            background-color: #575757;
        }

        ul li a.active {
            background-color: #001f3f; /* Azul marino */
        }

        /* Contenedor principal */
        .container {
            margin: 30px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 800px;
            text-align: center;
        }

        .btn {
            display: inline-block;
            background-color: #001f3f; /* Azul marino */
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #004080;
        }

        label {
            display: block;
            margin-top: 10px;
            text-align: left;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Mensaje */
        #lblMensaje {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Menú de navegación -->
        <ul>
            <li><a href="Menu.aspx">Home</a></li>
            <li><a href="Usuarios.aspx">Usuarios</a></li>
            <li><a href="Equipos.aspx">Equipos</a></li>
            <li><a href="Tecnicos.aspx">Técnicos</a></li>
            <li><a href="Reparaciones.aspx">Reparaciones</a></li>
            <li><a class="active" href="DetallesReparacion.aspx">Detalles Reparación</a></li>
            <li><a href="Asignaciones.aspx">Asignaciones</a></li>
        </ul>

        <!-- Contenido principal -->
        <div class="container">
            <h2>CATÁLOGO DE DETALLES DE REPARACIÓN</h2>

            <!-- Tabla para mostrar detalles de reparación -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="DetalleID" HeaderText="ID Detalle" />
                    <asp:BoundField DataField="ReparacionID" HeaderText="ID Reparación" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                    <asp:BoundField DataField="FechaInicio" HeaderText="Fecha Inicio" />
                    <asp:BoundField DataField="FechaFin" HeaderText="Fecha Fin" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>

            <!-- Formulario para gestionar detalles de reparación -->
            <label for="tdetalleid">ID Detalle:</label>
            <asp:TextBox ID="tdetalleid" runat="server" Enabled="false"></asp:TextBox>

            <label for="treparacionid">ID Reparación:</label>
            <asp:TextBox ID="treparacionid" runat="server"></asp:TextBox>

            <label for="tdescripcion">Descripción:</label>
            <asp:TextBox ID="tdescripcion" runat="server"></asp:TextBox>

            <label for="tfechainicio">Fecha Inicio:</label>
            <asp:TextBox ID="tfechainicio" runat="server"></asp:TextBox>

            <label for="tfechafin">Fecha Fin:</label>
            <asp:TextBox ID="tfechafin" runat="server"></asp:TextBox>

            <!-- Botones de acción -->
            <asp:Button ID="bagregar" runat="server" Text="Agregar" CssClass="btn" OnClick="bagregar_Click" />
            <asp:Button ID="bmodificar" runat="server" Text="Modificar" CssClass="btn" OnClick="bmodificar_Click" />
            <asp:Button ID="bborrar" runat="server" Text="Borrar" CssClass="btn" OnClick="bborrar_Click" />

            <!-- Mensaje de retroalimentación -->
            <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
