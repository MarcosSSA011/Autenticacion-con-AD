<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Proyecto_SO.inicio" %>


<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" class="no-js">
		<head runat="server">
		<link href='https://fonts.googleapis.com/css?family=Pinyon+Script' rel='stylesheet' type='text/css'>
		<style type="text/css">
		*{
		   margin:0px;
		   padding:0px;
		}
		body{
		  
         background-color: #618685;
		}
		form{
		   

                width:300px;
	            padding:16px;
	            border-radius:10px;
	            margin:auto;

                background: #fefbd8;
            }
		form h4{
		   text-aling:center;
		  // color:#FFFFFF;
		   font-weight:normal;
		   font-size:40pt;
		   margin:30px 0px;
	          // font-family: 'Pinyon Script', ;
		}
		form input{
		   width: 280px;
		   height:35px;
		   padding:0px 10px;
		   color:#6d6d6d;
		   text-aling:center;

		}
		form button{
		   width:135px;
		   margin:20px 0px 30px 30px;
		   height:50px;
		}

		</style>
		</head>

		<body leftmargin="0" topmargin="0" marginwidth="0" bgcolor="" >


			<div id="contenedor" >
				
				<br><br><br><br>
				<div id="caja_login">
					<br>
					<center>
					
					<form id="Login" method="post" runat="server">
					<h4>Login</h4>
                    
                        <br />
                        Nombre de dominio<br />
                        <br>
                    
					<asp:TextBox ID="txtDomain" Runat="server" Text="" width="80%" ></asp:TextBox><br><br>
					    Usuario<br />
                        <br />
					<asp:TextBox ID="txtUsername" Runat="server" Text="" width="80%"></asp:TextBox><br>
					    <br>
					    Contraseña&nbsp;
                        <br />
                        <br />
					<asp:TextBox ID="txtPassword" Runat="server" Text="" TextMode=Password width="80%"></asp:TextBox>
                        <br />
                        <br />
                        <br />
					<asp:Button ID="btnLogin" Runat="server" Text="Acceder" OnClick="Login_Click" cssClass="button"></asp:Button>
                        <br />
					<asp:Label ID="errorLabel" Runat="server" ForeColor=""></asp:Label>
						

					</form>
					</center>
				</div>
			 
		</div>
		</body>
</html>

<script runat="server">

    void Login_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text == "" || txtUsername.Text == "")
        {
            Response.Redirect("inicio.aspx");
        }
        else
        {
            Session["user"] = txtUsername.Text;
            Session["dominio"] = txtDomain.Text;
            Session["pass"] = txtPassword.Text;
            Response.Redirect("info.aspx");
            //Response.Redirect("info.aspx?contrasena=" + txtPassword.Text + "&usuario=" + txtUsername.Text + "&dom=" + txtDomain.Text);
        }
    }

</script>