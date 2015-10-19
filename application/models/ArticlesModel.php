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
                                  ->order_by('posted_ts', 'DESC')
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
                                  ->order_by('posted_ts', 'DESC')
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
       public function delete($id)
       {
            $this->load->library('session');
            
            $fkuser=$this->session->iduser;
            
            if(empty($fkuser) || empty($id)) return false;
            
            $this->db->set('status',0)
                     ->where('fkuser',$fkuser)
                     ->where('idarticle',$id)
                     ->update('article');
            //echo $this->db->last_query();
            return true;
       }
       public function newArticle($article)
       {
            $this->load->library('session');
            $fkuser=$this->session->iduser;
            
            if(empty($fkuser)) return false;
            
            $article['fkuser']=$fkuser;
            $article['posted_ts']=time();
            $article['type']=1;
            $article['status']=1;
            
            if(!$this->db->insert('article', $article))
            {
                echo $this->db->last_query(); 
                echo $this->db->error();
            }
            
       }
}
?>