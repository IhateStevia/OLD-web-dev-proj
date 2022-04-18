<?php
//include '/../../con_vars.php';
    class Database{
    
        private $link=NULL;
        //on web
        private $host ="fdb26.biz.nf";
        private $user ="3019202_estiatorio";
        private $pwd ="project2019";
        private $db ="3019202_estiatorio";
        //local
        /* private  $host ="localhost";
        private $user ="root";
        private $pwd ="";
        private $db ="estiatorio"; */
        function open(){
            include('../../con_vars.php');
            $link=$this->link;
            if (!$link)
                $link=new mysqli($this->host,$this->user,$this->pwd,$this->db);//$link=new mysqli($host,$user,$pwd,$b);
            if ($link->connect_errno){
                //echo "Debigging errno".mysqli_connect_errno() . PHP_EOL;
                echo "Αδυναμία στην σύνδεση της βάσης δεδομένων.Προσπαθήστε ξανά σε λίγο ";
                exit;
            }
            $link->set_charset('utf8');
            $this->link=$link;
            return $link;
            
        }
        function asksql($sql,...$el){
            $link=$this->link;
            if (!$link)
                $link=$this->open();
            $stm=$link->prepare($sql);
            //call_user_func_array(array($stm, "bind_param"),$el);
            //var_dump($el);
            $stm->bind_param(...$el);
            $stm->execute();
            //return $stm;
            $result = $this->get_result($stm);
            //$result =$stm->get_result();
            return $result;
        }

        function close(){
            $this->link->close();
            
        }
        

        function get_result(\mysqli_stmt $statement){
            $result = array();
            $statement->store_result();
            for ($i = 0; $i < $statement->num_rows; $i++)
            {
                $metadata = $statement->result_metadata();
                $params = array();
                while ($field = $metadata->fetch_field())
                {
                    $params[] = &$result[$i][$field->name];
                }
                call_user_func_array(array($statement, 'bind_result'), $params);
                $statement->fetch();
            }
            return new arraytofetch_assoc($result);
        }
    }
    class arraytofetch_assoc {
        private $array;
        public function __construct(array $arguments = array()){
            $this->array=$arguments;
        }
        function fetch_assoc(){
            return array_shift($this->array);
        }
    }
?>
