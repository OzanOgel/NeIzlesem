<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/MasterPage.Master" AutoEventWireup="true" CodeBehind="update-deleleMovies.aspx.cs" Inherits="NeIzlesem.AdminPanel.update_deleleMovies" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th {
            color: darkblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lv_movies" runat="server" OnItemCommand="lv_movies_ItemCommand">
        <LayoutTemplate>
    <table class="table  table-bordered" style="text-align: center; margin-left: auto; margin-top: 50px;">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">ImagePath</th>
                <th scope="col">Name</th>
               
                <th scope="col">ImdbScore</th>
                <th scope="col">score</th>
                <th>Options</th>
                
                


            </tr>
        </thead>
        <tbody>
            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
        </tbody>
        </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("ID") %></td>
                <td style="width:20px !important" ><img style=" width:100%; height:100%;" src='../Images/<%# Eval("ImagePath") %>'/></td>
                <td><%# Eval("Name") %></td>
            
                <td><%# Eval("ImdbScore") %></td>
                <td><%# Eval("score") %></td>
                <td style="justify-content:center; align-items:center;">
                     <asp:Button runat="server" ID="btn_update" CssClass="btn btn-success" OnClick="btn_update_Click" Text="Update" />
                    
                    
                        <asp:Button runat="server" ID="btn_delete" CssClass="btn btn-danger" CommandArgument='<%# Eval("ID") %>' CommandName="remove" Text="Delete" />
                    
                </td>
                
            </tr>
        </ItemTemplate>
      
        
            
           
      
   
           
        </asp:ListView>
</asp:Content>
