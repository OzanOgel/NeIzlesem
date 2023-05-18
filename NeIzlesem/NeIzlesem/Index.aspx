<%@ Page Title="" Language="C#" MasterPageFile="~/UsersMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NeIzlesem.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .poz {
            position: relative;
            top: 100px;
        }
        .min-imgbody{
             width: 180px;
            height: 250px;
            border: 3px solid white;
            border-radius: 5px;
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }
        .min-imgbody img {
            transition: opacity 0.5s ease;
        }
        .min-imgbody:hover {
            transform: scale(1.1);
            box-shadow: 0 0 10px 10px rgba(255, 0, 0, 0.5);
            z-index: 1;
        }
        .min-imgbody:hover img {
            opacity: 0.1;
        }
         .min-imgbody:hover .content {
            opacity: 1;
            padding: 0; 
        }
        .imgbody {
            width: 200px;
            height: 300px;
            border: 3px solid white;
            border-radius: 5px;
            position: relative;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
            overflow: hidden;
        }

        .imgbody img {
            transition: opacity 0.5s ease;
        }

        .imgbody:hover {
            transform: scale(1.1);
            box-shadow: 0 0 10px 10px rgba(255, 0, 0, 0.5);
            z-index: 1;
        }

        .imgbody:hover img {
            opacity: 0.15;
        }

        .content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            opacity: 0;
            transition: opacity 0.5s ease;
            text-align: center;
            color: white;
            padding:10px; 
        }

        .content label,
        .content h3 {
            margin: 0;
            line-height: 1.2; 
        }

        .imgbody:hover .content {
            opacity: 1;
            padding: 0; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="top: 100px; position: relative;">
        <div id="demo" class="carousel slide" data-bs-ride="false" data-bs-interval="4000" style="width: 800px; margin-right: auto; margin-left: auto">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>

            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img style="border: 1px solid white" height="400" src="Images/cs1.jpg" class="w-100">
                </div>

            </div>
            <button style="position: absolute; left: -100px;" class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span><i style="font-size: 40pt; color: white;" class="fa-solid fa-backward"></i></span>
            </button>
            <button style="position: absolute; left: 783px;" class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span><i style="font-size: 40pt; color: white;" class="fa-solid fa-forward"></i></span>
            </button>
        </div>
        <div class="container mt-5">
            <div class="mt-5">
                <div class="container mt-5">
                    <div class="tit" style="color: white; font-size: 22pt; font-family: Calibri; text-align: center;">
                        Highest
                        <img style="width: 70px" src="Images/Imdb.png" />
                        Rated Movies
                    </div>
                </div>
                <div class="container mt-5">
                </div>
                <div id="demo2" class="carousel slide" data-bs-ride="false" data-bs-interval="4000" style="width: 1200px; height: 200px!important; margin-right: auto; margin-left: auto">
                    <div class="carousel-indicators">
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="kutu" style="width: 100%; height: 100%;">

                                <div style="margin-left: 110px; margin-right: 55px;" class="row">
                                    <asp:Repeater ID="rp_ımdbtop5" runat="server">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <div class="min-imgbody">
                                        <img src='Images/<%# Eval("ImagePath") %>' style="width: 100%; height: 100%;" />
                                        <div class="content">
                                            <h3><%# Eval("Name") %></h3>
                                        </div>
                                    </div>
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                </div>
                            </div>
                        </div>

                    </div>
                    <button style="top: 50px; position: absolute;" class="carousel-control-prev" type="button" data-bs-target="#demo2" data-bs-slide="prev">
                        <span><i style="font-size: 40pt; color: white;" class="fa-solid fa-backward"></i></span>
                    </button>
                    <button style="top: 50px; position: absolute;" class="carousel-control-next" type="button" data-bs-target="#demo2" data-bs-slide="next">
                        <span><i style="font-size: 40pt; color: white;" class="fa-solid fa-forward"></i></span>
                    </button>
                </div>
            </div>
        </div>
        <div class="container poz">
            <div class="tit" style="color: white; font-size: 22pt; font-family: Calibri; text-align: center;">
                Highest 
                <label style="font-family: 'Sigmar', cursive; position: relative; font-size: 20pt !important">Ne İzlesem?</label>
                Rated Movies
            </div>
        </div>
        <div
    id="demo3"
    class="carousel slide"
    data-bs-ride="false"
    data-bs-interval="4000"
    style="width: 1200px; height: 200px !important; margin-right: auto; margin-left: auto; position: relative; top: 140px;">
    <div class="carousel-indicators"></div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="kutu" style="width: 100%; height: 100%">
                <div style="margin-left: 110px; margin-right: 55px" class="row">
                    <asp:Repeater ID="rp_ımdbneizlesemtop5" runat="server">
                        <ItemTemplate>
                            <div class="col-md-3">
                                <a href="#">
                                    <div class="min-imgbody">
                                        <img src='Images/<%# Eval("ImagePath") %>' style="width: 100%; height: 100%;" />
                                        <div class="content">
                                            <h3><%# Eval("Name") %></h3>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <button
        style="top: 50px; position: absolute"
        class="carousel-control-prev"
        type="button"
        data-bs-target="#demo3"
        data-bs-slide="prev">
        <span><i style="font-size: 40pt; color: white" class="fa-solid fa-backward"></i></span>
    </button>
    <button
        style="top: 50px; position: absolute"
        class="carousel-control-next"
        type="button"
        data-bs-target="#demo3"
        data-bs-slide="next">
        <span><i style="font-size: 40pt; color: white" class="fa-solid fa-forward"></i></span>
    </button>
</div>

        <div class="container">
             <div style="margin-top:100px; text-align:center; color:white; margin-bottom:20px; position:relative; top:200px;">
                                <h3>All Movies</h3>
                            </div>
            <div class="row">
                <div style="margin-top:200px;"></div>
                <asp:Repeater ID="rp_allmovies" runat="server">
                    <ItemTemplate>
                        <%# (Container.ItemIndex > 0 && Container.ItemIndex % 4 == 0) ? "</div><div class='row'>" : "" %>

                        <div class="col-md-3">
                           

                            <div style="margin-top: 80px">
                               <a href="#">
                                <div class="imgbody" style="left:60px">
                                     
                                    <img src='Images/<%# Eval("ImagePath") %>' style="width: 100%; height: 100%;" />
                                      
                                    <div class="content">
                                        <h3><%# Eval("Name") %></h3>
                                      
                                      
                                    </div>
                                      </a>
                                </div>
                                    

                            </div>

                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>

    </div>



</asp:Content>
