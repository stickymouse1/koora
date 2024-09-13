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
<script language="javascript">

function ajouter_modul()
{
var trouve=false;
for (i=0;i<document.form.Article_Choisi.length;i++)
{
if(document.form.Article_Choisi.options[i].text==document.form.liste_Article.options[document.form.liste_Article.options.selectedIndex].text)
trouve=true;
}
if((!trouve)&&(document.form.liste_Article.options[document.form.liste_Article.options.selectedIndex].value!="Choisir"))
{
var o=new Option(document.form.liste_Article.options[document.form.liste_Article.options.selectedIndex].text,document.form.liste_Article.options[document.form.liste_Article.options.selectedIndex].value);
document.form.Article_Choisi.options[document.form.Article_Choisi.length]=o;}
else
{
document.getElementById("msg1").innerHTML='';
document.getElementById("msg").innerHTML='<strong><font color="#FF0000">Equipe existe déja</font></strong>';
//alert("Existe deja ou");
}
}


//*************************************************
function enlever_modul(f){
if(f.Article_Choisi.options.selectedIndex<0)
{
document.getElementById("msg").innerHTML='';
document.getElementById("msg1").innerHTML='<strong><font color="#FF0000"> Pas d equipe selectionné</font></strong>';
}
else
{
for(var i=f.Article_Choisi.selectedIndex;i<f.Article_Choisi.length-1;i++){
f.Article_Choisi.options[i].text=f.Article_Choisi.options[i+1].text;
f.Article_Choisi.options[i].value=f.Article_Choisi.options[i+1].value;}
f.Article_Choisi.length=f.Article_Choisi.length-1;
}
}
function afficher_detail()
{
Nom_M=$("#Article_Choisi").val();
Nom_Mod=Nom_M.replace(" ", "");
}
function valider(){
var temp="";
var Nom_M="";
for(var i=0;i<form.Article_Choisi.length;i++)
{
//Nom_M=$("#Nom_E").val();
Nom_M=document.form.Article_Choisi.options[i].value.replace(" ", ":");
temp+=Nom_M+"/";
}
document.form.hi_temp.value=temp;
//alert(temp);
document.form.submit();
}

</script>

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
  width: 220px;
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
input[type=text], select, [type=password], [type=file], [type=date], [type=number], [type=time]
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
                                        <a  href="mon_panier.php" class="nav-link">Panier</a>
                                    </li>
                                     <li class="nav-item">
                                        <a   href="abonnement.php" class="nav-link">Abonnement</a>
                                    </li>
                                     <li class="nav-item">
                                        <a   href="reservation.php"class="nav-link">Réservation</a>
                                    </li>
                                     <li class="nav-item">
                                        <a    href="Participation.php"class="nav-link">Participation</a>
                                    </li>
                                     <li class="nav-item">
                                        <a     href="commande.php"class="nav-link">Commande</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Terrains
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                         
                                            <a class="dropdown-item"  href="terrains.php">Liste de terrains</a>
                                             <a class="dropdown-item"  href="terrains.php">Réserver terrain</a>
                                              <a class="dropdown-item"  href="terrains.php">S'abonner à un terrain</a>
                                         
                                        </div>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Equipes
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item"   href="equipe.php">Ajout d'équipe</a>
                                            <a class="dropdown-item"    href="equipes.php">Liste d'équipes</a>
                                            
                                        </div>
                                    </li>
                                     <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Compétitions
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                           
                                            <a class="dropdown-item"   href="competitions.php">Liste de compétitions</a>
                                             <a class="dropdown-item"   href="competitions.php">Participer à une compétition</a>
                                        </div>
                                    </li>
                                           <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Equipements
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                          
                                            <a class="dropdown-item"    href="equipements.php">Liste d'équipements</a>
                                             <a class="dropdown-item"     href="mon_panier.php">Panier</a>
                                              <a class="dropdown-item"     href="commande.php">Passer commande</a>
                                             
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
        
           <div align="center">
            <?php //$Id_T=$_GET['Id_T'];?>
  <form id="form1" name="form" method="post" action="abonner_t'.php" enctype="multipart/form-data">
  <p><i><strong><font face='Trebuchet MS, Arial, Helvetica, sans-serif' size='+1' color='#FF9966'><h1>S'abonner à  vos espaces</h1></font></strong></i></p>
  <p><h2><i><font face='Trebuchet MS, Arial, Helvetica, sans-serif'  color='#FF9966'>Participer à des tournois </font></i></h2></p>
     <p>
   <label for="fname"><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Terrain </font></i></label>
  <select name="Id_T" required>
  <option value="">[Choisir]</option>
        <?php
		   	
   require_once'../connexion.php';

$rq="SELECT * FROM terrain,`proprietaire` where `terrain`.`Id_P`=`proprietaire`.`Id_P` ";
$result= mysql_query ($rq) or die ("Select impossible");
while ($dt=mysql_fetch_row($result))
{
 // Remplir la liste déroulante des catégorie

 
 // Remplir la liste déroulante des catégorie
 echo "\t\t<option value=".($dt[0])." >".($dt[1])."</option>";
	

 }
?>
    </select>
 
   
  </p>
   <input type="hidden" name="hi_temp"  value="">
<p>  <fieldset style="width: 1000px">
	<legend><strong><font face='Century Gothic' color='#3a9dca' size='+4'   >Choix d'équipes: </font></strong></legend>
   <br><br><div id="msg"></div> <div id="msg1"></div><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Liste vos équipes sportifs  </font></i>
        
		  <select name="liste_Article" id="liste_Article" size ='1' multiplestyle='width: 142' class="select_class11" >
             <option value='' >[Choisir]</option>
		   <?php
		 require_once'../connexion.php';
// Séléction de tous les enregistrements de la table Catégorie
$rq="SELECT * FROM `equipe`,`appartient`,sportif where `sportif`.Id_S=appartient.Id_S and `appartient`.Id_Eq=`equipe`.Id_Eq  and  Email_S='$Login' and Pwd_S='$Pwd'";
$result= mysql_query ($rq) or die ("Select impossible");
while ($dt=mysql_fetch_row($result))
{
 // Remplir la liste déroulante des catégorie
 echo "\t\t<option value=".($dt[0]).">".($dt[1])."</option>";

 }
?>
                      </select>
           
			 <input type="button" name="button" id="button" onClick="ajouter_modul()" class="button button1"  value=" >>>">           
				 
			  <input  name="button" id="button" type="button" onClick="enlever_modul(this.form)"  class="button button1"  value=" <<<">
                <br><br>
			<i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Equipes retenues </font></i>
		    <select name="Article_Choisi" id="Article_Choisi"  multiplestyle='width: 150'  class="select_class1" required  >
				               
      </select></fieldset></p>
 
  <p>
   <label for="fname"><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Saison sportive </font></i></label>
   <select name="Id_SP_Ab" required>
  <option value="">[Choisir]</option>
        <?php
		   	
   require_once'../connexion.php';

$rq="SELECT * FROM `saison_sportive`  ORDER BY `saison_sportive`.`Saison` ASC ";
$result= mysql_query ($rq) or die ("Select impossible");
while ($dt=mysql_fetch_row($result))
{
 // Remplir la liste déroulante des catégorie
 
 // Remplir la liste déroulante des catégorie
 echo "\t\t<option value=".($dt[0])." >".($dt[1])."</option>";
	

 }
?>
    </select>
  </p>
  <p>
   <label for="fname"><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Type d'abonnement </font></i></label>
      <select name="Type_Ab" required>
  <option value="">[Choisir]</option>
        <option >Mensuel</option>
          <option >Annuel</option>
            <option >Weekend</option>
    </select>
  </p>
 <p>
   <label for="fname"><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Date de première séance </font></i></label>
    <input type="date" id="fname" name="Date_PS_Ab"  placeholder="Saisir l'heure de match" required>
  </p>
  
<p>
   <label for="fname"><i><font 
  face="Times New Roman, Times, serif" size="+2" color="#000033">Détails  </font></i></label>
     <textarea name="Details_Ab" placeholder="Saisir les détails d'abonnement .." required cols="150" rows="10"></textarea>
  </p>
 
 
 
  
  <p>&nbsp;</p>
 
  <p>
<button class="button"  type="submit" style="vertical-align:middle" onClick="return valider();"><span>S'abonner </span></button>    <button class="button"  type="reset" style="vertical-align:middle"><span>Annuler </span></button>

 
  </p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>

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
                    <h4>D'autres equipements</h4>
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