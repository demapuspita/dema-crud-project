<?php

include('config.php');

if(isset($_POST['submit'])){
	$u_card = $_POST['card_no'];
	$u_f_name = $_POST['user_first_name'];
	$u_l_name = $_POST['user_last_name'];
	$u_prodi = $_POST['user_prodi'];
	$u_smt = $_POST['user_smt'];
	$u_kelas = $_POST['user_kelas'];
	$u_angkatan = $_POST['user_angkatan'];
	$u_father = $_POST['user_father'];
	$u_birthday = $_POST['user_dob'];
	$u_gender = $_POST['user_gender'];
	$u_email = $_POST['user_email'];
	$u_phone = $_POST['user_phone'];
	$u_state = $_POST['state'];
	$u_dist = $_POST['dist'];
	$u_village = $_POST['village'];
	$u_pincode = $_POST['pincode'];
	$u_mother = $_POST['user_mother'];
	


	//image upload

	$msg = "";
	$image = $_FILES['image']['name'];
	$target = "upload_images/".basename($image);

	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Foto berhasil diunggah";
  	}else{
  		$msg = "Gagal mengunggah foto";
  	}

  	$insert_data = "INSERT INTO student_data(u_card, u_f_name, u_l_name, u_prodi, u_smt, u_kelas, u_angkatan, u_father, u_aadhar, u_birthday, u_gender, u_email, u_phone, u_state, 
	u_dist, u_village, u_police, u_pincode, u_mother,image,uploaded) 
	VALUES ('$u_card','$u_f_name','$u_l_name','$u_father','$u_birthday', '$u_gender','$u_email','$u_phone','$u_state','$u_dist','$u_village','$u_pincode','$u_mother','$image',NOW())";
  	$run_data = mysqli_query($con,$insert_data);

  	if($run_data){
		  $added = true;
  	}else{
  		echo "Data gagal dimasukkan";
  	}

}

?>