<?
class ArticlesModel extends CI_Model {
        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }
       public function get_last_ten_entries($iduser=false)
       {
            if($iduser==false)
            {
                $query = $this->db->select('*')
                                  ->from('article')
                                  ->join('users','users.iduser=article.fkuser')
                                  ->where('article.status',1)
                                  ->limit('10')
                                  ->get();
            }
            else
            {
                $query = $this->db->select('*')
                                  ->from('article')
                                  ->join('users','users.iduser=article.fkuser')
                                  ->where('article.status',1)
                                  ->where('fkuser',$iduser)
                                  ->limit('10')
                                  ->get();
            }
                //echo $this->db->last_query();
                return $query->result_array();
       }
       public function get_article($id)
       {
                $query = $this->db->select('*')
                                  ->from('article')
                                  ->join('users','users.iduser=article.fkuser')
                                  ->where('idarticle',$id)
                                  ->get();
            //echo $this->db->last_query();                                  
            $ret=$query->result_array();
            return $ret[0];
       }
}
?>