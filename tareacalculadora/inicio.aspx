<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="tareacalculadora.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CALCULADORA</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <h1> Calculadora Web </h1>
            <label>Ingrese el primer número: </label>
          &nbsp;<asp:TextBox ID="tnum1" runat="server"></asp:TextBox>
            <br />
            Ingrese el segundo número:&nbsp;
            <asp:TextBox ID="tnum2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="rsuma" runat="server" Text="Suma" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rresta" runat="server" Text="Resta" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rmultiplicacion" runat="server" Text="Multiplicación" GroupName="operaciones" />
            <br />
            <asp:RadioButton ID="rdivision" runat="server" Text="División" GroupName="operaciones" />
            <br />
            <br />
            <asp:DropDownList ID="doperacion" runat="server">
                <asp:ListItem Text="Seleccione una operación" Value="" />
                <asp:ListItem Text="Cuadrado" Value="2" />
                <asp:ListItem Text="Cubo" Value="3" />
            </asp:DropDownList>
            <br />
            <br />
            Resultado:&nbsp;
            <asp:Label ID="lresultado" runat="server" Text="0"></asp:Label>
            <br />
            <br />
            <asp:Button ID="bresultado" runat="server" Text="Calcular" Width="100px" OnClick="bresultado_Click" />
          <br />
          
        </div>
    </form>
</body>
</html>