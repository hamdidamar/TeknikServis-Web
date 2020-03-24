<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TeknikServis_Web.Default" %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Teknik Servis ve Ürün Takip Sistemi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
    <!-- //online-fonts -->

</head>
<body>
    <div class="sidenav">
		<div class="row side_top">
		<div class="col-4 side_top_left">
			<img src="web/images/urunservis.png" alt="ürün servis" class="img-fluid navimg">
		</div>
		<div class="col-8 side_top_right">
			<h6>Teknik Servis </h6>
			<p>Ürün Takibi</p>
		</div>
		</div>
       <header>
			<div class="container-fluid px-md-5 ">
				<nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
						<ul class="menu">
							<li class="active"><a href="#home" class="scroll">Ana Sayfa</a></li>
							 <li class="mt-sm-3"><a href="#about" class="scroll">Hakkımızda</a></li>
							<li class="mt-sm-3"><a href="#gallery" class="scroll">Ürünler</a></li>
							<li class="mt-sm-3"><a href="#services" class="scroll">Ürün Takibi</a></li>
							<li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                        </ul>
				</nav>
			</div>
		</header>
    </div>
    <div class="main" id="home">
        <div class="banner-text-w3ls">
            <div class="container">
                <div class="mx-auto text-center">
                    <h1>Kaliteli hizmet ve uzman çalışanları ile hızlı ve güvenli bir şekilde ürünlerinizi bize gönderebilirsiniz.</h1>
					<p class="banp mx-auto mt-3">Zengin ürün bankası ve kaliteli hizmet ile sizleri bekliyoruz.  </p>
					<a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Daha Fazlası</a>
                </div>
            </div>
        </div>
				<!-- about -->
<section class="slide-wrapper" id="about">
	<h3 class="w3_head mb-5">Hakkımızda</h3>
	<img src="web/images/hakkimizda.jpg" class="img-fluid" alt="">
	<p class="iner mt-5">
        <asp:Repeater ID="rprtHakkimizda" runat="server">
            <ItemTemplate>
                <%# Eval("Metin") %>
            </ItemTemplate>
        </asp:Repeater>
	</p>
</section>
<!-- //about -->
		<!-- news -->
       <div class="news" id="gallery">
		<div class="text-center">
			<h2 class="w3_head">Ürünler</h2>
				
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ürün Adı</th>
                        <th>Marka</th>
                        <th>Fiyat</th>

                    </tr>
                </thead>
                
                <tbody>
                    <asp:Repeater ID="rprtUrunler" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ID") %></td>
                                <td><%# Eval("Adi") %></td>
                                <td><%# Eval("Marka") %></td>
                                <td><%# Eval("SatisFiyat") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>

            </table>
        
        </div>
				
		</div>
		
<!-- //news -->

 <!--services-->
    <div class="wthree_pvtits-services align-w3" id="services">
        <div class="container">
            <div class="wthree_pvt_title text-center">
                <h3 class="w3_head">Teknik Servis
                </h3>
                <p class="main_p mb-5  text-center mx-auto"> Satın aldığınız ürünlerde herhangi bir teknik problem oluşması durumunda 2 yıl süre ile hengangi bir ek ücret ödemeden tamir ve onarım işlemlerini ücretsiz yaptırabilirsiniz..</p>
                
                <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="AnaSayfa.aspx" role="button" style="background-color:lightseagreen">Arızalı Ürün Takibi</a>            
            </div>
            <div class="wthree_pvtits-services-row row">
                <div class="col-lg-4 col-md-6 wthree_sgrid py-sm-5 py-4">
                    <span class="fa fa-cog p-sm-4 p-2"></span>
                    <h4 class="my-3">Hızlı Teknik Servis</h4>
                </div>
                <div class="col-lg-4 col-md-6 wthree_sgrid  py-sm-5 py-4">
                    <span class="fa fa-refresh p-sm-4 p-2"></span>
                    <h4 class="my-3">Arıza Durum Sorgulama</h4>
                </div>
                <div class="col-lg-4 col-md-6 wthree_sgrid  py-sm-5 py-4">
                    <span class="fa fa-camera p-sm-4 p-2"></span>
                    <h4 class="my-3">Güvenilir Teslimat</h4>
                </div>
                <div class="col-lg-4 col-md-6 wthree_sgrid   py-sm-5 py-4">
                    <span class="fa fa-bell-o p-sm-4 p-2"></span>
                    <h4 class="my-3">2 Yıl Ürün Garantisi</h4>
                </div>
                <div class="col-lg-4 col-md-6  wthree_sgrid  py-sm-5 py-4">
                    <span class="fa fa fa-smile-o p-sm-4 p-2"></span>
                    <h4 class="my-3">Kaliteli Hizmet & Yüksek Memnuniyet</h4>
                </div>
                <div class="col-lg-4 col-md-6  wthree_sgrid   py-sm-5 py-4">
                    <span class="fa fa-plus-square-o  p-sm-4 p-2"></span>
                    <h4 class="my-3">Onlarca Kategori</h4>
                </div>
            </div>
        </div>
    </div>
    <!-- //services-->

		

<!-- contact -->
	 <section class="wedo" id="contact">
			<h3 class="w3_head mb-5">Bize Ulaşın</h3>
		   <p class="main_p mb-5  text-center mx-auto">Herhangi bir şikayet ve sorunla karşılaşırsanız lütfen bize ulaşınız.İlginiz için teşekkür ederiz.</p>
		   <div class="contact_grid_right mt-5 mx-auto text-center">
				<form action="#" method="post" runat="server">
					<div class="row contact_top">
						<div class="col-sm-6">
                            <asp:TextBox ID="txtIletisimAd" runat="server" placeholder="Adınız"></asp:TextBox>
						</div>
						<div class="col-sm-6">
							<asp:TextBox ID="txtIletisimMail" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
						</div>
					</div>	
						<asp:TextBox ID="txtIletisimKonu" runat="server" placeholder="Konu"></asp:TextBox>
						<asp:TextBox ID="txtIletisimMesaj" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="50"></asp:TextBox>
                        <asp:Button ID="btnIletisimGonder" runat="server" Text="Gönder" OnClick="btnIletisimGonder_Click" />
				</form>
			</div>
			<div class="cpy-right text-center">
			<div class="follow">
				<ul class="social_section_1info">
                    <li><a href="http://hamdidamar.com/"><span class="fa fa-dribbble"></span></a></li>
					<li><a href="https://github.com/hamdidamar"><span class="fa fa-github"></span></a></li>
					<li><a href="https://www.linkedin.com/in/hamdi-damar-bb6a8b159/"><span class="fa fa-linkedin"></span></a></li>
				</ul>
			</div>
				<p>© 2020 Hamdi Damar Tarafından Geliştirilmiştir..
					<a href="http://hamdidamar.com/"> Hamdi Damar</a>
				</p>
			</div>
	</section>
	 <!-- //contact -->

    </div>

</body>
</html>
