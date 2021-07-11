<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DB_Project.admin.login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../../css/login.css" />
    <title>Admin Login</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form runat="server" class="sign-in-form">
            <b><h2 class="title">Administrator</h2></b>
            <br>
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
                <asp:TextBox runat="server" ID="TxtItmNo" Text=""  placeholder="Enter Email" ></asp:TextBox>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <asp:TextBox runat="server" TextMode="Password" ID="TextBox11" Text=""  placeholder="Enter Password"></asp:TextBox>
            </div>
             <asp:Button runat="server" ID="buttonadd" Text="login" OnClick="Search_Button_Clickk" OnClientClick= "javascript: return validation();" class="btn solid" />
          </form>
        </div>
      </div>
      
  </body>
    <script type="text/javascript">
        function validation() {
            var username = document.getElementById('<%=TxtItmNo.ClientID %>').value;
              var password = document.getElementById('<%=TextBox11.ClientID %>').value;



              if (username.search("'") >= 0 || username.search("--") >= 0) // sql injection characters
              {
                  alert('Please Enter Username');
                  return false;


              }
              else {
                  if (password.search("'") >= 0 || password.search("--") >= 0) {
                      alert('Please Enter Password');


                      return false;
                  }
                  return true;
              }

          }
</script>

</html>


