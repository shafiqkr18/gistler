<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use DB;
class Home extends Model
{
    //

 public function get_locationData()
 {
 // 	$first = DB::table('crm_location')
 // 	 		->select('SELECT loc_id as id,loc_name as name');
 //           // ->whereNull('first_name');

	// $users = DB::table('crm_subloc')
	// 		->select('SELECT sub_loc_id as id,sub_sub_loc as name')
 //           // ->whereNull('last_name')
 //            ->union($first)
 //            ->get();
 //    return $users;       

$sql = "SELECT *
FROM
( SELECT l.loc_id as id,l.loc_name as name,'loc' as tbl,l.loc_id as pid FROM crm_location as l
 
UNION
SELECT sl.sub_loc_id as id,sl.sub_sub_loc as name,'subloc' as tbl,sl.loc_id as pid FROM crm_subloc as sl
 
 ) x
";

//$results = DB::select('select * from crm_location');//this is simple raw statement which is working

$results = DB::select($sql);
return $results;


 }

    
}
