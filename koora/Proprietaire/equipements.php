<?php
session_start();
$Login = $_SESSION['Login'];
$Pwd = $_SESSION['Pwd'];
if(($_SESSION['Login']=="")||($_SESSION['Pwd']=="")|| empty($_SESSION['Login'])|| empty($_SESSION['Pwd']))
{
	 echo ("<meta http-equiv='refresh' content='0;URL=../cnx.php' />") ;
}
	
?><!doctype html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>FOOTBALL || ACCUEIL</title>
    <link rel="icon"  href="img/logo.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="css/style.css">
     <style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color:#F30;
  border: none;
  color:#000;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
<style> 
/*input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 100%;
}*/
label {
color: #B4886B;
font-weight: bold;
display: block;
width: 250px;
float: left;
}
label {
 margin-top:10px;
 display:block;
 }
label.inline {
 display:inline;
 margin-right:70px;
 }
label:after { content: ": " }
input[type=text], select, [type=password], [type=file], [type=date], [type=number]
 {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

</style>
</head>

<body>
    <!--::header part start::-->
    <header class="header_area">
            <div class="sub_header">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-md-4 col-xl-6">
                   
                  </div>
                  <div class="col-md-8 col-xl-6">
                      <div class="sub_header_social_icon float-right">
                        <?php echo("<i><strong><font face='Arial Black, Gadget, sans-serif' size='+2' color='#000033'></font></strong></i> <i><strong><font face='Trebuchet MS, Arial, Helvetica, sans-serif' size='+2' color='#FF9966'>".$Login."</font></strong></i>"); ?>
                        <a href="../deconnect.php" class="register_icon"><i class="ti-arrow-right"></i>Déconnexion</a>
                      </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                               <ul class="navbar-nav mr-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link active" href="index.php">Accueil</a>
                                    </li>
                                    <li class="nav-item">
                                        <a  href="inscription.php"class="nav-link">Inscription</a>
                                    </li>
                                    <li class="nav-item">
                                        <a  href="sportifs.php" class="nav-link">Sportifs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a  href="proprietaires.php" class="nav-link">Propriétaires</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Terrains
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item"  href="terrain.php">Ajout de terrain</a>
                                            <a class="dropdown-item"  href="terrains.php">Liste de terrains</a>
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Compétitions
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item"  href="competition.php">Ajout de compétition</a>
                                            <a class="dropdown-item"   href="competitions.php">Liste de compétitions</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a  href="equipes.php" class="nav-link">Equipes</a>
                                    </li>
                                           <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Equipements
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item"   href="equipement.php">Ajout d'equipement</a>
                                            <a class="dropdown-item"    href="equipements.php">Liste d'équipements</a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="header_social_icon d-none d-lg-block">
                                    <ul>
                                        <li><a href="#"><i class="ti-facebook"></i></a></li>
                                        <li>
                                            <a href="#"> <i class="ti-twitter"></i></a>
                                        </li>
                                        <li><a href="#"><i class="ti-instagram"></i></a></li>
                                        <li><a href="#"><i class="ti-skype"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <div class="header_social_icon d-block d-lg-none">
                            <ul>
                                <li><a href="#"><i class="ti-facebook"></i></a></li>
                                <li>
                                    <a href="#"> <i class="ti-twitter"></i></a>
                                </li>
                                <li><a href="#"><i class="ti-instagram"></i></a></li>
                                <li><a href="#"><i class="ti-skype"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-content-center">
                <div class="col-lg-7 col-xl-5">
                    <div class="banner_text">
                        <h1><span>	Au terrain   &</span><br> 
                    de jeu !</h1>
                        <p><font color="#000000" size="+2">Aller sur le terrain et jouer avec la balle sur l'un des  terrains de football professionnel  c'est Vivre l'authentique "football". </font></p>
                        <a href="#" class="btn_1">Lire la suite <span class="ti-angle-right"></span> </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

	
     <!-- player info part start-->
      <section class="team_member section_padding padding_less_40">
         <div class="container">
         <?php 
  
  
  require_once'../connexion.php'; 
  $req="SELECT * FROM `proprietaire` where Email_P='$Login' and Pwd_P='$Pwd' ";
$res=mysql_query($req) or die (mysql_error()) ; 
if($enreg=mysql_fetch_array($res) )
{

$Id_P=$enreg['Id_P'];
$Nom_P=$enreg['Nom_P'];
$Prenom_P=$enreg['Prenom_P'];
$Adr_P=$enreg['Adr_P'];
$Tel_P=$enreg['Tel_P'];
$Email_P=$enreg['Email_P'];
$Pwd_P=$enreg['Pwd_P'];
$Photo_P=$enreg['Photo_P'];
}
  
  $req="SELECT * FROM `equipement`,`terrain` where `terrain`.`Id_T` =`equipement`.`Id_T` and Id_P='$Id_P' ";
$res=mysql_query($req) or die (mysql_error()) ; 
while($enreg=mysql_fetch_array($res) )
{

$Ref_Eq=$enreg['Ref_Eq'];
$Designation_Eq=$enreg['Designation_Eq'];
$Categorie_Eq=$enreg['Categorie_Eq'];
$Prix_Eq=$enreg['Prix_Eq'];
$Description_Eq=$enreg['Description_Eq'];
$Photo_Eq=$enreg['Photo_Eq'];
$Nom_T=$enreg['Nom_T'];

//}
  ?>
            <div class="row">
               <div class="col-sm-6 col-lg-3">
                  <div class="single_team_member single-home-blog">
                     <div class="card">
                        <img src="../uploadEq/<?php echo $Photo_Eq;?>"  width="700" height="400" class="card-img-top" alt="blog">
                        <div class="card-body">
                           <div class="tean_content">
                            
                              <a href="blog.html">
                                 <h5 class="card-title"><?php echo $Designation_Eq;?></h5>
                              </a>
                              <p><h5 class="card-title"><?php echo $Categorie_Eq;?></h5></p>
                              <p><?php echo $Nom_T;?></p>
                               <p><?php echo $Prix_Eq;?></p>
                                <p><?php echo $Description_Eq;?></p>
                           </div>
                           <div class="tean_right_content">
                              <div class="header_social_icon">
                                 <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li>
                                       <a href="#"> <i class="ti-twitter"></i></a>
                                    </li>
                                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <?php $enreg=mysql_fetch_array($res);
			   $Ref_Eq=$enreg['Ref_Eq'];
$Designation_Eq=$enreg['Designation_Eq'];
$Categorie_Eq=$enreg['Categorie_Eq'];
$Prix_Eq=$enreg['Prix_Eq'];
$Description_Eq=$enreg['Description_Eq'];
$Photo_Eq=$enreg['Photo_Eq'];
$Nom_T=$enreg['Nom_T'];
?>
                             <div class="col-sm-6 col-lg-3">
                  <div class="single_team_member single-home-blog">
                     <div class="card">
                        <img src="../uploadEq/<?php echo $Photo_Eq;?>"  width="700" height="400" class="card-img-top" alt="blog">
                        <div class="card-body">
                           <div class="tean_content">
                             
                              <a href="blog.html">
                                 <h5 class="card-title"><?php echo $Designation_Eq;?></h5>
                              </a>
                               <p><h5 class="card-title"><?php echo $Categorie_Eq;?></h5></p>
                              <p><?php echo $Nom_T;?></p>
                               <p><?php echo $Prix_Eq;?></p>
                                <p><?php echo $Description_Eq;?></p>
                           </div>
                           <div class="tean_right_content">
                              <div class="header_social_icon">
                                 <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li>
                                       <a href="#"> <i class="ti-twitter"></i></a>
                                    </li>
                                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
                <?php $enreg=mysql_fetch_array($res);
			   $Ref_Eq=$enreg['Ref_Eq'];
$Designation_Eq=$enreg['Designation_Eq'];
$Categorie_Eq=$enreg['Categorie_Eq'];
$Prix_Eq=$enreg['Prix_Eq'];
$Description_Eq=$enreg['Description_Eq'];
$Photo_Eq=$enreg['Photo_Eq'];
$Nom_T=$enreg['Nom_T'];
?>
                             <div class="col-sm-6 col-lg-3">
                  <div class="single_team_member single-home-blog">
                     <div class="card">
                        <img src="../uploadEq/<?php echo $Photo_Eq;?>" width="700" height="400"  class="card-img-top" alt="blog">
                        <div class="card-body">
                           <div class="tean_content">
                              
                              <a href="blog.html">
                                 <h5 class="card-title"><?php echo $Designation_Eq;?></h5>
                              </a>
                              <p><h5 class="card-title"><?php echo $Categorie_Eq;?></h5></p>
                              <p><?php echo $Nom_T;?></p>
                               <p><?php echo $Prix_Eq;?></p>
                                <p><?php echo $Description_Eq;?></p>
                           </div>
                           <div class="tean_right_content">
                              <div class="header_social_icon">
                                 <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li>
                                       <a href="#"> <i class="ti-twitter"></i></a>
                                    </li>
                                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
           <?php }?>
            </div>
         </div>
      </section>
    <!-- upcoming_event part start-->	
    <!-- gallery_part part start-->
    <section class="gallery_part">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <h4>Our Gallery</h4>
                        <h2>Terrains de FOOTBALL</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="gallery_part_item">
                        <div class="grid">
                            <div class="grid-sizer"></div>
                            <a  class="grid-item grid-item--height1 bg_img img-gal" style="background-image:url(img/img7.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>Terrains en herbe</h3>
                                            <p>Autres synthétiques et  hybrides</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_2.png" class="grid-item grid-item--height2 bg_img img-gal" style="background-image:url(img/img6.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>De lumière artificielle pour les matches en soirée. </h3>
                                            <p>Tout le matériel est approuvé par le propriétaire et répond aux normes de jeu.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_3.png" class="grid-item grid-item--width2 grid-item--height2 bg_img img-gal" style="background-image:url(img/img3.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>TERRAIN EN HERBE
 
</h3>
                                            <p>Ce genre de terrain fournit des changements de rythme plus variés. C'est le meilleur endroit pour démontrer l'habileté avec un ballon à ses pieds. </p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a class="grid-item grid-item--height3 bg_img img-gal" style="background-image:url(img/background.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>TERRAIN HYBRIDE</h3>
                                            <p>
Dribbler les lésions avec la dernière technologie aux pieds.Le gazon hybride est composé d'une couche inférieure d'herbe synthétique et d'une couche supérieure de gazon. </p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_5.png" class="grid-item grid-item--height3 bg_img img-gal" style="background-image:url(img/bund.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>TERRAIN SYNTHÉTIQUE</h3>
                                            <p>Belle conduite de la balle et des rebons sans surprises. Le terrain synthétique est le plus uniforme et sa dégradation est pratiquement imperceptible.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_6.png" class="grid-item grid-item--width2 grid-item--height2 bg_img img-gal" style="background-image:url(img/img7.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>La compétitivité sur le terrain</h3>
                                            <p>Les terrains sont  ouvertes aux entreprises, aux groupes et aux associations qui souhaitent organiser un tournoi pour favoriser des réunions internationales ou teambuilding.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_7.png" class="grid-item grid-item--height2 bg_img img-gal" style="background-image:url(img/img1.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>Tournois, matches ou entraînements </h3>
                                            <p>des terrains de football professionnels de différentes caractéristiques et capacités pour accueillir des groupes et collectivités qui souhaitent organiser un tournoi sportif</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                            <a href="img/gallery/gallery_item_8.png" class="grid-item grid-item--height1 bg_img img-gal" style="background-image:url(img/camprugbi539.jpg)">
                                <div class="single_gallery_item">
                                    <div class="single_gallery_item_iner">
                                        <div class="gallery_item_text">
                                            <h3>LOCATION DE TERRAINS SPORTIFS</h3>
                                            <p>Les équipes non-professionnelles peuevent de réaliser leurs tournois . Lors des tournois, les équipes se réunissent pendant quelques jours pour jouer au football et augmenter leur performance, à la fois individuellement et collectivement. Nous développons l'envie de se dépasser à travers le respect et l'esprit et le sport. Ces tournois permettent également de découvrir d' autres styles de jeu et d'échanger des expériences et connaissances entre joueurs, entraîneurs et assistants.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- gallery_part part end-->

    <!-- blog_part part start-->
    <section class="blog_part section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5">
                    <div class="section_tittle text-center">
                        <h4>Evenements </h4>
                        <h2>Actualités sportifs</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img     src="img/Football.jpg"class="card-img-top" alt="blog">
                            <div class="card-body">
                               
                                
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img     src="img/background.jpg" class="card-img-top" alt="blog">
                            <div class="card-body">
                                <span class="dot"></span>
                              
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img   src="img/bund2.png"class="card-img-top" alt="blog">
                            <div class="card-body">
                                
                                
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img    src="img/img12.png"class="card-img-top" alt="blog">
                            <div class="card-body">
                               
                                
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img    src="img/img11.png" class="card-img-top" alt="blog">
                            <div class="card-body">
                                <span class="dot"></span>
                              
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog">
                        <div class="card">
                            <img    src="img/img10.png" class="card-img-top" alt="blog">
                            <div class="card-body">
                                
                                
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4 col-xl-4">
                    <div class="single-home-blog d-none d-sm-block d-lg-none">
                        <div class="card">
                            <img    src="img/2.jpg"class="card-img-top" alt="blog">
                            <div class="card-body">
                               
                               
                                <a href=""></a>
                                <ul>
                                    <li> <span class="ti-layers"></span>Sports news</li>
                                    <li> <span class="ti-comments"></span>2 Comments</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- blog_part part end-->

   

    <!-- footer part start-->
    <section class="footer-area section_padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-sm-4 mb-4 mb-xl-0 single-footer-widget">
                    <h4>D'autres produits</h4>
                    <ul>
                        <li><a href="#">Matches amicaux</a></li>
                        <li><a href="#">Locations de terrains  </a></li>
                        <li><a href="#">Compétition</a></li>
                        <li><a href="#">Association Sportives</a></li>
                    </ul>
                </div>
                <div class="col-xl-2 col-sm-4 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Abonnés</h4>
                    <ul>
                        <li><a href="#">Joueurs sur l'app</a></li>
                        <li><a href="#">Composition de l'équipe</a></li>
                        <li><a href="#">Attaquant</a></li>
                        <li><a href="#">Défenseur</a></li>
                    </ul>
                </div>
                <div class="col-xl-2 col-sm-4 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Terrains de football</h4>
                    <ul>
                        <li><a href="#">Mini stade</a></li>
                        <li><a href="#">Sport dans la Ville</a></li>
                        <li><a href="#">Salles de cours</a></li>
                        <li><a href="#">Terrains de beach soccer</a></li>
                    </ul>
                </div>
                <div class="col-xl-2 col-sm-4 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Tournois</h4>
                    <ul>
                        <li><a href="#">Stages</a></li>
                        <li><a href="#">Tournois collectifs</a></li>
                        <li><a href="#">Tournois d'entreprise</a></li>
                        <li><a href="#">Tournois de clubs</a></li>
                    </ul>
                </div>
                <div class="col-xl-4 col-sm-8 col-md-8 mb-4 mb-xl-0 single-footer-widget">
                    <h4> Optimisation des infrastructures sportives</h4>
                    <p>ce site a pour but de permettre aux joueurs de réserver des terrains de football publics et privés, le plus proche possible de leur domicile et au meilleur prix.</p>
              
                </div>
            </div>
        </div>
    </section>
    <footer class="copyright_part">
        <div class="container">
            <div class="row align-items-center">
               
                <div class="col-lg-4 col-md-12 text-center text-lg-right footer-social">
                    <a href="#"><i class="ti-facebook"></i></a>
                    <a href="#"> <i class="ti-twitter"></i> </a>
                    <a href="#"><i class="ti-instagram"></i></a>
                    <a href="#"><i class="ti-skype"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

    <!-- jquery plugins here-->
    <!-- jquery -->
    <script src="js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- aos js -->
    <script src="js/aos.js"></script>
    <!-- easing js -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/masonry.pkgd.js"></script>
    <!-- particles js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- carousel js -->
    <script src="js/swiper.min.js"></script>
    <!-- swiper js -->
    <script src="js/swiper_custom.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>



</body>

</html>