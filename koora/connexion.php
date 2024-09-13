		
		
		
		<?php
		ini_set('display_errors','off');
		$DB_base = 'ca1';
class Erreur  extends Exception {
    
    public function __construct($Msg) {
        parent :: __construct($Msg);
    }
    
    public function RetourneErreur() {
        $msg  = '<div><strong>' . $this->getMessage() . '</strong>';
        $msg .= ' Ligne : ' . $this->getLine() . '</div>';
        return $msg;
    }
}

class Mysql
{
    private
        $Serveur     = '',
        $Bdd         = '',
        $Identifiant = '',
        $Mdp         = '',
        $Lien        = '',    
        $Debogue     = true,    
        $NbRequetes  = 0;
    public
        function __construct($Serveur = 'localhost', $Bdd = 'ca1', $Identifiant = 'root', $Mdp = '') 
        {
            $this->Serveur     = $Serveur;
            $this->Bdd         = $Bdd;
            $this->Identifiant = $Identifiant;
            $this->Mdp         = $Mdp;

            $this->Lien=mysql_connect($this->Serveur, $this->Identifiant, $this->Mdp);
             
            if (!$this->Lien && $this->Debogue) throw new Erreur ('Erreur de connexion au serveur MySql!!!');                
                
            $Base = mysql_select_db($this->Bdd,$this->Lien);
             
            if (!$Base && $this->Debogue) throw new Erreur ('Erreur de connexion à la base de donnees!!!');
        }

/**
* Retourne le nombre de requêtes SQL effectué par l'objet
*/         
    public
        function RetourneNbRequetes() 
        {
            return $this->NbRequetes;
        }

    public
        function DernierId()
        {    
            return mysql_insert_id($this->Lien);
        }
 
    public
        function ExecuteSQL($Requete)
        {
            $Ressource = mysql_query($Requete,$this->Lien);
            
             if (!$Ressource and $this->Debogue) throw new Erreur ('Erreur de requête SQL!!!');
            
            $this->NbRequetes++;
            $NbAffectee = mysql_affected_rows();
            
            return $NbAffectee;            
        }        
}

	 try
	{
	$Mysql = new Mysql($Serveur = 'localhost',$Bdd = 'ca1', $Identifiant = 'root', $Mdp = ''); 	
	}
	catch (Erreur $e) {
  echo $e -> RetourneErreur();
	}
?>