<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddMovies.aspx.cs" Inherits="NeIzlesem.AdminPanel.AddMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Assets/ckeditor/ckeditor.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card mt-3">
      <div class="card-header">
            <h4 class="card-title" style="text-align:center">Add Movies</h4>
        </div>
      <div class="card-body">
          <div class="container">
          <div class="row">
                <div class="col-md-6">
                    <div class="mb-3 mt-3">
                        <label class="form-label">Movie Name</label>
                        <asp:TextBox ID="tb_name" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>             
               <div class="col-md-6">
                    <div class="mb-3 mt-3">
                         <label class="form-label">İMDB Score</label>
                        <asp:TextBox ID="tb_imdb" runat="server" CssClass="form-control" oninput="checkInputValue(this)" text="0"  ></asp:TextBox>
                    </div>
                </div>
              
                
            </div>
              <div class="row">
                  <div class="col-md-12">
                      <div class="mb-3 mt-3">
                           <label class="form-label">İmage</label>
                          <asp:FileUpload ID="fu_image" runat="server" CssClass="form-control" />
                      </div>

                  </div>

              </div>
              <div class="row">
                  <div class="col-md-12">
                    <div class="mb-3 mt-3">
                        <label class="form-label">Summary</label>
                        <asp:TextBox ID="textbox_full" runat="server"  CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        
                        <script>
                            CKEDITOR.replace('ctl00$ContentPlaceHolder1$textbox_full');
                        </script>

                      
                     
                      

                    </div>
                </div>

              </div>
               <div class="row">
                   <asp:Panel runat="server" ID="pnl_success" Visible="false">
                <div class="col-md-12">
                     <div class="mb-3 mt-1">
                         <div class="alert alert-success text-center">
                             Add Movie Successful
                         </div>
                     </div>
                </div>
                       </asp:Panel>
                    <asp:Panel runat="server" ID="pnl_error" Visible="false">
                <div class="col-md-12">
                     <div class="mb-3 mt-1">
                         <div class="alert alert-danger text-center">
                             <asp:Label ID="lbl_error" runat="server"></asp:Label>
                         </div>
                     </div>
                </div>
                       </asp:Panel>
              </div>
              <div class="row">
                    <div class="col-md-12">
                    <div class="mb-3 mt-2">
                          <asp:Button runat="server" ID="btn_add" OnClick="btn_add_Click" CssClass="form-control btn btn-primary" Text="Add"  />
                    </div>
                </div>
              </div>
             
              </div>
      </div>
      
  </div>
   

    <script>
        function checkInputValue(input) {
            input.value = input.value.replace(/[^\d,\.]/g, ''); 
            input.value = input.value.replace(/\./g, ','); 
            if (input.value.indexOf(',') != -1) {
                var parts = input.value.split(',');
                if (parts[1].length > 1) {
                    parts[1] = parts[1].substring(0, 1);
                    input.value = parts.join(',');
                }
            }
            if (input.value > 10) {
                input.value = 10;
            }
            if (input.value.indexOf(',') != -1) {
                var parts = input.value.split(',');
                if (parts[1].length > 0) {
                    parts[1] = parts[1].substring(0, 1);
                    input.value = parts.join(',');
                }
            }
        }
    </script>
    

</asp:Content>
