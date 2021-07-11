<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smsSubscriberLogin.aspx.cs" Inherits="DB_Project.smsSubscriberLogin" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../css/login.css" />
    <title>SMS Subscriber</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form runat="server" >
              <div class="sign-in-form">
            <h2 class="title">SMS Subscriber</h2>
            <br>
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <asp:TextBox runat="server" ID="TxtItmNo" Text=""  placeholder="Name" ></asp:TextBox>
            </div>
            <div class="input-field">
              <i class="fas fa-phone"></i>
              <asp:TextBox runat="server" ID="TextBox11" Text=""  placeholder="Phone Number" ></asp:TextBox>
            </div>
              <asp:Button runat="server" ID="button1" Text="Sign in" OnClick="Search_Button_Clickk" OnClientClick= "javascript: return validation();" class="btn" />

                  </div>
          <div class="sign-up-form">
            <h2 class="title">SMS Subscriber</h2>
            <br>
            <h2 class="title">Sign up</h2>
              <div class="input-field">
              <i class="fas fa-user"></i>
              <asp:TextBox runat="server" ID="TextBox4" Text=""  placeholder="Subscriber ID" ></asp:TextBox>
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <asp:TextBox runat="server" ID="TextBox2" Text=""  placeholder="First Name" ></asp:TextBox>
            </div>
              <div class="input-field">
              <i class="fas fa-user"></i>
              <asp:TextBox runat="server" ID="TextBox1" Text=""  placeholder=" Last Name" ></asp:TextBox>
            </div>
            <div class="input-field">
                <i class="fas fa-phone"></i>
              <asp:TextBox runat="server" ID="TextBox3" Text=""  placeholder="Phone number" ></asp:TextBox>
            </div>
            <input type="submit" class="btn" value="Sign up" />
           
          </div>
              </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
              ex ratione. Aliquid!
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="../images/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
              laboriosam ad deleniti.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="../images/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="../js/app.js"></script>
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
  </body>
</html>
