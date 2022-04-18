<?php
// copy-right http://www.fpdf.org/
ini_set("default_charset", "UTF-8");
header('Content-type: text/html; charset=UTF-8');
require('mysql_table.php');
require('Database.php');

class PDF extends PDF_MySQL_Table
{
function Header()
{
    // Title
    $this->AddFont('DejaVu','','DejaVuSansCondensed.ttf',true);
    $this->SetFont('DejaVu','',18);
    //$this->SetFont('Arial','',18);
    $this->Cell(0,6,'ΣΤΑΤΙΣΤΙΚΑ ΦΑΓΗΤΟΥ',0,1,'C');
    $this->Ln(10);
    // Ensure table header is printed
    parent::Header();
}
}


function report($sql,...$data_query){
    // Connect to database
    $database = new  Database();
    $pdf = new PDF();
    $pdf->AddPage();
    // First table: output all columns
    $pdf->AddCol('DATE',-1,'Ημ/νια','C');
    if (strpos($sql, 'coupons_sum_breakfast') !== false)
        $pdf->AddCol('coupons_sum_breakfast',-1,"Πρωινό",'C');
    if (strpos($sql, 'coupons_sum_lunch') !== false)
        $pdf->AddCol('coupons_sum_lunch',-1,"Μεσημεριανό",'C');
    if (strpos($sql, 'coupons_sum_dinner') !== false)
        $pdf->AddCol('coupons_sum_dinner',-1,"Βραδινό",'C');

    $prop = array('HeaderColor'=>array(255,150,100),
                'color1'=>array(210,245,255),
                'color2'=>array(255,255,210),
                'padding'=>2);
    /* $pdf->Table($link,'SELECT sum(`breakfast`)as `coupons_sum_breakfast`,
    sum(`lunch`) as `coupons_sum_lunch`,
    sum(`dinner`) as `coupons_sum_dinner`,date_format(`free_food`.`DATE`,"%d/%m/%Y") as `DATE`
    from `free_food` 
    WHERE `DATE`>="2019-06-14" AND `DATE`<="2019-06-30"
    GROUP BY `free_food`.`DATE`order by `free_food`.`DATE`;',$prop,"ss","2019-06-14","2019-06-30"); */
    $pdf->Table($database,$sql,$prop,...$data_query);
    $pdf->Output("report.pdf","I");
    $database->close();

}
/* report('SELECT sum(`breakfast`)as `coupons_sum_breakfast`,
sum(`lunch`) as `coupons_sum_lunch`,
sum(`dinner`) as `coupons_sum_dinner`,date_format(`free_food`.`DATE`,"%d/%m/%Y") as `DATE`
from `free_food` 
WHERE `DATE`>=? AND `DATE`<=?
GROUP BY `free_food`.`DATE`order by `free_food`.`DATE`;',"ss","2019-06-14","2019-06-30"); */
?>