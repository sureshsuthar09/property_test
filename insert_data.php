<?php
include("db/database.php");
include("config/constant.php");

$url = 'https://trial.craig.mtcserver15.com/api/properties';           
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$response = curl_exec($ch);
curl_close($ch);

$result = json_decode($response);

// Initialize database connection
$data = new DatabaseClass();

if(isset($result->data) && count($result->data)>0){
	foreach ($result->data as $key => $value) {
		$resultData['property'] = [
			'property_type_id'=>$value->property_type_id,
			'county'=>$value->county,
			'country'=>$value->country,
			'town'=>$value->town,
			'description'=>$value->description,
			'address'=>$value->address,
			'image'=>$value->image_full,
			'thumbnail'=>$value->image_thumbnail,
			'latitude'=>$value->latitude,
			'longitude'=>$value->longitude,
			'number_of_bedrooms'=>$value->num_bedrooms,
			'number_of_bathrooms'=>$value->num_bathrooms,
			'price'=>$value->price,
			'type'=>$value->type
		];

		$resultData['property_type'] = [
			'id'=>$value->property_type->id,
			'property_title'=>$value->property_type->title,
			'property_description'=>$value->property_type->description
		];

		$data->insert_data($resultData);
	}
	echo json_encode(['success'=>true,'msg'=>'Data inserted successfully']);
}else{
	echo json_encode(['success'=>false,'msg'=>'Data not found']);
}



?>