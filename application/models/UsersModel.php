<?
class UsersModel extends CI_Model {
        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
        }
        
        public function exists_byuserdata($field,$data)
        {
                $this->db->where($field,$data)
                        ->from('users');
                $ret=$this->db->count_all_results();
                return ($ret > 0) ? true : false;
        }
        public function new_verification($data)
        {
                if(!$this->db->insert('users', $data))
                        return $this->db->error();
                
                $id     = $this->db->insert_id();
                $hash   = md5($id.$data['email']);
                $verification=array(
                        'fkuser' => $id,
                        'hash' => $hash,
                        'status' => 0
                );

                if(!$this->db->insert('verifications', $verification))
                        return $this->db->error();
                
                $mail = new PHPMailer;
                $mail->setFrom('Newsstand@coderscorp.com', 'News stand Demo Registration');
                $mail->addAddress($data['email'], '');     // Add a recipient
                $mail->addReplyTo('Newsstand@coderscorp.com', 'Newsstand Demo Registration');
                $mail->isHTML(true);                                  // Set email format to HTML

                $mail->Subject = 'Please confirm your registration';
                $mail->Body    = "Click <a href='http://localhost/users/verification/$hash'>here</a> to verify your registration or go to  http://localhost/users/verification/$hash ";
                $mail->AltBody = "Go to http://localhost/users/verification/$hash to verify your registration" ;
                
                if(!$mail->send()) 
                    return $mail->ErrorInfo;
                
                return true;
        }
       public function activate_verification($hash)
       {
                $query=$this->db->get_where('verifications',array('hash' =>$hash,'status' => 0));
                $query=$query->result_array();

                if(empty($query)) return false;
                $q=$query[0];
                $this->db->set('status',1)
                         ->where('idverification',$q['idverification'])
                         ->update('verifications');

                
                $this->db->set('status',1)
                         ->where('iduser',$q['fkuser'])
                         ->update('users');
                return true;
        
       }
       public function login($username,$password)
       {
                $password=sha1($password);
                $query=$this->db->get_where('users',array('password' => $password,
                                                          'username' => $username,
                                                          'status' => 1));
                $query=$query->result_array();
                
                if(empty($query)) return false;
                
                $q=$query[0];
                $this->load->library('session');
                $this->session->set_userdata($q);
                
                return true;
                
                
       }
}