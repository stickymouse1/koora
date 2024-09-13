-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 31 Juillet 2022 à 08:13
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ca1`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS `abonnement` (
  `Id_Ab` int(11) NOT NULL AUTO_INCREMENT,
  `Type_Ab` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Etat_AB` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date_PS_Ab` date NOT NULL,
  `Date_D_Ab` date NOT NULL,
  `Details_Ab` text COLLATE utf8_unicode_ci NOT NULL,
  `Id_SP_Ab` int(11) NOT NULL,
  `Id_T` int(11) NOT NULL,
  PRIMARY KEY (`Id_Ab`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`Id_Ab`, `Type_Ab`, `Etat_AB`, `Date_PS_Ab`, `Date_D_Ab`, `Details_Ab`, `Id_SP_Ab`, `Id_T`) VALUES
(1, 'Mensuel', 'En attente', '2020-01-10', '2020-01-14', 'Equipes de 6 joueurs et on veut que l entrainement soit toujours le soir', 2, 2),
(2, 'Mensuel', 'En attente', '2020-01-15', '2020-01-20', 'je veux que le match soit a 16h. sans retard', 3, 5),
(3, 'Annuel', 'En attente', '2020-01-20', '2021-03-28', 'Veuillez m ''envoyer l''abonnement le plus tÃ´t possible', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `Id_A` int(11) NOT NULL AUTO_INCREMENT,
  `Email_A` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pwd_A` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_A`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`Id_A`, `Email_A`, `Pwd_A`) VALUES
(1, 'lassaad@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE IF NOT EXISTS `appartient` (
  `Id_S` int(11) NOT NULL,
  `Id_Eq` int(11) NOT NULL,
  PRIMARY KEY (`Id_S`,`Id_Eq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `appartient`
--

INSERT INTO `appartient` (`Id_S`, `Id_Eq`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `Num_Cde` int(11) NOT NULL AUTO_INCREMENT,
  `Date_E_Cde` date NOT NULL,
  `Date_L_Cde` date NOT NULL,
  `Details_Cde` text COLLATE utf8_unicode_ci NOT NULL,
  `Etat_Cde` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_S` int(11) NOT NULL,
  PRIMARY KEY (`Num_Cde`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`Num_Cde`, `Date_E_Cde`, `Date_L_Cde`, `Details_Cde`, `Etat_Cde`, `Id_S`) VALUES
(1, '2022-01-14', '2022-01-20', 'je voudrais payer especes', 'En attente', 1),
(3, '2022-01-20', '2022-01-28', 'pointure 41 ', 'En attente', 1),
(4, '2022-03-28', '2022-04-04', 'Veuillez me communiquer les Ã©quipements le plus tÃ´t possible', 'En attente', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande_equipement`
--

CREATE TABLE IF NOT EXISTS `commande_equipement` (
  `Ref_Eq` int(11) NOT NULL,
  `Num_Cde` int(11) NOT NULL,
  PRIMARY KEY (`Ref_Eq`,`Num_Cde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `commande_equipement`
--

INSERT INTO `commande_equipement` (`Ref_Eq`, `Num_Cde`) VALUES
(1, 1),
(1, 4),
(2, 3),
(7, 4),
(12, 4);

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

CREATE TABLE IF NOT EXISTS `competition` (
  `Id_Cp` int(11) NOT NULL AUTO_INCREMENT,
  `Date_D_Pp` date NOT NULL,
  `Date_F_Cp` date NOT NULL,
  `Nom_Cp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Type_Cp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Affiche_Cp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_T` int(11) NOT NULL,
  PRIMARY KEY (`Id_Cp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `competition`
--

INSERT INTO `competition` (`Id_Cp`, `Date_D_Pp`, `Date_F_Cp`, `Nom_Cp`, `Type_Cp`, `Affiche_Cp`, `Id_T`) VALUES
(1, '2022-01-13', '2022-01-19', 'Tournoi des champions', 'Tournoi amical', 'ty-ly-chargement-1-.jpg', 2),
(2, '2022-01-01', '2022-01-10', 'Tournoi des jeunes', 'Tournoi amical', 'ty-ly-chargement-2-.jpg', 1),
(4, '2022-01-20', '2022-02-05', 'tournoi des footballeurs', 'Tournoi amical', '7.jpg', 4),
(5, '2022-01-23', '2022-02-04', 'tournoi de football', 'Tournoi amical', '2.jpg', 5),
(6, '2022-02-02', '2022-02-20', 'tournoi des entreprises', 'Tournoi nationnal', '3.jpg', 6),
(7, '2022-02-01', '2022-03-31', 'tournois collectifs', 'Tounroi rÃ©gional', '8.jpg', 7),
(8, '2022-02-01', '2022-03-31', 'tournois collectifs', 'Tounroi rÃ©gional', '8.jpg', 7),
(9, '2022-01-31', '2022-02-22', 'tournois de club', 'Tournoi amical', '15.jpg', 8),
(10, '2022-03-06', '2022-03-07', 'Tournoi Mini-foot', 'Tournoi amical', 'minifoot.jpg', 9);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `Id_Eq` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Eq` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Logo_Eq` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date_C_Eq` date NOT NULL,
  PRIMARY KEY (`Id_Eq`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`Id_Eq`, `Nom_Eq`, `Logo_Eq`, `Date_C_Eq`) VALUES
(1, 'Sport et travail Zitouna', 'img.png', '2019-09-01'),
(2, 'sport travail enda tamweel ', '12466322-945400412217701-1376221995521623777-o.jpg', '2011-05-02'),
(3, 'Sport travail Assurance Biat', '14184569-510154499180987-4241171583905305570-n.png', '2003-04-04'),
(4, 'Sport travail Saida', '80469528-2712176558804960-8862147463146897408-n.png', '1999-05-08'),
(5, 'Sport travail Sagemcom', '15192620-10209291704264385-6247122995248318698-n.jpg', '2005-09-01'),
(6, 'Sport travail BH Leasing', '82080990-2926205940763845-1514264920059805696-o.jpg', '1996-08-04');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

CREATE TABLE IF NOT EXISTS `equipement` (
  `Ref_Eq` int(11) NOT NULL AUTO_INCREMENT,
  `Designation_Eq` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Categorie_Eq` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Prix_Eq` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description_Eq` text COLLATE utf8_unicode_ci NOT NULL,
  `Photo_Eq` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_T` int(11) NOT NULL,
  PRIMARY KEY (`Ref_Eq`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `equipement`
--

INSERT INTO `equipement` (`Ref_Eq`, `Designation_Eq`, `Categorie_Eq`, `Prix_Eq`, `Description_Eq`, `Photo_Eq`, `Id_T`) VALUES
(1, 'Gant de gardien', 'Autres', '80 TND', 'Les gants de gardien Reusch Fit Control SD  ont une paume ultra solide possÃ©dant des propriÃ©tÃ©s amortissantes et agrippantes . ils sont Ã©laborÃ©s pour les joueurs dÃ©butants qui jouent sur les terrains naturels et les terrains artificiels. La coupe Expanse consiste en une paume plate , accompagnÃ©e d''u pouce lÃ©gÃ¨rement enveloppÃ© , pour crÃ©er une surface de contact Ã©largie ', '1.jpg', 2),
(2, 'Crampons', 'Pair de chaussures', '140d', 'Les Copa Mundial de chez Adidas offrent un toucher de balle et un maintient exceptionnels. Ces chaussures de football pour homme sont prÃ©vues pour une pratique sur terrain sec. CaractÃ©ristiques : coloris noir / blanc, tige basse en cuir, fermeture par lacet.', '9.jpg', 4),
(3, 'T-shirt', 'T-shirt', '70d', 'T-shirt Adidas, Coton 100%, couleur Noir, Fw19, code produit Cw1202', '10.jpg', 4),
(4, 'Ballon', 'Ballon', '90d', 'Le graphisme et la soliditÃ© de ce ballon Adidas Glider 2 en feront ton outils principal pour ton entrainement quotidien. Enveloppe 100% Tpu Vessie caoutchouc Cousu machine Adidas Badge of Sport Vendue ...', '11.jpg', 4),
(5, 'Ballon', 'Ballon', '50d', 'Ballon d''entraÃ®nement en Pvc\r\nTaille : Ã˜ 23 cm\r\nMatÃ©riaux : Pvc\r\nBallon de foot idÃ©al pour les entraÃ®nements ou simplement pour le plaisir des tirs.\r\n', '12.jpg', 5),
(6, 'crampons', 'Pair de chaussures', '120', 'Avec la evoPOWER 2.3 Mixed pour les pelouses ramollies, tu pourras amÃ©liorer ta force et ta prÃ©cision de tir. Les designs powerCELL hautement fonctionnels maximisent en combinaison avec la doublure AccuFoam lÃ©gÃ¨re la performance et la prÃ©cision pendant les tirs et amÃ©liore le jeu.', '103852-01.jpg', 5),
(7, 'Ballon', 'Ballon', '69 Dt', 'AmÃ©liorez votre jeu avec le ballon de Puma une Ã©toile. Ce ballon d''entraÃ®nement de football all-ages est adaptÃ©e pour les jeux rÃ©crÃ©atifs avec les amis et partenaires. ', '8476201-2.jpg', 6),
(8, 'crampons', 'Pair de chaussures', '90 Dt', ' Chaussures de football Ã  lacets et Ã  crampons mÃ©talliques\r\n Dessus en cuir Ã  surpiqÃ»res.\r\n', 'mega-lutfs2079.jpg', 6),
(9, 'Gant de gardien', 'Autres', '50 Dt', ' Gants parfait pour les matchs que vous souhaitez gagner.\r\n Parfaite symbiose de douceur, durabilitÃ© et absorption des chocs.\r\n Solid Series : DurabilitÃ© et Grip sur terrains synthÃ©tiques et stabilisÃ©s. .\r\n Motif sÃ©rigraphiÃ©.\r\n Serrage avec attache scratch.\r\n Logo embossÃ©.\r\n Une couleur super tendance.', 'v54056e.jpg', 6),
(10, 'T-shirt', 'T-shirt', '50 Dt', 'Adidas Adizero T-shirt. IdÃ©al pour ceux qui aiment s''entraÃ®ner avec style et toutes les technologies fournies par les produits Adidas. Logo fromtal et dÃ©tails en noir brillant Technologie Adizero, micro tissu Ã  pois pour une ventilation et un refroidissement accrus. Collier Ã©lastique Motif gÃ©omÃ©trique 3 bandes latÃ©rales 100% Polyester', '8125301-1.jpg', 7),
(11, 'crampons', 'Pair de chaussures', '145d', 'Chaussure de football Ã  crampon adidas Predator 19.3 FG pour adulte. Chaussure en fil cousu Ã  utiliser sur les terrains naturels, Chaussures d''entrÃ©e de gamme de couleur Active red-Solar red-Core black pour les joueurs qui ont le contrÃ´le du jeu.', 'bota-adidas-predator-19-3-fg-active-red-solar-red-core-black-1.jpg', 7),
(12, 'short', 'Short', '50 Dt', 'Il dispose d''une taille Ã©lastique avec un cordon de serrage ainsi que des poches zippÃ©es sur le devant.\r\nLe short est composÃ© Ã  100% de polyester.', 'harden-short-rouge-homme-adidas.jpg', 7),
(13, 'short', 'Short', '60 Dt', 'Taille Ã©lastique, Cordons de serrage, Nike Breathe fabric, DotÃ© de la technologie Dri-Fit, Ã‰cusson brodÃ© de l''Ã©quipe, Logo Nike, produit garantie sans contrefacon expÃ©diÃ© de France, 100% Poyester, Lavable en Machine.', 'n7ux.jpg', 8),
(14, 'crampons', 'Pair de chaussures', '160 Dt', 'Forme de chaussette\r\nConÃ§ues pour les terrains naturels secs avec des crampons moulÃ©s\r\nLacets plats noirs\r\nTige en synthÃ©tique gauffrÃ©', 'chaussures-de-foot-noir-rouge-homme-nike-magista-onda-ii-dynamic.jpg', 8),
(15, 'Ballon', 'Ballon', '80 Dt', 'Ce produit existe en 5 couleurs, ceci peut varier en fonction de la disponibilitÃ©. Vous pouvez retrouver les autres couleurs sur Rue du Commerce en utilisant le code produit: Utbs1461.\r\n', 'mega-lutbs1461.jpg', 8),
(16, 'Nike VAPOR 13 PRO', 'Pair de chaussures', '220 DT', 'Pointure: 41\r\nQuantitÃ©: 1', 'nike-vapor-13-pro.jpg', 9);

-- --------------------------------------------------------

--
-- Structure de la table `equipe_abonnees`
--

CREATE TABLE IF NOT EXISTS `equipe_abonnees` (
  `Id_Eq` int(11) NOT NULL,
  `Id_Ab` int(11) NOT NULL,
  PRIMARY KEY (`Id_Eq`,`Id_Ab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `equipe_abonnees`
--

INSERT INTO `equipe_abonnees` (`Id_Eq`, `Id_Ab`) VALUES
(1, 1),
(1, 2),
(1, 3),
(7, 15),
(8, 15);

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

CREATE TABLE IF NOT EXISTS `jouer` (
  `Id_Eq` int(11) NOT NULL,
  `Id_Cp` int(11) NOT NULL,
  PRIMARY KEY (`Id_Eq`,`Id_Cp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `jouer`
--

INSERT INTO `jouer` (`Id_Eq`, `Id_Cp`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE IF NOT EXISTS `panier` (
  `Id_P` int(11) NOT NULL AUTO_INCREMENT,
  `Date_C_P` date NOT NULL,
  `Id_S` int(11) NOT NULL,
  PRIMARY KEY (`Id_P`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`Id_P`, `Date_C_P`, `Id_S`) VALUES
(1, '2020-01-14', 1),
(2, '2020-01-30', 2),
(3, '2020-01-30', 2),
(4, '2020-01-30', 2),
(5, '2021-02-04', 9),
(6, '2021-02-04', 9),
(7, '2021-03-28', 1),
(8, '2021-03-28', 1),
(9, '2021-04-01', 13),
(10, '2021-04-01', 13),
(11, '2021-04-08', 14),
(12, '2021-04-08', 14),
(13, '2021-05-17', 4);

-- --------------------------------------------------------

--
-- Structure de la table `proprietaire`
--

CREATE TABLE IF NOT EXISTS `proprietaire` (
  `Id_P` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Adr_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Tel_P` int(11) NOT NULL,
  `Email_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pwd_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Photo_P` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_P`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `proprietaire`
--

INSERT INTO `proprietaire` (`Id_P`, `Nom_P`, `Prenom_P`, `Adr_P`, `Tel_P`, `Email_P`, `Pwd_P`, `Photo_P`) VALUES
(1, 'houssem', 'dahri', 'Tunis', 22456987, 'houssem@gmail.com', 'azerty', 'person-2.jpg'),
(2, 'Khaled', 'Moulhi', 'Ariana', 22456987, 'khaled@gmail.com', 'azerty', 'img.jpg'),
(3, 'sabri', 'yaakoubi', 'Tunis', 22456987, 'sabri@gmail.com', 'azerty', 'is.jpg'),
(4, 'Youssef', 'Mouihbi', 'Rue 2070 la Marsa', 22456987, 'Youssef@gmail.com', 'azerty', '25488399-1900731529956281-1741014909770838084-o.jpg'),
(5, 'Bilel', 'Touihri', 'Mannouba', 22456987, 'bilel@gmail.com', 'azerty', 'is-2-.jpg'),
(6, 'sami', 'cherni', 'Ben Arous', 22456987, 'sami@gmail.com', 'azerty', 'is-3-.jpg'),
(7, 'Mohamed', 'Younsi', 'Ariana', 22456987, 'mohamed@gmail.com', 'azerty', 'is-4-.jpg'),
(8, 'iheb', 'messoudi', 'Rades', 21347896, 'iheb@gmail.com', '12345678', 'client-1.png');

-- --------------------------------------------------------

--
-- Structure de la table `regrouper`
--

CREATE TABLE IF NOT EXISTS `regrouper` (
  `Id_P` int(11) NOT NULL,
  `Ref_Eq` int(11) NOT NULL,
  `Quantite` int(11) NOT NULL,
  PRIMARY KEY (`Id_P`,`Ref_Eq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `regrouper`
--

INSERT INTO `regrouper` (`Id_P`, `Ref_Eq`, `Quantite`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 5, 1),
(4, 6, 1),
(5, 3, 1),
(6, 6, 1),
(7, 12, 1),
(8, 7, 1),
(9, 6, 1),
(10, 7, 1),
(11, 6, 1),
(12, 7, 1),
(13, 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `Id_R` int(11) NOT NULL AUTO_INCREMENT,
  `Id_S` int(11) NOT NULL,
  `Id_T` int(11) NOT NULL,
  `Date_R` date NOT NULL,
  `Etat_R` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date_M` date NOT NULL,
  `Heure_M` time NOT NULL,
  `Details_R` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_R`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`Id_R`, `Id_S`, `Id_T`, `Date_R`, `Etat_R`, `Date_M`, `Heure_M`, `Details_R`) VALUES
(1, 1, 2, '2022-01-14', 'En attente', '2022-01-31', '20:00:00', 'Veuillez me confirmer la reservation le plus tot possible'),
(2, 1, 5, '2022-01-20', 'En attente', '2022-01-25', '16:00:00', 'confirmation le plutot possible'),
(3, 1, 2, '2022-01-20', 'En attente', '2022-03-22', '20:00:00', 'confirmation'),
(4, 8, 2, '2022-07-06', 'En attente', '2022-07-12', '09:00:00', 'veuillez me confirmer la rÃ©servation le plus tÃ´t possible'),
(5, 1, 1, '2022-03-28', 'En attente', '2022-04-01', '10:00:00', 'DurÃ©e de match 2 Heures');

-- --------------------------------------------------------

--
-- Structure de la table `saison_sportive`
--

CREATE TABLE IF NOT EXISTS `saison_sportive` (
  `Id_SP` int(11) NOT NULL AUTO_INCREMENT,
  `Saison` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_SP`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `saison_sportive`
--

INSERT INTO `saison_sportive` (`Id_SP`, `Saison`) VALUES
(1, '2018-2019'),
(2, '2019-2020'),
(3, '2020-2021'),
(4, '2017-2018'),
(5, '2021-2022');

-- --------------------------------------------------------

--
-- Structure de la table `sportif`
--

CREATE TABLE IF NOT EXISTS `sportif` (
  `Id_S` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Prenom_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date_N_S` date NOT NULL,
  `Adr_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Tel_S` int(11) NOT NULL,
  `Email_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Pwd_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Photo_S` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id_S`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `sportif`
--

INSERT INTO `sportif` (`Id_S`, `Nom_S`, `Prenom_S`, `Date_N_S`, `Adr_S`, `Tel_S`, `Email_S`, `Pwd_S`, `Photo_S`) VALUES
(1, 'adem', 'Souisi', '2000-01-18', 'Ariana', 21456987, 'adem@gmail.com', 'azerty', '524500646.jpg'),
(2, 'zied', 'tounsi', '1996-05-22', 'mannouba', 22456987, 'zied@gmail.com', 'azerty', 'is-1-.jpg'),
(3, 'nour', 'cherni', '1990-06-03', 'Ariana', 22456987, 'nour@gmail.com', 'azerty', 'is.jpg'),
(4, 'nizar', 'heshmi', '1994-05-31', 'Ben Arous', 22456987, 'nizar@gmail.com', 'azerty', 'is-1-.jpg'),
(5, 'Makrem', 'chaouachi', '1992-06-22', 'Maneah', 22456987, 'makrem@gmail.com', 'azerty', 'is-2-.jpg'),
(6, 'rayen', 'touati', '1986-09-03', 'omran supÃ©rieur', 22456987, 'rayen@gmail.com', 'azerty', 'is-3-.jpg'),
(9, 'youssef', 'saadaoui', '1997-01-12', 'Ariana', 27343750, 'youssef@gmail.Com', '12345', 'person-2.jpg'),
(12, 'jihed', 'messoudi', '1995-05-02', 'Rades', 98765432, 'jihed@gmail.com', 'azerty', 'images-8-.jpg'),
(13, 'Nathan', 'Lema', '2000-04-06', 'Ariana', 21345678, 'nathan@gmail.com', 'azerty', 'images-3-.jpg'),
(14, 'adem', 'njoumi', '2000-05-22', 'Elomrane SupÃ©rieur', 23456789, 'adem123@gmail.com', 'azerty', 'is-1-.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `terrain`
--

CREATE TABLE IF NOT EXISTS `terrain` (
  `Id_T` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_T` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Adr_T` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Maps_T` text COLLATE utf8_unicode_ci NOT NULL,
  `Categorie_T` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Prix_Location_T` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Superficie_T` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Affiche_T` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Id_P` int(11) NOT NULL,
  PRIMARY KEY (`Id_T`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `terrain`
--

INSERT INTO `terrain` (`Id_T`, `Nom_T`, `Adr_T`, `Maps_T`, `Categorie_T`, `Prix_Location_T`, `Superficie_T`, `Affiche_T`, `Id_P`) VALUES
(1, 'Terrain De Football Ooredoo', 'Avenue principale, Tunis', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3193.414148611794!2d10.218703314641624!3d36.8325562735786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd3518d4e695c5%3A0xb0712e901e75f8d4!2sTerrain%20De%20Football%20Ooredoo!5e0!3m2!1sfr!2stn!4v1578998899506!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '80 DT', '30x60m', 'IMG-20161004-153132.jpg', 1),
(2, 'Mouelhi Academy', 'V47J+84 Jardins d''El Menzah 2', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1197.0653157295183!2d10.130993307991108!3d36.86224954498395!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa2a2276e7224dcb!2sTerrain%20de%20foot%20El%20Mouelhi!5e1!3m2!1sfr!2stn!4v1578999535818!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '60 DT', '20x40m', 'ty-ly-chargement.jpg', 2),
(4, 'san siro', ' Rue du Lac Dongting Tunis', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1596.7194226499869!2d10.219995800455068!3d36.83196466069856!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd351933126101%3A0xfa377793b334ef50!2sSan%20Siro!5e0!3m2!1sfr!2stn!4v1579530251434!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '80 DT', '30x60m', '584754-TEoBuk42VKhrcmcTcCiCK7xrYt7mTaKUMgDl7ajq-yM.jpg', 3),
(5, 'Mouihbi Academy', 'Rue 2070 la Marsa', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3191.768846585517!2d10.314605514521055!3d36.8719513799339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12e2b4e87d53d2df%3A0x7db8a697ec016735!2sMouihbi%20Football%20Academy!5e0!3m2!1sfr!2stn!4v1579532839052!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '70 Dt', '30x60m', '22829036-1788564144495492-8738565342724095838-o.jpg', 4),
(6, 'five star club', 'borj twil sidi younes ariana tunis', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3189.4484311793776!2d10.135795584076075!3d36.92745010129303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12e2cc37b0d224e1%3A0x1ac32426b7f2a7e9!2sFive%20Stars%20Club!5e0!3m2!1sfr!2stn!4v1579617252946!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '80 DT', '30x60m', '67806468-1120094664857897-3709068619351588864-n.jpg', 5),
(7, 'ford stadium', ' Autoroute Tunis a CotÃ© de Masion Ford 2064 Ben Arous', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25581.477698173898!2d10.235348199999999!3d36.7301327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xeb0d756637c6ea7e!2sTerrain%20Ford!5e0!3m2!1sfr!2stn!4v1579621342948!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '80 DT', '30x60m', 'arrena.jpg', 6),
(8, 'terrain juventus menzah', 'Avenue mohamed Ali Akid 1003 tunis menzah 1', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3193.0557570353685!2d10.185458414519893!3d36.84114067994013!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd34be84e3255d%3A0x21f2e871a6ea51b7!2sJuventus%20Academy%20Tunisia%20-%20Menzah!5e0!3m2!1sfr!2stn!4v1579625171843!5m2!1sfr!2stn" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', 'TERRAIN SYNTHÃ‰TIQUE', '90 Dt', '30x60m', 'terain.jpg', 7),
(9, 'Terrain de FOOT BALL "HEDI BEN ROMDHAN"', 'RadÃ¨s', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3196.226369937005!2d10.255824514778558!3d36.76513657737332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd3601b2ec74a3%3A0xb9d80adeb6a9c3bc!2sTerrain%20de%20FOOT%20BALL%20%22HEDI%20BEN%20ROMDHAN%22!5e0!3m2!1sfr!2stn!4v1616921520257!5m2!1sfr!2stn" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', 'TERRAIN EN HERBE', '120', '60x100m', 'rades.jpg', 8);

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-04 17:10:32', '2018-05-04 15:10:32', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=235 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(3, 'blogname', 'pfe', 'yes'),
(4, 'blogdescription', 'MON BLOG ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'assilecherni@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hestia', 'yes'),
(41, 'stylesheet', 'hestia', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'fr_FR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:11:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:17:"subscribe-widgets";a:0:{}s:22:"blog-subscribe-widgets";a:0:{}s:19:"sidebar-woocommerce";a:0:{}s:15:"sidebar-top-bar";a:0:{}s:14:"header-sidebar";a:0:{}s:18:"footer-one-widgets";a:0:{}s:18:"footer-two-widgets";a:0:{}s:20:"footer-three-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1526653869;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1526656235;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1526656236;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1526656389;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1525446997;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Hestia', 'yes'),
(146, 'theme_mods_hestia', 'a:6:{i:0;b:0;s:30:"hestia_alternative_blog_layout";s:18:"blog_normal_layout";s:31:"hestia_alternative_footer_style";s:12:"black_footer";s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:10;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(150, 'hestia_sync_checkboxes_to_radio_once', '1', 'yes'),
(151, 'hestia_install', '1525447001', 'yes'),
(152, '_transient_timeout_hestia_1173versions', '1528039003', 'no'),
(153, '_transient_hestia_1173versions', 'a:50:{i:0;a:2:{s:7:"version";s:5:"1.0.6";s:3:"url";s:54:"https://downloads.wordpress.org/theme/hestia.1.0.6.zip";}i:1;a:2:{s:7:"version";s:5:"1.0.8";s:3:"url";s:54:"https://downloads.wordpress.org/theme/hestia.1.0.8.zip";}i:2;a:2:{s:7:"version";s:6:"1.0.11";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.0.11.zip";}i:3;a:2:{s:7:"version";s:6:"1.0.12";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.0.12.zip";}i:4;a:2:{s:7:"version";s:6:"1.1.19";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.19.zip";}i:5;a:2:{s:7:"version";s:6:"1.1.20";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.20.zip";}i:6;a:2:{s:7:"version";s:6:"1.1.21";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.21.zip";}i:7;a:2:{s:7:"version";s:6:"1.1.22";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.22.zip";}i:8;a:2:{s:7:"version";s:6:"1.1.23";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.23.zip";}i:9;a:2:{s:7:"version";s:6:"1.1.24";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.24.zip";}i:10;a:2:{s:7:"version";s:6:"1.1.25";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.25.zip";}i:11;a:2:{s:7:"version";s:6:"1.1.28";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.28.zip";}i:12;a:2:{s:7:"version";s:6:"1.1.29";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.29.zip";}i:13;a:2:{s:7:"version";s:6:"1.1.30";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.30.zip";}i:14;a:2:{s:7:"version";s:6:"1.1.31";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.31.zip";}i:15;a:2:{s:7:"version";s:6:"1.1.32";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.32.zip";}i:16;a:2:{s:7:"version";s:6:"1.1.33";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.33.zip";}i:17;a:2:{s:7:"version";s:6:"1.1.36";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.36.zip";}i:18;a:2:{s:7:"version";s:6:"1.1.37";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.37.zip";}i:19;a:2:{s:7:"version";s:6:"1.1.38";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.38.zip";}i:20;a:2:{s:7:"version";s:6:"1.1.39";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.39.zip";}i:21;a:2:{s:7:"version";s:6:"1.1.40";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.40.zip";}i:22;a:2:{s:7:"version";s:6:"1.1.41";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.41.zip";}i:23;a:2:{s:7:"version";s:6:"1.1.42";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.42.zip";}i:24;a:2:{s:7:"version";s:6:"1.1.43";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.43.zip";}i:25;a:2:{s:7:"version";s:6:"1.1.44";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.44.zip";}i:26;a:2:{s:7:"version";s:6:"1.1.45";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.45.zip";}i:27;a:2:{s:7:"version";s:6:"1.1.46";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.46.zip";}i:28;a:2:{s:7:"version";s:6:"1.1.47";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.47.zip";}i:29;a:2:{s:7:"version";s:6:"1.1.48";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.48.zip";}i:30;a:2:{s:7:"version";s:6:"1.1.50";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.50.zip";}i:31;a:2:{s:7:"version";s:6:"1.1.51";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.51.zip";}i:32;a:2:{s:7:"version";s:6:"1.1.52";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.52.zip";}i:33;a:2:{s:7:"version";s:6:"1.1.53";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.53.zip";}i:34;a:2:{s:7:"version";s:6:"1.1.54";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.54.zip";}i:35;a:2:{s:7:"version";s:6:"1.1.55";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.55.zip";}i:36;a:2:{s:7:"version";s:6:"1.1.56";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.56.zip";}i:37;a:2:{s:7:"version";s:6:"1.1.57";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.57.zip";}i:38;a:2:{s:7:"version";s:6:"1.1.58";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.58.zip";}i:39;a:2:{s:7:"version";s:6:"1.1.59";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.59.zip";}i:40;a:2:{s:7:"version";s:6:"1.1.60";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.60.zip";}i:41;a:2:{s:7:"version";s:6:"1.1.61";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.61.zip";}i:42;a:2:{s:7:"version";s:6:"1.1.62";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.62.zip";}i:43;a:2:{s:7:"version";s:6:"1.1.63";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.63.zip";}i:44;a:2:{s:7:"version";s:6:"1.1.65";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.65.zip";}i:45;a:2:{s:7:"version";s:6:"1.1.66";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.66.zip";}i:46;a:2:{s:7:"version";s:6:"1.1.70";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.70.zip";}i:47;a:2:{s:7:"version";s:6:"1.1.71";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.71.zip";}i:48;a:2:{s:7:"version";s:6:"1.1.72";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.72.zip";}i:49;a:2:{s:7:"version";s:6:"1.1.73";s:3:"url";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.73.zip";}}', 'no'),
(154, 'hestia_time_activated', '1525447003', 'yes'),
(155, 'hestia_had_elementor', 'no', 'yes'),
(172, '_transient_timeout_hestia_t_elementor', '1527258646', 'no'),
(173, '_transient_hestia_t_elementor', 'The most advanced frontend drag &amp; drop page builder', 'no'),
(177, '_site_transient_timeout_browser_a6ac7bff18fe0198c0d41bba47e744f6', '1526999458', 'no'),
(178, '_site_transient_browser_a6ac7bff18fe0198c0d41bba47e744f6', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"66.0.3359.139";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(179, 'themeisle_sdk_active_notification', 'a:2:{s:3:"key";s:26:"hestiaThemeIsle_SDK_Logger";s:4:"time";i:1526394657;}', 'yes'),
(210, '_site_transient_timeout_theme_roots', '1526648256', 'no'),
(211, '_site_transient_theme_roots', 'a:4:{s:6:"hestia";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(213, '_transient_timeout_feed_9bc1b9ec726e1f508c5207949084454a', '1526689671', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(214, '_transient_feed_9bc1b9ec726e1f508c5207949084454a', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:52:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n\n \n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:8:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"ThemeIsle Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://themeisle.com/blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"WordPress Tutorials and Reviews for Beginners and Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 May 2018 09:58:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:30:"https://wordpress.org/?v=4.9.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"image";a:1:{i:0;a:6:{s:4:"data";s:11:"\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:3:"url";a:1:{i:0;a:5:{s:4:"data";s:75:"https://themeisle.com/blog/wp-content/uploads/2018/03/logo_demo_bar_new.png";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"ThemeIsle Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://themeisle.com/blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"width";a:1:{i:0;a:5:{s:4:"data";s:2:"32";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:6:"height";a:1:{i:0;a:5:{s:4:"data";s:2:"32";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"Google Search Console + WordPress: An Introduction to Google Search Console for WordPress Users";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://themeisle.com/blog/google-search-console-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:67:"https://themeisle.com/blog/google-search-console-wordpress/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 May 2018 09:25:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Featured";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"WordPress Tools";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=14228";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1139:"<p>Search Engine Optimization (SEO) isn’t always an easy task. There are a lot of ranking factors to keep track of, and many things you do on your site can inadvertently affect your results. If you want to avoid making mistakes, using Google Search Console + WordPress together can help you get more control over your SEO efforts. Google Search Console is an excellent, free service that will help you keep tabs on your site’s SEO performance. What’s more, using it alongside WordPress is simple. In fact,...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/google-search-console-wordpress/" class="more-link">Continue Reading <span class="screen-reader-text">"Google Search Console + WordPress: An Introduction to Google Search Console for WordPress Users"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/google-search-console-wordpress/">Google Search Console + WordPress: An Introduction to Google Search Console for WordPress Users</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Hughes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:64:"https://themeisle.com/blog/google-search-console-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"10 Great WordPress Chrome Extensions for All Types of WordPress Users";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://themeisle.com/blog/wordpress-chrome-extensions/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:63:"https://themeisle.com/blog/wordpress-chrome-extensions/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 May 2018 09:44:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Featured";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"WordPress Tools";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=14211";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1082:"<p>If you&#8217;re like most people, you build your websites with WordPress and browse the web with Chrome. But did you know that these two market leaders can actually team up to help you be even more productive? In this post, we&#8217;ll share some of the best WordPress chrome extensions for all types of WordPress users. Ten best WordPress Chrome extensions While not all of these WordPress chrome extensions are exclusive to WordPress, they can all help you be more productive when working with WordPress sites....<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/wordpress-chrome-extensions/" class="more-link">Continue Reading <span class="screen-reader-text">"10 Great WordPress Chrome Extensions for All Types of WordPress Users"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/wordpress-chrome-extensions/">10 Great WordPress Chrome Extensions for All Types of WordPress Users</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Priya";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:60:"https://themeisle.com/blog/wordpress-chrome-extensions/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"Beginner’s Guide to Setting a Meta Description in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://themeisle.com/blog/meta-description-in-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:65:"https://themeisle.com/blog/meta-description-in-wordpress/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 May 2018 08:55:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Beginner Tutorials";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=13781";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1130:"<p>There are many Search Engine Optimization (SEO) techniques that can boost your website’s visibility. Due to the sheer amount of large-scale SEO strategies available, it can be easy to overlook some of the smaller (but still important) tasks. For instance, learning how to create an effective meta description in WordPress is vital. Meta descriptions are the text snippets displayed in search engine results. As a result, they&#8217;re one of the first things a potential visitor will see. Optimizing this element helps you grab their attention and communicates...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/meta-description-in-wordpress/" class="more-link">Continue Reading <span class="screen-reader-text">"Beginner&#8217;s Guide to Setting a Meta Description in WordPress"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/meta-description-in-wordpress/">Beginner&#8217;s Guide to Setting a Meta Description in WordPress</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Hughes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:62:"https://themeisle.com/blog/meta-description-in-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"6 Best Free Blogging Sites: Launch Your Own Blog Without Spending a Dime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://themeisle.com/blog/best-free-blogging-sites/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://themeisle.com/blog/best-free-blogging-sites/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 14 May 2018 08:52:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:15:"WordPress Tools";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=13159";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1058:"<p>Looking for some free blogging sites to help you start sharing your writing with the world? Whether you just want to share updates with your family and friends or you want to start a blog and build a broader audience, we&#8217;ve put together six great sites where you can start a blog for free. Six best free blogging sites to consider in 2018 Below, we&#8217;ll list off six different free blogging sites that you can choose from. For each site, we&#8217;ll: Quickly summarize what type...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/best-free-blogging-sites/" class="more-link">Continue Reading <span class="screen-reader-text">"6 Best Free Blogging Sites: Launch Your Own Blog Without Spending a Dime"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/best-free-blogging-sites/">6 Best Free Blogging Sites: Launch Your Own Blog Without Spending a Dime</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Adelina Tuca";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://themeisle.com/blog/best-free-blogging-sites/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"DreamHost Review for WordPress: Managed Hosting on a Budget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://themeisle.com/blog/dreamhost-review-for-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://themeisle.com/blog/dreamhost-review-for-wordpress/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 May 2018 09:13:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress Hosting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=12893";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1125:"<p>When you’re picking out a hosting company, you’ll want to make the decision carefully. Your web host will have a powerful impact on your WordPress site’s long-term success. It’s smart to do some research beforehand – which is why we created this DreamHost review for WordPress to help you out. While DreamHost does offer some general-purpose hosting plans, its WordPress-specific options are where this provider really shines. In fact, DreamHost is one of WordPress’ official recommendations, thanks to its thorough optimization for the platform. That fact...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/dreamhost-review-for-wordpress/" class="more-link">Continue Reading <span class="screen-reader-text">"DreamHost Review for WordPress: Managed Hosting on a Budget"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/dreamhost-review-for-wordpress/">DreamHost Review for WordPress: Managed Hosting on a Budget</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Hughes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://themeisle.com/blog/dreamhost-review-for-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:93:"[INFOGRAPHIC] WordCamp Europe by the Numbers! All #WCEU Editions Compared (From 2013 to 2018)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://themeisle.com/blog/wordcamp-europe-by-the-numbers/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:66:"https://themeisle.com/blog/wordcamp-europe-by-the-numbers/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 May 2018 12:09:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Pirate News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=14336";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1152:"<p>There were several stats that we were seeking for this infographic, which we managed to cover actually: from the participating countries to volunteers, organizers, live streaming, fun events introduced yearly, the location of past editions, speakers, and other interesting facts about WCEU. And before I forget, let me just say that the organizers are doing a great job keeping alive one of the biggest WordPress events in the world. Kudos for that! ???? So&#8230; how did WordCamp Europe evolve since its premiere in 2013? Have...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/wordcamp-europe-by-the-numbers/" class="more-link">Continue Reading <span class="screen-reader-text">"[INFOGRAPHIC] WordCamp Europe by the Numbers! All #WCEU Editions Compared (From 2013 to 2018)"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/wordcamp-europe-by-the-numbers/">[INFOGRAPHIC] WordCamp Europe by the Numbers! All #WCEU Editions Compared (From 2013 to 2018)</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Adelina Tuca";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:63:"https://themeisle.com/blog/wordcamp-europe-by-the-numbers/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"How to Start a Food Blog and Make Money: Step-by-Step Guide";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://themeisle.com/blog/how-to-start-a-food-blog-and-make-money/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:75:"https://themeisle.com/blog/how-to-start-a-food-blog-and-make-money/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 08 May 2018 08:57:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Beginner Tutorials";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=13179";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1075:"<p>So you want to learn how to start a food blog and make money doing it? While you&#8217;ll have to put in some work between starting your blog and making money from your blog, the actual process of creating your food blog is pretty straightforward, even if you&#8217;re not a &#8220;techie&#8221; person. In our How to Start a Food Blog and Make Money guide, we&#8217;re to provide you with actionable tasks to help you create an effective and profitable food blog. These include how to… Let&#8217;s...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/how-to-start-a-food-blog-and-make-money/" class="more-link">Continue Reading <span class="screen-reader-text">"How to Start a Food Blog and Make Money: Step-by-Step Guide"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/how-to-start-a-food-blog-and-make-money/">How to Start a Food Blog and Make Money: Step-by-Step Guide</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Megan Jones";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:72:"https://themeisle.com/blog/how-to-start-a-food-blog-and-make-money/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:64:"Elementor Review: How Does This WordPress Page Builder Stack Up?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"https://themeisle.com/blog/elementor-review/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://themeisle.com/blog/elementor-review/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 07 May 2018 09:52:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress Plugins";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=14296";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1062:"<p>Keep reading our Elementor review for help deciding whether you should join those 800,000 other users. What&#8217;s the benefit of using Elementor? Elementor helps you add advanced styling, layout, and design elements to your WordPress content without requiring you to know code. In the new Elementor Pro version, you can even design your entire WordPress theme also without needing to know any code. On a more specific note, Elementor is what&#8217;s known as a visual drag and drop page builder plugin. There are two parts...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/elementor-review/" class="more-link">Continue Reading <span class="screen-reader-text">"Elementor Review: How Does This WordPress Page Builder Stack Up?"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/elementor-review/">Elementor Review: How Does This WordPress Page Builder Stack Up?</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Colin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:49:"https://themeisle.com/blog/elementor-review/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Beginner’s Guide: How to Use CSS in WordPress for Easy Style Tweaks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"https://themeisle.com/blog/css-in-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:52:"https://themeisle.com/blog/css-in-wordpress/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 04 May 2018 09:20:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Beginner Tutorials";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=13569";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1022:"<p>WordPress enables you to create a functional and compelling website with no technical knowledge. However, if you want to get the most out of your site, learning a little about coding can go a long way. One of the quickest ways that you can start to make meaningful changes to your site is by learning how to use CSS in WordPress. Cascading Style Sheets (CSS) is one of the most important languages in web design. Making CSS tweaks to your site lets you customize its...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/css-in-wordpress/" class="more-link">Continue Reading <span class="screen-reader-text">"Beginner&#8217;s Guide: How to Use CSS in WordPress for Easy Style Tweaks"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/css-in-wordpress/">Beginner&#8217;s Guide: How to Use CSS in WordPress for Easy Style Tweaks</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"John Hughes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:49:"https://themeisle.com/blog/css-in-wordpress/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"How to Create a Free WordPress Test Site Without Leaving Your Browser";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"https://themeisle.com/blog/wordpress-test-site/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:55:"https://themeisle.com/blog/wordpress-test-site/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 02 May 2018 09:05:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Beginner Tutorials";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"https://themeisle.com/blog/?p=13672";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1043:"<p>You have a grand idea, but you&#8217;re not sure how to move forward with your new blog. Should you start paying for hosting even though the content isn&#8217;t there yet and no one is coming to your site? Or should you go through the process of installing WordPress locally with a development environment like XAMPP just to test out a new plugin or theme? If you&#8217;d rather not spend the cash on an unfinished site, and you&#8217;re not keen on running a local WordPress install, you...<span class="clearfix clearfix-post"></span><a href="https://themeisle.com/blog/wordpress-test-site/" class="more-link">Continue Reading <span class="screen-reader-text">"How to Create a Free WordPress Test Site Without Leaving Your Browser"</span> <span class="meta-nav">&#8594;</span></a></p>\n<p>The post <a rel="nofollow" href="https://themeisle.com/blog/wordpress-test-site/">How to Create a Free WordPress Test Site Without Leaving Your Browser</a> appeared first on <a rel="nofollow" href="https://themeisle.com/blog">ThemeIsle Blog</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joe Warnimont";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:52:"https://themeisle.com/blog/wordpress-test-site/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://themeisle.com/blog/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:12:{s:4:"date";s:29:"Fri, 18 May 2018 12:27:50 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:12:"x-robots-tag";s:15:"noindex, follow";s:4:"link";s:63:"<https://themeisle.com/blog/wp-json/>; rel="https://api.w.org/"";s:13:"last-modified";s:29:"Thu, 17 May 2018 09:58:12 GMT";s:4:"etag";s:41:"W/"9455a68c6c3cc85332becf72004ecfc2-gzip"";s:4:"vary";s:27:"Accept-Encoding, User-Agent";s:12:"x-user-agent";s:8:"standard";s:14:"x-cache-config";s:3:"0 0";s:14:"x-cache-status";s:3:"HIT";s:27:"x-pagely-debug-pagely-https";s:2:"on";s:6:"server";s:20:"Pagely Gateway/1.5.1";}}s:5:"build";s:14:"20130911020210";}', 'no'),
(215, '_transient_timeout_feed_mod_9bc1b9ec726e1f508c5207949084454a', '1526689671', 'no'),
(216, '_transient_feed_mod_9bc1b9ec726e1f508c5207949084454a', '1526646471', 'no'),
(217, '_transient_timeout_themeisle_sdk_feed_items', '1526819271', 'no'),
(218, '_transient_themeisle_sdk_feed_items', 'a:5:{i:0;a:3:{s:5:"title";s:95:"Google Search Console + WordPress: An Introduction to Google Search Console for WordPress Users";s:4:"date";i:1526549156;s:4:"link";s:59:"https://themeisle.com/blog/google-search-console-wordpress/";}i:1;a:3:{s:5:"title";s:69:"10 Great WordPress Chrome Extensions for All Types of WordPress Users";s:4:"date";i:1526463884;s:4:"link";s:55:"https://themeisle.com/blog/wordpress-chrome-extensions/";}i:2;a:3:{s:5:"title";s:61:"Beginner’s Guide to Setting a Meta Description in WordPress";s:4:"date";i:1526374527;s:4:"link";s:57:"https://themeisle.com/blog/meta-description-in-wordpress/";}i:3;a:3:{s:5:"title";s:72:"6 Best Free Blogging Sites: Launch Your Own Blog Without Spending a Dime";s:4:"date";i:1526287949;s:4:"link";s:52:"https://themeisle.com/blog/best-free-blogging-sites/";}i:4;a:3:{s:5:"title";s:59:"DreamHost Review for WordPress: Managed Hosting on a Budget";s:4:"date";i:1526029983;s:4:"link";s:58:"https://themeisle.com/blog/dreamhost-review-for-wordpress/";}}', 'no'),
(219, '_transient_timeout_themeisle_sdk_products', '1526668081', 'no'),
(220, '_transient_themeisle_sdk_products', 'a:41:{i:0;a:4:{s:4:"name";s:5:"Orfeo";s:4:"type";s:5:"theme";s:4:"slug";s:5:"orfeo";s:8:"installs";i:10000;}i:1;a:4:{s:4:"name";s:6:"Hestia";s:4:"type";s:5:"theme";s:4:"slug";s:6:"hestia";s:8:"installs";i:90000;}i:2;a:4:{s:4:"name";s:15:"Llorix One Lite";s:4:"type";s:5:"theme";s:4:"slug";s:15:"llorix-one-lite";s:8:"installs";i:20000;}i:3;a:4:{s:4:"name";s:14:"ResponsiveBoat";s:4:"type";s:5:"theme";s:4:"slug";s:14:"responsiveboat";s:8:"installs";i:10000;}i:4;a:4:{s:4:"name";s:4:"Oria";s:4:"type";s:5:"theme";s:4:"slug";s:4:"oria";s:8:"installs";i:10000;}i:5;a:4:{s:4:"name";s:7:"Oblique";s:4:"type";s:5:"theme";s:4:"slug";s:7:"oblique";s:8:"installs";i:30000;}i:6;a:4:{s:4:"name";s:7:"Amadeus";s:4:"type";s:5:"theme";s:4:"slug";s:7:"amadeus";s:8:"installs";i:10000;}i:7;a:4:{s:4:"name";s:14:"RokoPhoto Lite";s:4:"type";s:5:"theme";s:4:"slug";s:14:"rokophoto-lite";s:8:"installs";i:6000;}i:8;a:4:{s:4:"name";s:6:"FlyMag";s:4:"type";s:5:"theme";s:4:"slug";s:6:"flymag";s:8:"installs";i:8000;}i:9;a:4:{s:4:"name";s:11:"ZBlackbeard";s:4:"type";s:5:"theme";s:4:"slug";s:11:"zblackbeard";s:8:"installs";i:5000;}i:10;a:4:{s:4:"name";s:9:"Shop Isle";s:4:"type";s:5:"theme";s:4:"slug";s:9:"shop-isle";s:8:"installs";i:40000;}i:11;a:4:{s:4:"name";s:7:"islemag";s:4:"type";s:5:"theme";s:4:"slug";s:7:"islemag";s:8:"installs";i:10000;}i:12;a:4:{s:4:"name";s:10:"Azera Shop";s:4:"type";s:5:"theme";s:4:"slug";s:10:"azera-shop";s:8:"installs";i:8000;}i:13;a:4:{s:4:"name";s:19:"Advanced CSS Editor";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"advanced-css-editor";s:8:"installs";i:10000;}i:14;a:4:{s:4:"name";s:59:"Contact Form &amp; SMTP Plugin for WordPress by PirateForms";s:4:"type";s:6:"plugin";s:4:"slug";s:12:"pirate-forms";s:8:"installs";i:300000;}i:15;a:4:{s:4:"name";s:28:"Custom Login Page Customizer";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"login-customizer";s:8:"installs";i:80000;}i:16;a:4:{s:4:"name";s:53:"Elementor Addons &amp; Templates &#8211; Sizzify Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:23:"elementor-addon-widgets";s:8:"installs";i:30000;}i:17;a:4:{s:4:"name";s:21:"FEEDZY RSS Feeds Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"feedzy-rss-feeds";s:8:"installs";i:20000;}i:18;a:4:{s:4:"name";s:30:"Google Maps Plugin by Intergeo";s:4:"type";s:6:"plugin";s:4:"slug";s:13:"intergeo-maps";s:8:"installs";i:60000;}i:19;a:4:{s:4:"name";s:20:"Llorix One Companion";s:4:"type";s:6:"plugin";s:4:"slug";s:20:"llorix-one-companion";s:8:"installs";i:20000;}i:20;a:4:{s:4:"name";s:23:"Menu Icons by ThemeIsle";s:4:"type";s:6:"plugin";s:4:"slug";s:10:"menu-icons";s:8:"installs";i:100000;}i:21;a:4:{s:4:"name";s:27:"NavMenu Addon For Elementor";s:4:"type";s:6:"plugin";s:4:"slug";s:27:"navmenu-addon-for-elementor";s:8:"installs";i:20000;}i:22;a:4:{s:4:"name";s:22:"Orbit Fox by ThemeIsle";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"themeisle-companion";s:8:"installs";i:200000;}i:23;a:4:{s:4:"name";s:28:"Page Templater For Elementor";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"elementor-templater";s:8:"installs";i:30000;}i:24;a:4:{s:4:"name";s:50:"Revive Old Posts &#8211; Auto Post to Social Media";s:4:"type";s:6:"plugin";s:4:"slug";s:14:"tweet-old-post";s:8:"installs";i:70000;}i:25;a:4:{s:4:"name";s:56:"Slider by Nivo &#8211; Responsive WordPress Image Slider";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"nivo-slider-lite";s:8:"installs";i:40000;}i:26;a:4:{s:4:"name";s:32:"WordPress Charts and Graphs Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:10:"visualizer";s:8:"installs";i:30000;}i:27;a:4:{s:4:"name";s:19:"Advanced CSS Editor";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"advanced-css-editor";s:8:"installs";i:10000;}i:28;a:4:{s:4:"name";s:59:"Contact Form &amp; SMTP Plugin for WordPress by PirateForms";s:4:"type";s:6:"plugin";s:4:"slug";s:12:"pirate-forms";s:8:"installs";i:300000;}i:29;a:4:{s:4:"name";s:28:"Custom Login Page Customizer";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"login-customizer";s:8:"installs";i:80000;}i:30;a:4:{s:4:"name";s:53:"Elementor Addons &amp; Templates &#8211; Sizzify Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:23:"elementor-addon-widgets";s:8:"installs";i:30000;}i:31;a:4:{s:4:"name";s:21:"FEEDZY RSS Feeds Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"feedzy-rss-feeds";s:8:"installs";i:20000;}i:32;a:4:{s:4:"name";s:30:"Google Maps Plugin by Intergeo";s:4:"type";s:6:"plugin";s:4:"slug";s:13:"intergeo-maps";s:8:"installs";i:60000;}i:33;a:4:{s:4:"name";s:20:"Llorix One Companion";s:4:"type";s:6:"plugin";s:4:"slug";s:20:"llorix-one-companion";s:8:"installs";i:20000;}i:34;a:4:{s:4:"name";s:23:"Menu Icons by ThemeIsle";s:4:"type";s:6:"plugin";s:4:"slug";s:10:"menu-icons";s:8:"installs";i:100000;}i:35;a:4:{s:4:"name";s:27:"NavMenu Addon For Elementor";s:4:"type";s:6:"plugin";s:4:"slug";s:27:"navmenu-addon-for-elementor";s:8:"installs";i:20000;}i:36;a:4:{s:4:"name";s:22:"Orbit Fox by ThemeIsle";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"themeisle-companion";s:8:"installs";i:200000;}i:37;a:4:{s:4:"name";s:28:"Page Templater For Elementor";s:4:"type";s:6:"plugin";s:4:"slug";s:19:"elementor-templater";s:8:"installs";i:30000;}i:38;a:4:{s:4:"name";s:50:"Revive Old Posts &#8211; Auto Post to Social Media";s:4:"type";s:6:"plugin";s:4:"slug";s:14:"tweet-old-post";s:8:"installs";i:70000;}i:39;a:4:{s:4:"name";s:56:"Slider by Nivo &#8211; Responsive WordPress Image Slider";s:4:"type";s:6:"plugin";s:4:"slug";s:16:"nivo-slider-lite";s:8:"installs";i:40000;}i:40;a:4:{s:4:"name";s:32:"WordPress Charts and Graphs Lite";s:4:"type";s:6:"plugin";s:4:"slug";s:10:"visualizer";s:8:"installs";i:30000;}}', 'no'),
(221, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1526689685', 'no'),
(222, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 7: Failed to connect to feeds.feedburner.com port 443: Network unreachable</p></div><div class="rss-widget"><p><strong>Erreur RSS :</strong> WP HTTP Error: cURL error 7: Failed to connect to feeds.feedburner.com port 443: Network unreachable</p></div>', 'no'),
(223, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1526689688', 'no'),
(224, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:2:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:15:"WordCamp Europe";s:3:"url";s:33:"https://2018.europe.wordcamp.org/";s:6:"meetup";s:0:"";s:10:"meetup_url";s:0:"";s:4:"date";s:19:"2018-06-14 00:00:00";s:8:"location";a:4:{s:8:"location";s:16:"Belgrade, Serbia";s:7:"country";s:2:"RS";s:8:"latitude";d:44.808497000000003;s:9:"longitude";d:20.432285;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:4:"WP15";s:3:"url";s:86:"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-05-27 12:00:00";s:8:"location";a:1:{s:8:"location";s:10:"Everywhere";}}}}', 'no'),
(225, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1526657678', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(226, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4464;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2785;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2560;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2428;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1870;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1655;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1643;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1452;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1391;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1390;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1387;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1312;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1284;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1210;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1102;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1060;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1023;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1012;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:893;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:878;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:829;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:803;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:802;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:709;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:691;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:686;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:685;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:672;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:660;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:657;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:645;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:640;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:637;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:632;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:610;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:606;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:605;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:598;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:589;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:587;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:564;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:548;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:537;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:536;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:521;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:519;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:511;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:510;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:496;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:493;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:492;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:481;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:480;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:478;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:471;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:467;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:456;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:456;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:445;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:432;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:428;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:425;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:419;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:416;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:415;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:413;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:406;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:404;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:394;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:390;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:384;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:368;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:363;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:359;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:355;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:350;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:350;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:349;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:347;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:344;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:341;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:341;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:338;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:332;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:332;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:330;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:322;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:315;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:305;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:304;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:304;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:298;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:296;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:295;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:294;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:293;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:291;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:290;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:286;}}', 'no'),
(228, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.6.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.6-partial-5.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.5";}}s:12:"last_checked";i:1526646981;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(229, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1526646986;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.1";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(230, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1526646986;s:7:"checked";a:4:{s:6:"hestia";s:6:"1.1.73";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.5";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:4:{s:6:"hestia";a:4:{s:5:"theme";s:6:"hestia";s:11:"new_version";s:6:"1.1.76";s:3:"url";s:36:"https://wordpress.org/themes/hestia/";s:7:"package";s:55:"https://downloads.wordpress.org/theme/hestia.1.1.76.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.6";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.6.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no'),
(231, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1526654189;s:7:"version";s:5:"5.0.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(232, 'recently_activated', 'a:0:{}', 'yes'),
(233, '_transient_timeout_plugin_slugs', '1526733390', 'no'),
(234, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=106 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1525447321:1'),
(3, 2, '_oembed_810cf59db57c30f3e8ad9c8f8dbcdcb0', '<iframe width="750" height="422" src="https://www.youtube.com/embed/AeNk3SBl5m0?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(4, 2, '_oembed_time_810cf59db57c30f3e8ad9c8f8dbcdcb0', '1525447373'),
(5, 2, '_oembed_3a612f28550028314060f322a5fb8b87', '<iframe width="503" height="283" src="https://www.youtube.com/embed/AeNk3SBl5m0?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(6, 2, '_oembed_time_3a612f28550028314060f322a5fb8b87', '1525447375'),
(7, 2, '_edit_last', '1'),
(8, 2, 'hestia_layout_select', 'default'),
(9, 2, '_oembed_efd526feb8e5275dfa816232a98b2b93', '{{unknown}}'),
(10, 2, '_oembed_8fdd469201443e4fdcb29367c0dd2b07', '<iframe width="750" height="422" src="https://www.youtube.com/embed/Bfg77FQMn0g?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(11, 2, '_oembed_time_8fdd469201443e4fdcb29367c0dd2b07', '1525447437'),
(12, 2, '_oembed_cbaba4eec1f0d5918abb78f05eb023ed', '<iframe width="503" height="283" src="https://www.youtube.com/embed/Bfg77FQMn0g?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(13, 2, '_oembed_time_cbaba4eec1f0d5918abb78f05eb023ed', '1525447439'),
(14, 2, '_oembed_aa321957fe5cb2b71cb818ac7839d638', '<iframe width="487" height="274" src="https://www.youtube.com/embed/Bfg77FQMn0g?feature=oembed" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
(15, 2, '_oembed_time_aa321957fe5cb2b71cb818ac7839d638', '1525447446'),
(16, 6, '_wp_attached_file', '2018/05/Penguins.jpg'),
(17, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:20:"2018/05/Penguins.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Penguins-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Penguins-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Penguins-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:20:"Penguins-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1203311251";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 7, '_edit_lock', '1525447694:1'),
(19, 8, '_wp_attached_file', '2018/05/cropped-Penguins.jpg'),
(20, 8, '_wp_attachment_context', 'site-icon'),
(21, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2018/05/cropped-Penguins.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"cropped-Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"cropped-Penguins-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:28:"cropped-Penguins-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:28:"cropped-Penguins-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:28:"cropped-Penguins-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:28:"cropped-Penguins-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:26:"cropped-Penguins-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 7, '_wp_trash_meta_status', 'publish'),
(23, 7, '_wp_trash_meta_time', '1525447706'),
(24, 9, '_wp_attached_file', '2018/05/Koala.jpg'),
(25, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:17:"2018/05/Koala.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Koala-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"Koala-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"Koala-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:17:"Koala-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202729563";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 10, '_wp_attached_file', '2018/05/cropped-Koala.jpg'),
(27, 10, '_wp_attachment_context', 'custom-logo'),
(28, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:684;s:4:"file";s:25:"2018/05/cropped-Koala.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"cropped-Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"cropped-Koala-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"cropped-Koala-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"cropped-Koala-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:11:"hestia-blog";a:4:{s:4:"file";s:25:"cropped-Koala-360x240.jpg";s:5:"width";i:360;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 11, '_wp_trash_meta_status', 'publish'),
(30, 11, '_wp_trash_meta_time', '1525447740'),
(31, 13, '_edit_last', '1'),
(32, 13, '_edit_lock', '1526395247:1'),
(35, 13, 'hestia_layout_select', 'default'),
(38, 15, '_edit_lock', '1526397697:1'),
(39, 15, '_edit_last', '1'),
(40, 15, '_wp_page_template', 'default'),
(41, 15, 'hestia_layout_select', 'default'),
(42, 18, '_edit_lock', '1526397984:1'),
(43, 18, '_edit_last', '1'),
(44, 18, '_wp_page_template', 'default'),
(45, 18, 'hestia_layout_select', 'default'),
(46, 20, '_edit_lock', '1526398190:1'),
(47, 20, '_edit_last', '1'),
(48, 20, '_wp_page_template', 'default'),
(49, 20, 'hestia_layout_select', 'default'),
(50, 22, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(51, 22, '_mail', 'a:8:{s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:36:"[your-name] <assilecherni@yahoo.com>";s:4:"body";s:190:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:9:"recipient";s:22:"assilecherni@yahoo.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(52, 22, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:28:"pfe <assilecherni@yahoo.com>";s:4:"body";s:132:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: assilecherni@yahoo.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(53, 22, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";}'),
(54, 22, '_additional_settings', NULL),
(55, 22, '_locale', 'fr_FR'),
(64, 24, '_edit_lock', '1526647523:1'),
(65, 24, '_edit_last', '1'),
(66, 24, '_wp_page_template', 'default'),
(67, 24, 'hestia_layout_select', 'default'),
(68, 24, '_wp_trash_meta_status', 'publish'),
(69, 24, '_wp_trash_meta_time', '1526647674'),
(70, 24, '_wp_desired_post_slug', 'inscription'),
(71, 26, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]'),
(72, 26, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:36:"[your-name] <assilecherni@yahoo.com>";s:9:"recipient";s:22:"assilecherni@yahoo.com";s:4:"body";s:189:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(73, 26, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:28:"pfe <assilecherni@yahoo.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:18:"additional_headers";s:32:"Reply-To: assilecherni@yahoo.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(74, 26, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(75, 26, '_additional_settings', ''),
(76, 26, '_locale', 'fr_FR'),
(77, 27, '_edit_last', '1'),
(78, 27, '_wp_page_template', 'default'),
(79, 27, 'hestia_layout_select', 'default'),
(80, 27, '_edit_lock', '1526647634:1'),
(81, 30, '_edit_lock', '1526647969:1'),
(82, 30, '_edit_last', '1'),
(83, 30, '_wp_page_template', 'default'),
(84, 30, 'hestia_layout_select', 'default'),
(92, 33, '_form', '<label>Nom </label>\n[text* text-812]\n<label>Prénom </label>\n[text* text-812]\n<label>Date de naissance </label>\n[date* date-483]\n<label>Sexe </label>\n[radio radio-71 label_first use_label_element default:1 "Femme" "Homme"]\n<label>Image de profil </label>\n[file* file-605 limit:2000 filetypes:png.jpg.jpeg]\n<label>Interets </label>\n[checkbox checkbox-450 label_first use_label_element exclusive "Jeu d''echecs" "Music" "Voyage" "Shopping" "Sport"]\n<label>Telephone </label>\n[tel* tel-326]\n<label>Mail</label>\n[email* email-127]\n<label>Profil</label>\n[select* menu-43 multiple include_blank "Membre" "Participant"]\n<button type="submit" value="Enregistrer"> </button>'),
(93, 33, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:36:"[your-name] <assilecherni@yahoo.com>";s:9:"recipient";s:22:"assilecherni@yahoo.com";s:4:"body";s:189:"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(94, 33, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"pfe "[your-subject]"";s:6:"sender";s:28:"pfe <assilecherni@yahoo.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:131:"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)";s:18:"additional_headers";s:32:"Reply-To: assilecherni@yahoo.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(95, 33, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Merci pour votre message. Il a été envoyé.";s:12:"mail_sent_ng";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:16:"validation_error";s:88:"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.";s:4:"spam";s:102:"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.";s:12:"accept_terms";s:77:"Vous devez accepter les termes et conditions avant d’envoyer votre message.";s:16:"invalid_required";s:25:"Ce champ est obligatoire.";s:16:"invalid_too_long";s:23:"Le champ est trop long.";s:17:"invalid_too_short";s:24:"Le champ est trop court.";s:12:"invalid_date";s:32:"Le format de date est incorrect.";s:14:"date_too_early";s:47:"La date précède la première date autorisée.";s:13:"date_too_late";s:57:"La date est postérieure à la dernière date autorisée.";s:13:"upload_failed";s:72:"Une erreur inconnue s’est produite lors du téléversement du fichier.";s:24:"upload_file_type_invalid";s:79:"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.";s:21:"upload_file_too_large";s:31:"Le fichier est trop volumineux.";s:23:"upload_failed_php_error";s:63:"Une erreur s’est produite lors du téléversement du fichier.";s:14:"invalid_number";s:33:"Le format du nombre est invalide.";s:16:"number_too_small";s:50:"Le nombre est plus petit que le minimum autorisé.";s:16:"number_too_large";s:50:"Le nombre est plus grand que le maximum autorisé.";s:23:"quiz_answer_not_correct";s:42:"La réponse à la question est incorrecte.";s:17:"captcha_not_match";s:29:"Le code entré est incorrect.";s:13:"invalid_email";s:38:"L’adresse e-mail n’est pas valide.";s:11:"invalid_url";s:27:"L’URL n’est pas valide.";s:11:"invalid_tel";s:45:"Le numéro de téléphone n’est pas valide.";}'),
(96, 33, '_additional_settings', ''),
(97, 33, '_locale', 'fr_FR'),
(98, 33, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:73:"La syntaxe de la boîte mail utilisée dans le champ %name% est invalide.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(99, 27, '_wp_trash_meta_status', 'publish'),
(100, 27, '_wp_trash_meta_time', '1526649715'),
(101, 27, '_wp_desired_post_slug', 'inscription'),
(102, 35, '_edit_lock', '1526649609:1'),
(103, 35, '_edit_last', '1'),
(104, 35, '_wp_page_template', 'default'),
(105, 35, 'hestia_layout_select', 'default');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=37 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-04 17:10:32', '2018-05-04 15:10:32', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-05-04 17:10:32', '2018-05-04 15:10:32', '', 0, 'http://127.0.0.1/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-04 17:10:32', '2018-05-04 15:10:32', '[embed]https://www.youtube.com/watch?v=Bfg77FQMn0g[/embed]\r\n\r\nVoici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-05-04 17:24:02', '2018-05-04 15:24:02', '', 0, 'http://127.0.0.1/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-05-04 17:23:00', '2018-05-04 15:23:00', '[embed]https://www.youtube.com/watch?v=AeNk3SBl5m0[/embed]\r\n\r\nVoici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-04 17:23:00', '2018-05-04 15:23:00', '', 2, 'http://127.0.0.1/wordpress/index.php/2018/05/04/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2018-05-04 17:24:02', '2018-05-04 15:24:02', '[embed]https://www.youtube.com/watch?v=Bfg77FQMn0g[/embed]\r\n\r\nVoici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\r\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\r\n...ou bien quelque chose comme cela :\r\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\r\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-04 17:24:02', '2018-05-04 15:24:02', '', 2, 'http://127.0.0.1/wordpress/index.php/2018/05/04/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-05-04 17:27:22', '2018-05-04 15:27:22', '', 'Penguins', '', 'inherit', 'open', 'closed', '', 'penguins', '', '', '2018-05-04 17:27:22', '2018-05-04 15:27:22', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/Penguins.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-05-04 17:28:25', '2018-05-04 15:28:25', '{\n    "blogdescription": {\n        "value": "MON BLOG ",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-04 15:27:39"\n    },\n    "site_icon": {\n        "value": 8,\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-04 15:28:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd35f92a-4fe6-4db4-ad68-a8e1b0837314', '', '', '2018-05-04 17:28:25', '2018-05-04 15:28:25', '', 0, 'http://127.0.0.1/wordpress/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2018-05-04 17:28:07', '2018-05-04 15:28:07', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/cropped-Penguins.jpg', 'cropped-Penguins.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-penguins-jpg', '', '', '2018-05-04 17:28:07', '2018-05-04 15:28:07', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/cropped-Penguins.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-05-04 17:28:45', '2018-05-04 15:28:45', '', 'Koala', '', 'inherit', 'open', 'closed', '', 'koala', '', '', '2018-05-15 16:33:14', '2018-05-15 14:33:14', '', 13, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-05-04 17:28:52', '2018-05-04 15:28:52', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/cropped-Koala.jpg', 'cropped-Koala.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-koala-jpg', '', '', '2018-05-04 17:28:52', '2018-05-04 15:28:52', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2018/05/cropped-Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-05-04 17:29:00', '2018-05-04 15:29:00', '{\n    "hestia::custom_logo": {\n        "value": 10,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-05-04 15:29:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c6e3978f-498e-417a-a104-1f66cf22e47d', '', '', '2018-05-04 17:29:00', '2018-05-04 15:29:00', '', 0, 'http://127.0.0.1/wordpress/index.php/2018/05/04/c6e3978f-498e-417a-a104-1f66cf22e47d/', 0, 'customize_changeset', '', 0),
(12, 1, '2018-05-15 16:31:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-15 16:31:09', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2018-05-15 16:35:52', '2018-05-15 14:35:52', '<img src="http://127.0.0.1/wordpress/wp-content/uploads/2018/05/Koala-300x225.jpg" alt="" width="300" height="225" class="alignnone size-medium wp-image-9" />\r\n\r\njoyeux anniversaire panda', 'Mon anniversaire', '', 'publish', 'open', 'open', '', 'mon-anniversaire', '', '', '2018-05-15 16:37:31', '2018-05-15 14:37:31', '', 0, 'http://127.0.0.1/wordpress/?p=13', 0, 'post', '', 0),
(14, 1, '2018-05-15 16:35:52', '2018-05-15 14:35:52', '<img src="http://127.0.0.1/wordpress/wp-content/uploads/2018/05/Koala-300x225.jpg" alt="" width="300" height="225" class="alignnone size-medium wp-image-9" />\r\n\r\njoyeux anniversaire panda', 'Mon anniversaire', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-05-15 16:35:52', '2018-05-15 14:35:52', '', 13, 'http://127.0.0.1/wordpress/index.php/2018/05/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-05-15 17:23:53', '2018-05-15 15:23:53', '<em><span style="color: #ff0000;">S''authentifier</span></em>\r\n<pre><label>Nom d''utilisateur </label> :\r\n <input type="text" />\r\n <label>Mot de Passe </label> :\r\n <input type="password" /></pre>\r\n<button type="submit">Connexion </button>\r\n<button type="reset"> Annuler </button>', 'Authentification', '', 'publish', 'closed', 'closed', '', 'authentification', '', '', '2018-05-15 17:23:57', '2018-05-15 15:23:57', '', 0, 'http://127.0.0.1/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-05-15 17:23:53', '2018-05-15 15:23:53', '<em><span style="color: #ff0000;">S''authentifier</span></em>\r\n<pre><label>Nom d''utilisateur </label> :\r\n <input type="text" />\r\n <label>Mot de Passe </label> :\r\n <input type="password" /></pre>\r\n<button type="submit">Connexion </button>\r\n<button type="reset"> Annuler </button>', 'Authentification', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-15 17:23:53', '2018-05-15 15:23:53', '', 15, 'http://127.0.0.1/wordpress/index.php/2018/05/15/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-05-15 17:27:46', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-15 17:27:46', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2018-05-15 17:28:42', '2018-05-15 15:28:42', '', 'Acceuil', '', 'publish', 'closed', 'closed', '', 'acceuil', '', '', '2018-05-15 17:28:42', '2018-05-15 15:28:42', '', 0, 'http://127.0.0.1/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2018-05-15 17:28:42', '2018-05-15 15:28:42', '', 'Acceuil', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-05-15 17:28:42', '2018-05-15 15:28:42', '', 18, 'http://127.0.0.1/wordpress/index.php/2018/05/15/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-05-15 17:29:32', '2018-05-15 15:29:32', '', 'Mes vidéos', '', 'publish', 'closed', 'closed', '', 'mes-videos', '', '', '2018-05-15 17:29:32', '2018-05-15 15:29:32', '', 0, 'http://127.0.0.1/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-05-15 17:29:32', '2018-05-15 15:29:32', '', 'Mes vidéos', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-05-15 17:29:32', '2018-05-15 15:29:32', '', 20, 'http://127.0.0.1/wordpress/index.php/2018/05/15/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-05-18 14:36:28', '2018-05-18 12:36:28', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit "Envoyer"]\npfe "[your-subject]"\n[your-name] <assilecherni@yahoo.com>\nDe : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\nassilecherni@yahoo.com\nReply-To: [your-email]\n\n0\n0\n\npfe "[your-subject]"\npfe <assilecherni@yahoo.com>\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\n[your-email]\nReply-To: assilecherni@yahoo.com\n\n0\n0\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-05-18 14:36:28', '2018-05-18 12:36:28', '', 0, 'http://127.0.0.1/wordpress/?post_type=wpcf7_contact_form&p=22', 0, 'wpcf7_contact_form', '', 0),
(24, 1, '2018-05-18 14:46:46', '2018-05-18 12:46:46', '[contact-form-7 id="23" title="Inscription"]', 'inscription', '', 'trash', 'closed', 'closed', '', 'inscription__trashed', '', '', '2018-05-18 14:47:54', '2018-05-18 12:47:54', '', 0, 'http://127.0.0.1/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-05-18 14:46:46', '2018-05-18 12:46:46', '[contact-form-7 id="23" title="Inscription"]', 'inscription', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-05-18 14:46:46', '2018-05-18 12:46:46', '', 24, 'http://127.0.0.1/wordpress/index.php/2018/05/18/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-05-18 14:48:58', '2018-05-18 12:48:58', '<label> Votre nom (obligatoire)\r\n    [text* your-name] </label>\r\n\r\n<label> Votre adresse de messagerie (obligatoire)\r\n    [email* your-email] </label>\r\n\r\n<label> Objet\r\n    [text your-subject] </label>\r\n\r\n<label> Votre message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Envoyer"]\n1\npfe "[your-subject]"\n[your-name] <assilecherni@yahoo.com>\nassilecherni@yahoo.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\nReply-To: [your-email]\n\n\n\n\npfe "[your-subject]"\npfe <assilecherni@yahoo.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\nReply-To: assilecherni@yahoo.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Contacts', '', 'publish', 'closed', 'closed', '', 'inscription', '', '', '2018-05-18 14:54:41', '2018-05-18 12:54:41', '', 0, 'http://127.0.0.1/wordpress/?post_type=wpcf7_contact_form&#038;p=26', 0, 'wpcf7_contact_form', '', 0),
(27, 1, '2018-05-18 14:49:18', '2018-05-18 12:49:18', '[contact-form-7 id="26" title="Inscription"]', 'inscription', '', 'trash', 'closed', 'closed', '', 'inscription__trashed-2', '', '', '2018-05-18 15:21:55', '2018-05-18 13:21:55', '', 0, 'http://127.0.0.1/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-05-18 14:49:18', '2018-05-18 12:49:18', '', 'inscription', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-18 14:49:18', '2018-05-18 12:49:18', '', 27, 'http://127.0.0.1/wordpress/index.php/2018/05/18/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-05-18 14:49:33', '2018-05-18 12:49:33', '[contact-form-7 id="26" title="Inscription"]', 'inscription', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2018-05-18 14:49:33', '2018-05-18 12:49:33', '', 27, 'http://127.0.0.1/wordpress/index.php/2018/05/18/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-05-18 14:55:06', '2018-05-18 12:55:06', '[contact-form-7 id="26" title="Contacts"]', 'contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2018-05-18 14:55:06', '2018-05-18 12:55:06', '', 0, 'http://127.0.0.1/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-05-18 14:55:06', '2018-05-18 12:55:06', '[contact-form-7 id="26" title="Contacts"]', 'contacts', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-05-18 14:55:06', '2018-05-18 12:55:06', '', 30, 'http://127.0.0.1/wordpress/index.php/2018/05/18/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-05-18 15:20:08', '2018-05-18 13:20:08', '<label>Nom </label>\r\n[text* text-812]\r\n<label>Prénom </label>\r\n[text* text-812]\r\n<label>Date de naissance </label>\r\n[date* date-483]\r\n<label>Sexe </label>\r\n[radio radio-71 label_first use_label_element default:1 "Femme" "Homme"]\r\n<label>Image de profil </label>\r\n[file* file-605 limit:2000 filetypes:png.jpg.jpeg]\r\n<label>Interets </label>\r\n[checkbox checkbox-450 label_first use_label_element exclusive "Jeu d''echecs" "Music" "Voyage" "Shopping" "Sport"]\r\n<label>Telephone </label>\r\n[tel* tel-326]\r\n<label>Mail</label>\r\n[email* email-127]\r\n<label>Profil</label>\r\n[select* menu-43 multiple include_blank "Membre" "Participant"]\r\n<button type="submit" value="Enregistrer"> </button>\n1\npfe "[your-subject]"\n[your-name] <assilecherni@yahoo.com>\nassilecherni@yahoo.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\nReply-To: [your-email]\n\n\n\n\npfe "[your-subject]"\npfe <assilecherni@yahoo.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de pfe (http://127.0.0.1/wordpress)\nReply-To: assilecherni@yahoo.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Inscription', '', 'publish', 'closed', 'closed', '', 'inscription-3', '', '', '2018-05-18 15:20:08', '2018-05-18 13:20:08', '', 0, 'http://127.0.0.1/wordpress/?post_type=wpcf7_contact_form&p=33', 0, 'wpcf7_contact_form', '', 0),
(34, 1, '2018-05-18 15:20:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-18 15:20:33', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-05-18 15:22:17', '2018-05-18 13:22:17', '[contact-form-7 id="32" title="Inscription"]', 'inscription', '', 'publish', 'closed', 'closed', '', 'inscription', '', '', '2018-05-18 15:22:17', '2018-05-18 13:22:17', '', 0, 'http://127.0.0.1/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-05-18 15:22:17', '2018-05-18 13:22:17', '[contact-form-7 id="32" title="Inscription"]', 'inscription', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-05-18 15:22:17', '2018-05-18 13:22:17', '', 35, 'http://127.0.0.1/wordpress/index.php/2018/05/18/35-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=35 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nihel'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"43bd78577ec7bdceb7e7e49bca3a61235cf52afcbc0fbf7837d458d787e3e8d4";a:4:{s:10:"expiration";i:1526656310;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36";s:5:"login";i:1525446710;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '17'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1526397829'),
(21, 2, 'nickname', 'nina'),
(22, 2, 'first_name', 'nina'),
(23, 2, 'last_name', 'cherni'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(33, 2, 'wp_user_level', '10'),
(34, 2, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nihel', '$P$BP7FF1OICRQjTmCBm1s3JRBk81v8Au.', 'nihel', 'assilecherni@yahoo.com', '', '2018-05-04 15:10:31', '', 0, 'nihel'),
(2, 'nina', '$P$BkOYVVDooGtQWyKiMZvguU/OENU55H/', 'nina', 'nina@yahoo.com', '', '2018-05-15 14:47:52', '1526395674:$P$Bfe6NNVpM0N0opawCqz59R9IvBGoBO0', 0, 'nina cherni');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
