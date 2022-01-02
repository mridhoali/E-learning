<!DOCTYPE html>
<?
error_reporting(0);

session_start();
date_default_timezone_set("Asia/Jakarta");	
include "admin/page/include/connect.php";
include "admin/page/include/fungsi_indotgl1.php";

if($_REQUEST[logout]=="1")
	{
	unset($_SESSION[user]);
	unset($_SESSION[nisn]);
	session_destroy();
	
	print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
	exit();	
	}
	
$thn_ini = date("y");
$bln_ini = date("m");
?>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>E-Learning MTs Guppi Natar</title>
  	<link rel="icon" type="image/png" href="favicon.ico">

     <!-- Preloader -->
    <link rel="stylesheet" href="css/preloader.css" type="text/css" media="screen, print"/>

    <!-- Icon Font-->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.css">
    <!-- Animate CSS-->
    <link rel="stylesheet" href="css/animate.css">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- jqplot -->
	<link class="include" rel="stylesheet" type="text/css" href="css/jquery.jqplot.min.css" />

    <!-- Style -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive.css" rel="stylesheet">
    
    <script type="text/javascript" src="js/jquery.min.js"></script>
    
  	<link rel="stylesheet" href="css/jquery-ui.css"><link rel="stylesheet" href="/resources/demos/style.css">
</head>

<body>

<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>

    <header id="HOME" style="background-position: 50% -125px;">
    	<section class="" id="SERVICE">
	        <div class="">
	            <nav class="navbar navbar-default navbar-fixed-top">
	              <div class="container">
	                <!-- Brand and toggle get grouped for better mobile display -->
	                <div class="navbar-header">
	                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                  </button>
	                  <a class="navbar-brand" href="#" style="margin-top:-8px"><img src="logo-header.png" alt=""></a>
	                </div>

	                <!-- Collect the nav links, forms, and other content for toggling -->
	                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                  <ul class="nav navbar-nav navbar-right">
	                    <li><a href="?index.php#HOME">Home</a></li>
	                    <li><a href="?index.php&content=materi#MATERI">Materi</a></li>
	                    <li><a href="?index.php&content=tugas#TUGAS">Tugas</a></li>
	                    <li><a href="?index.php&content=forum#FORUM">Forum</a></li>
	                    <li><a href="?index.php&content=kontak#CONTACT">Kontak</a></li>
	                    <?
	                    if(!empty($_SESSION[nisn]))
	                    	{
	                    ?>
	                    	<li><a href="?index.php&content=latihansoal2#LATIHANSOAL2">Latihan Soal</a></li>
	                   	 	<li><a href="admin/page/?opt=murid&menu=profile&submenu=A">Profile</a></li>
	                   	 	<li><a href="?index.php&logout=1">Logout</a></li>
	                    <?
							}
						else
							{
						?>
	                    <li><a href="?index.php&content=latihansoal#LATIHANSOAL">Latihan Soal</a></li>
	                    <li><a href="?index.php&content=login#LOGIN">Login</a></li>
						<?
							}
	                    ?>
	                  </ul>
	                </div><!-- /.navbar-collapse -->
	              </div><!-- /.container -->
	            </nav> 

	            <div class="container">
	                <div class="row">
	                    <div class="col-md-12 text-center">
	                        <div class="home_text wow fadeInUp animated">
	                        </div>
	                    </div>
	                </div>
	            </div>

	            <div class="container">
	                <div class="row">
	                    <div class="col-md-12 text-center">
	                        <div class="scroll_down">
	                        </br>&nbsp;
	                        </br>&nbsp;
	                        </br>&nbsp;
	                        </br>&nbsp;
	                        </br>&nbsp;
	                        </div>
	                    </div>
	                </div>
	            </div>            
	        </div>  
	    </section>         
    </header>

<?
if(empty($_REQUEST[content]))
	{
?>
    <section class="about_us_area" id="ABOUT">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="about_title">
                        <h2>SEJARAH MTS GUPPI NATAR</h2>
                        <img src="images/shape.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12  wow fadeInRight animated" style="margin-top:-40px">
                	<p style="text-align:justify">
                	SMP Negeri 3 Natar adalah salah satu Sekolah Menengah  Pertama di Kecamatan Natar yang dinegerikan pada 17 Nopember 2000; adapun latar belakang penegerian sekolah ini adalah sebagai berikut:
                	</p>
                	
            		<p style="text-align:justify;padding-left:5%">Dari  tahun 1976 sampai dengan tahun 1989 sekolah ini bernama SMP IDHATA, kemudian pada tanggal 22 Desember 1990 berganti nama SMP HANDAYANI dengan status DIAKUI dengan Akte Notaris IMRAN MA’RUF, SH tanggal 09 Agustus 1990 Nomor 47 dan SK DIRJEN DIKDASMEN JAKARTA Nomor : 349/C/KOP/I/1990 tanggal 27 Desember 1990 JO SK KAKANWIL DEPDIKBUD PROPINSI LAMPUNG Nomor : 1345/I12.G/Kep/I/1990 tanggal 22 Desember 1990.</p>
            		<p style="text-align:justify;padding-left:5%">Kemudian pada tanggal 28 Februari 1998 Ketua Yayasan Handayani Dharma Wanita Unit Kanwil Depdikbud Propinsi Lampung menyerahkan seluruh aset yang dimiliki kepada Kepala Kanwil Depdikbud Propinsi Lampung. Kemudian oleh Kepala Kanwil Depdikbud Propinsi Lampung dinegerikan menjadi SLTP Negeri 5 Natar.</p>
            			

                	<p style="text-align:justify">
					Menimbang bahwa untuk menunjang pelaksanaan wajib belajar pendidikan dasar 9 tahun dan meningkatkan daya tampung lulusan SLTP, maka pihak sekolah mengusulkan melalui musyawarah dengan tokoh masyarakat Desa Tanjungsari untuk mengembangkan dalam arti luas ( menambah lokal, sarana prasarana dan fasilitas lainnya ) tetapi usulan tersebut kurang mendapat respon dari masyarakat Desa Tanjung Sari, yaitu menyiapkan tanah sebagaimana yang disyaratkan untuk mendirikan sekolah negeri. Dan  sampai dengan akhir tahun 1999 tidak ada jawaban atau realisasi mengenai penyediaan tanah untuk membangun USB. Kemudian  Pemerintah Kecamatan Natar menawarkan kepada Masyarakat  Desa  Hajimena  dan oleh Kepala  Desa dan   Masyarakatnya       tawaran tersebut  disambut dengan antusias dan bersedia untuk mengusahakan/menyediakan  lahan  ± 15.000 M².Setelah melalui proses  yang tidak begitu lama maka lahan yang dibutuhkan dan  dibangun USB terealisir.
					</p>
					<p style="text-align:justify">
					Dan pada awal tahun pelajaran 2000/2001  berdasarkan SK MENTERI PENDIDIKAN NASIONAL RI Nomor 217/O/2000 tanggal 17 Nopember 2000 sekolah ini resmi menjadi SLTP NEGERI 5 NATAR dan mulai menerima siswa baru.
					</p>
					<p style="text-align:justify">	
					Dengan adanya gedung baru ( USB ) maka SLTP Negeri 5 Natar mulai tahun pelajaran 2000/2001 sampai sekarang memiliki 2 lokasi sekolah, yaitu di Desa Hajimena dan Tanjung Sari. Kondisi ini memerlukan mobilitas yang cukup tinggi sehingga manajemen tidak dapat terpusat pada satu tempat  karena ketenagaan / Personalia  mulai dari Kepala Sekolah, Guru dan TU terbagi dua.
					dan pada tahun 2002 berubah menjadi SMP Negeri 3 Natar. Sejak dinegerikan SMP Negeri 3 Natar dipimpin oleh Dra.Hj. Hairiah Hasan dan pada bulan September 2009 Kepala SMPN 3 Natar digantikan Dra. Ros Lili Budiarti sampai dengan saat ini. Secara kekeluargaan dan tanggung jawab yang tinggi tahap demi tahap SMP Negeri 3 Natar mencoba mensejajarkan diri dengan SMP yang ada di Kabupaten Lampung Selatan dan Kota Bandar Lampung.
					Keadaan SMP Negeri 3 Natar sekarang adalah :
					</p>
        				</br>
					
						<p style="text-align:justify;padding-left:5%">Jumlah Guru PNS      = 60 PNS  + 4 Guru Honorer</p>
						<p style="text-align:justify;padding-left:5%">Jumlah TU PNS         =   8 PNS   + 9 Pegawai Honorer</p>
						<p style="text-align:justify;padding-left:5%">Jumlah kelas              = 23 kelas ( 14 di Hajimena ) + ( 9 di Tanjungsari )</p>
               	</div>
            </div>
        </div>
        </br>
        </br>
        </br>
        </br>
    </section>
<?
	}
	
if($_REQUEST[content]=="latihansoal")
	{
?>
    <section class="contact" id="LATIHANSOAL">
        <div class="container">
            <div class="row">
				<div class="col-md-1"></div>
                <div class="col-md-10 text-center">
                    <div class="contact_title  wow fadeInUp animated">
                        <h1>LATIHAN SOAL</h1>
                        <img src="images/shape.png" alt="">
                        <p>Silahkan login terlebih dahulu untuk mengikuti latihan soal.</p>
                        <p style="margin-top:-80px">Gunakan NISN kamu sebagai username dan password yang telah diberikan oleh bagian administrasi sekolah.</p>
                    </div>
                </div>
				<div class="col-md-1"></div>
            </div>
        </div>
        <?        
        if($_REQUEST[login]=="1"){
			$d1 = mysql_fetch_array(mysql_query("SELECT * FROM user WHERE user='$_REQUEST[user]'"));
			if (empty($d1[user]))
				{
				$d2 = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE user ='$_REQUEST[user]'"));
				if (empty($d2['user']))
					{
					$d3 = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn ='$_REQUEST[user]'"));
					if (empty($d3['nisn']))
						{
						echo '<script>alert ("User belum terdaftar.")</script>';
						print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
						exit();
						}
					else
						{
						if($d3['pass'] != $_REQUEST[pass])
							{
							echo "<script>alert ('Password salah.')</script>";
							print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
							exit();	
							}
						else
							{
		        			$_SESSION[nisn]   = $d3[nisn];
		        			$_SESSION[nama]   = $d3[nama];
		        			$_SESSION[status] = "Murid";
							}
						}
					}
				else
					{
					if($d2['pass'] != $_REQUEST[pass])
						{
						echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
						exit();	
						}
					else
						{
						$_SESSION[nisn] = strtoupper($d2[user]);
						$_SESSION[user] = $d2[user];
						$_SESSION[nip] = $d2[nip];
						$_SESSION[nama] = $d2[nama];
						$_SESSION[status] = "Guru"; 
						}
					}
				}
			else
				{
				if($d1[pass] != $_REQUEST[pass])
					{
					echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
					exit();	
					}
				else
					{
					$_SESSION[nisn]   = "ADMIN";
					$_SESSION[nama]   = $d1[nama];
					$_SESSION[user]   = $d1[user];
					$_SESSION[status] = $d1[status]; 
					}
				}
				
			echo "<script>alert ('Login Berhasil! Selamat Datang $_SESSION[nama].')</script>";
			print '<meta http-equiv="refresh" content="0;url=?index.php&content=forum#FORUM"/>';
			exit();	
			/*
        	$dC1 = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn='$_REQUEST[user]'"));
			if (empty($dC1[nisn]))
				{
				echo '<script>alert ("Username salah atau belum terdaftar.")</script>';
				print '<meta http-equiv="refresh" content="0;url=?index.php&content=latihansoal#LATIHANSOAL"/>';
				exit();
				}
			else
				{
				if($dC1[pass] != $_REQUEST[pass])
					{
					echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=latihansoal#LATIHANSOAL"/>';
					exit();	
					}
				else
					{
        			$_SESSION[nisn]= $dC1[nisn];
        			$_SESSION[nama]   = $dC1[nama];
        			$_SESSION[user]   = $dC1[user];
        			$_SESSION[status]   = "Murid";
					
					echo "<script>alert ('Login Murid Berhasil! Selamat Datang $_SESSION[nama].')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=latihansoal2#LATIHANSOAL2"/>';
					exit();	
					}
				}
			*/
			}
        ?>
        <div class="container">
            <div class="row">
            	<div class="col-md-2"></div>
                <div class="col-md-8  wow fadeInRight animated">
					<form  method="post" action="">
                    <div class="row" style="margin-top:-50px">
                        <div class="col-md-4">
                            <input type="text" name="user" class="form-control" style="height: 45px" required placeholder="Username">
                        </div>
                        <div class="col-md-4">
                            <input type="password" name="pass" class="form-control" style="height: 45px" required id="name" placeholder="Password">
                        </div>
                        <div class="col-md-4">
                            <input type="hidden" name="login" value="1"/>
                            <button type="submit" class="btn btn-default submit-btn form_submit">LOGIN</button>                                
                        </div>
                    </div>
                    </form>
                    </br>
                    </br>
                    </br>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="login")
	{
?>
    <section class="contact" id="LOGIN">
        <div class="container">
            <div class="row">
				<div class="col-md-1"></div>
                <div class="col-md-10 text-center">
                    <div class="contact_title  wow fadeInUp animated">
                        <h1>Login</h1>
                        <img src="images/shape.png" alt="">
                        <p style="margin-top:0px">Gunakan NISN kamu sebagai username dan password yang telah diberikan oleh bagian administrasi sekolah.</p>
                    </div>
                </div>
				<div class="col-md-1"></div>
            </div>
        </div>
        <?        
        if($_REQUEST[login]=="1"){
			$d1 = mysql_fetch_array(mysql_query("SELECT * FROM user WHERE user='$_REQUEST[user]'"));
			if (empty($d1[user]))
				{
				$d2 = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE user ='$_REQUEST[user]'"));
				if (empty($d2['user']))
					{
					$d3 = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn ='$_REQUEST[user]'"));
					if (empty($d3['nisn']))
						{
						echo '<script>alert ("User belum terdaftar.")</script>';
						print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
						exit();
						}
					else
						{
						if($d3['pass'] != $_REQUEST[pass])
							{
							echo "<script>alert ('Password salah.')</script>";
							print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
							exit();	
							}
						else
							{
		        			$_SESSION[nisn]   = $d3[nisn];
		        			$_SESSION[nama]   = $d3[nama];
		        			$_SESSION[status] = "Murid";
							}
						}
					}
				else
					{
					if($d2['pass'] != $_REQUEST[pass])
						{
						echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
						exit();	
						}
					else
						{
						$_SESSION[nisn] = strtoupper($d2[user]);
						$_SESSION[user] = $d2[user];
						$_SESSION[nip] = $d2[nip];
						$_SESSION[nama] = $d2[nama];
						$_SESSION[status] = "Guru"; 
						}
					}
				}
			else
				{
				if($d1[pass] != $_REQUEST[pass])
					{
					echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
					exit();	
					}
				else
					{
					$_SESSION[nisn]   = "ADMIN";
					$_SESSION[nama]   = $d1[nama];
					$_SESSION[user]   = $d1[user];
					$_SESSION[status] = $d1[status]; 
					}
				}
				
			echo "<script>alert ('Login Berhasil! Selamat Datang $_SESSION[nama].')</script>";
			print '<meta http-equiv="refresh" content="0;url=?index.php&content=forum#FORUM"/>';
			exit();	
			/*
        	$dC1 = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn='$_REQUEST[user]'"));
			if (empty($dC1[nisn]))
				{
				echo '<script>alert ("Username salah atau belum terdaftar.")</script>';
				print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
				exit();
				}
			else
				{
				if($dC1[pass] != $_REQUEST[pass])
					{
					echo "<script>alert ('Password salah.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
					exit();	
					}
				else
					{
        			$_SESSION[nisn]= $dC1[nisn];
        			$_SESSION[nama]   = $dC1[nama];
        			$_SESSION[user]   = $dC1[user];
        			$_SESSION[status]   = "Murid";
					
					echo "<script>alert ('Login Murid Berhasil! Selamat Datang $_SESSION[nama].')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=login#LOGIN"/>';
					exit();	
					}
				}
			*/
			}
        ?>
        <div class="container">
            <div class="row">
            	<div class="col-md-2"></div>
                <div class="col-md-8  wow fadeInRight animated">
					<form  method="post" action="">
                    <div class="row" style="margin-top:-50px">
                        <div class="col-md-4">
                            <input type="text" name="user" class="form-control" style="height: 45px" required placeholder="Username">
                        </div>
                        <div class="col-md-4">
                            <input type="password" name="pass" class="form-control" style="height: 45px" required id="name" placeholder="Password">
                        </div>
                        <div class="col-md-4">
                            <input type="hidden" name="login" value="1"/>
                            <button type="submit" class="btn btn-default submit-btn form_submit">LOGIN</button>                                
                        </div>
                    </div>
                    </form>
                    </br>
                    </br>
                    </br>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="latihansoal2")
	{
?>
    <section class="contact" id="LATIHANSOAL2">
        <div class="container">
            <div class="row">
				<div class="col-md-1"></div>
                <div class="col-md-10 text-center">
                    <div class="contact_title  wow fadeInUp animated">
                        <h1>LATIHAN SOAL</h1>
                        <img src="images/shape.png" alt="">
                        <p>Selamat Datang Murid, <?echo $_SESSION[nama]?>.</br>Untuk mengganti password dan melihat hasil dari latihan soal yang telah anda kerjakan dapat anda lihat pada halaman <a href="admin/page/?opt=murid&menu=profile&submenu=A" target="_blank">admin</a>.</br>
                        Sedangkan untuk keluar dari halaman ini silahkan klik link berikut
                        <a href="?index.php&logout=1"><button type="button" class="btn btn-default submit-btn">LOGOUT</button></a></br></br>
                        </p>
                </div>
				<div class="col-md-1"></div>
            	</div>
            </div>
            <div class="row" >
            	<div class="col-md-3"></div>
                <div class="col-md-6  wow fadeInRight animated" style="margin-top:-60px">
                    <table id="example2" class="table table-bordered table-hover" style="width:100%;">
                        <thead>
                            <tr>
                                <th>KODE LATIHAN</th>
                                <th>TOTAL SOAL</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <?
                        $q1 = mysql_query("SELECT * FROM tbl_tanya GROUP BY kodesoallatihan");
                        while($d1 = mysql_fetch_array($q1))
                        	{
                        	$qty = mysql_num_rows(mysql_query("SELECT kodesoallatihan FROM tbl_tanya WHERE kodesoallatihan='$d1[kodesoallatihan]'"));
                        ?>
                            <tr style="cursor:pointer">
                                <td><?echo $d1[kodesoallatihan]?></td>
                                <td align="center"><?echo $qty?></td>
                                <td align="center">
                                	<a href="?index.php&content=latihansoal3&kodesoallatihan=<?echo $d1[kodesoallatihan]?>#LATIHANSOAL3">
                                		<button type="button" class="btn btn-info" style="padding:0 30px">MULAI</button>
                                	</a>
                                </td>
                            </tr>
                        <?
                        	}
                        ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="latihansoal3")
	{
	$dCek = mysql_fetch_array(mysql_query("SELECT * FROM tbl_hasil WHERE nisn='$_SESSION[nisn]' AND kodesoallatihan='$_REQUEST[kodesoallatihan]'"));
	if(!empty($dCek))
		{
		echo "<script>alert ('Anda Sudah Pernah Melakukan Tes Ini. Silahkan Pilih Kode Latihan Yang Lainnya.')</script>";
		print '<meta http-equiv="refresh" content="0;url=?index.php&content=latihansoal2#LATIHANSOAL2"/>';
		exit();
		}
	
    $d2 = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn='$_SESSION[nisn]'"));
?>
	    <section class="contact" id="LATIHANSOAL3">
	        <div class="container">
	            <div class="row">
		            <div class="col-md-12 text-center">
		                <div class="work_title  wow fadeInUp animated">
		                    <h1>LATIHAN SOAL <?echo $_REQUEST[kodesoallatihan]?></h1>
		                    </br>
		                    </br>
		                    <img src="images/shape.png" alt="">
		                </div>
		            </div>
		            <div class="row col-md-3"></div>
		            <div class="row col-md-8">
					    <form method="post" action="?content=latihansoal4" enctype="multipart/form-data">
						<table style="width:100%;margin-bottom:40px">
	                    		<tr>
	                    			<td width="20%">NAMA MURID</td>
	                    			<td width="3%">:</td>
	                    			<td><?echo $_SESSION[nama]?></td>
	                    		</tr>
	                    		<tr>
	                    			<td>NISN</td>
	                    			<td>:</td>
	                    			<td><?echo $d2[nisn]?></td>
	                    		</tr>
	                    		<tr>
	                    			<td>KELAS</td>
	                    			<td>:</td>
	                    			<td><?echo $d2[kelas]?></td>
	                    		</tr>
	                    		<!--
	                    		<tr>
	                    			<td>WAKTU MULAI</td>
	                    			<td>:</td>
	                    			<td><?echo date("d-m-Y H:i",strtotime($_SESSION[mulai]))?></td>
	                    		</tr>
	                    		<tr>
	                    			<td></td>
	                    			<td></td>
	                    			<td>Kami memberikan waktu Anda selama <b><?echo $d2[ts]?> menit</b> untuk menyelasi simulasi ujian ini. Jika Anda melewati batas waktu yang ditentukan jawaban Anda tidak bisa kami simpan.</td>
	                    		</tr>
	                    		-->
	                    		<tr><td></br></br></td></tr>
								<tr>
									<td colspan="3">
				                       	 	<table>
				                            <?
				                            $no = 1;
				                            $q1 = mysql_query("SELECT * FROM tbl_tanya WHERE kodesoallatihan='$_REQUEST[kodesoallatihan]'");
				                            while($d1 = mysql_fetch_array($q1))
				                            	{
				                            	if(!empty($d1[gambar])){$gbr = "<a href='soallatihan/$d1[gambar]?>' target='_blank'><img src='soallatihan/$d1[gambar]' width='350px'></a></br>";}
				                            	else{$gbr='';}
				                            ?>
				                                <tr>
				                                    <td valign="top" width="5%"><b><?echo $no?>.</b></td>
				                                    <td valign="top"><?echo $gbr?><b><?echo $d1[tanya]?></b></br></td>
				                                </tr>
				                            <?
				                            	$j = mysql_query("SELECT * FROM tbl_jawab WHERE idtanya='$d1[id]' ORDER BY urut");
					                            while($dj = mysql_fetch_array($j))
					                            	{
					                        ?>
					                                <tr>
					                                    <td></td>
					                                    <td><label style="cursor: pointer;font-weight: normal"><input type="radio" value="<?echo $dj[id]?>" name="soal<?echo $d1[id]?>"/> <?echo "$dj[urut]. $dj[jawab]"?></label></td>
					                                </tr>
					                        <?
					                        		}
					                        	$no++;
					                        ?>
				                                <tr><td height="20px"></td></tr>
					                        <?
				                            	}
				                            ?>
				                        	</table>
									</td>
								</tr>
	                    		<tr>
	                    			<td colspan="3">
		                    			<input type="hidden" name="kodesoallatihan" value="<?echo $_REQUEST[kodesoallatihan]?>"/>
		                    			<button type="submit" class="btn btn-default submit-btn form_submit">SIMPAN</button>
	                    			</td>
	                    		</tr>
						</table>
				        </form>
		            </div>
	            </div>
	        </div>
	    </section>
<?
	}
	
if($_REQUEST[content]=="latihansoal4")
	{
		/*
		function datediff($tgl1, $tgl2){
		$tgl1 = strtotime($tgl1);
		$tgl2 = strtotime($tgl2);
		$diff_secs = abs($tgl1 - $tgl2);
		$base_year = min(date("Y", $tgl1), date("Y", $tgl2));
		$diff = mktime(0, 0, $diff_secs, 1, 1, $base_year);
		return array( "years" => date("Y", $diff) - $base_year, "months_total" => (date("Y", $diff) - $base_year) * 12 + date("n", $diff) - 1, "months" => date("n", $diff) - 1, "days_total" => floor($diff_secs / (3600 * 24)), "days" => date("j", $diff) - 1, "hours_total" => floor($diff_secs / 3600), "hours" => date("G", $diff), "minutes_total" => floor($diff_secs / 60), "minutes" => (int) date("i", $diff), "seconds_total" => $diff_secs, "seconds" => (int) date("s", $diff) );
		}
		
		$tgl1 = date("Y-m-d H:i:s", strtotime($_SESSION[mulai]));
		$tgl2 = date("Y-m-d H:i:s");
		
    	//$id2    = $_REQUEST[ts];
    	$id2    = 90;
    	
		$data= strtotime($tgl2)-strtotime($tgl1);
		$selisih = round($data/60,0);
		if($selisih > $id2)
			{
			//echo "<script>alert ('Mohon Maaf $selisih.$_REQUEST[ts].$tgl1.$_SESSION[mulai], Semua Jawaban Anda Tidak Bisa Kami Simpan. Karena Setiap Soal Hanya Diberi Waktu 1 Menit Total $id2 Menit. Silahkan Login Kembali')</script>";
			echo "<script>alert ('Mohon Maaf Semua Jawaban Anda Tidak Bisa Kami Simpan. Karena Melebihi Waktu Yang Telah di Tentukan 90 Menit. Silahkan Login Kembali!')</script>";
			
			session_destroy();
			print "<meta http-equiv='refresh' content='0;url=?content=simulasiujian#simulasiujian'/>";
			exit();
			}
		else{
		*/
		
            $qz = mysql_query("SELECT * FROM tbl_tanya WHERE kodesoallatihan='$_REQUEST[kodesoallatihan]'");
            while($dz = mysql_fetch_array($qz))
            	{
            	$id = $dz[id];
				$dcek = mysql_fetch_array(mysql_query("SELECT * FROM tbl_hasil WHERE nisn='$_SESSION[nisn]' AND idtanya='$id' AND kodesoallatihan='$_REQUEST[kodesoallatihan]'"));
				if(!empty($dcek[id]))
					{
					echo "<script>alert ('Anda Sudah Pernah Mengikuti Latihan Soal Pelajaran Ini.')</script>";
					print '<meta http-equiv="refresh" content="0;url=?index.php&content=latihansoal2#LATIHANSOAL2"/>';
					exit();
					}
					
            	$hasil = $_REQUEST[soal.$id];
            	$ds = mysql_fetch_array(mysql_query("SELECT status FROM tbl_jawab WHERE id='$hasil'"));
            	mysql_query("INSERT INTO tbl_hasil (
            								waktu,
            								nisn,
            								kodesoallatihan,
            								idtanya,
            								idjawab,
            								status) 
            							VALUES (
            								NOW(),
            								'$_SESSION[nisn]',
            								'$_REQUEST[kodesoallatihan]',
            								'$id',
            								'$hasil',
            								'$ds[status]')");
            	}
            
            echo "<script>alert ('Terima kasih, jawaban anda telah kami simpan. Anda akan kami arahkan pada halaman admin untuk melihat hasil latihan soal yang telah anda kerjakan.')</script>";
			print '<meta http-equiv="refresh" content="0;url=admin/page/?opt=murid&menu=hasillatihan&submenu=A"/>';
			exit();
	}
	
if($_REQUEST[content]=="tugas")
	{
	function UploadMateri($fupload_name)
		{
		$vdir_upload = "materitugas/";
		$vfile_upload = $vdir_upload . $fupload_name;
		move_uploaded_file($_FILES["fupload"]["tmp_name"], $vfile_upload);
		}
	if(!empty($_REQUEST[input]))
		{
		$lokasi_file    = $_FILES['fupload']['tmp_name'];
		$tipe_file      = $_FILES['fupload']['type'];
		$nama_file      = $_FILES['fupload']['name'];
		$nama_file_unik1 = $nama_file;
		
		UploadMateri($nama_file_unik1);
		$q1 = mysql_query("INSERT INTO uploadtugas (	
	                                    waktu,
	                                    nisn,
	                                    idmateritugas,
	                                    dokumen)
									VALUES (				
	                                    NOW(),
	                                    '$_SESSION[nisn]',
	                                    '$_REQUEST[input]',
	                                    '$nama_file_unik1')
							");
							
		echo '<script>alert ("Proses Berhasil.")</script>';
		print "<meta http-equiv='refresh' content='0;url=?index.php&content=tugas#TUGAS'/>";
		exit();
		}
?>
    <section class="contact" id="TUGAS">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_title  wow fadeInUp animated text-center">
                        <h1>TUGAS</h1>
                        <img src="images/shape.png" alt="">
                    </div>
                    </br>
                    
                    <!--
                    <div class="single_contact_info">
                    	<h4 class="text-center">Untuk men-download materi belajar silahkan memilih guru terlebih dahulu dilanjutkan dengan memilih mata pelajarannya.</h4>
                    	</br>
                    	</br>
                    -->
		            <div class="col-md-12">
	                    <table id="example2" class="table table-bordered table-hover" style="width:100%">
	                        <thead>
	                            <tr>
	                                <th>WAKTU</th>
	                                <th>NAMA GURU</th>
	                                <th>KETERANGAN</th>
	                                <th>DOKUMEN</th>
	                                <th>UPLOAD HASIL</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        <?
							$q2 = mysql_query("SELECT * FROM materitugas ORDER BY id DESC");
							$q1 = mysql_query("SELECT * FROM materitugas ORDER BY id DESC");
	                        while($d1 = mysql_fetch_array($q1))
	                        	{
								$dCek = mysql_fetch_array(mysql_query("SELECT * FROM uploadtugas WHERE idmateritugas='$d1[id]' AND nisn='$_SESSION[nisn]'"));
								$dP = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE id='$d1[idguru]'"));
								if(empty($dP[nama])){
									$ng = "Admin";
									}
								else{
									$ng = $dP[nama];
									}
	                        ?>
	                            <tr style="cursor:pointer">
	                                <td align="center"><?echo DATE("d-m-Y H:i:s",strtotime($d1[waktu]))?></td>
			                        <td><?echo $ng?></td>
			                        <td><?echo "$d1[kode] - $d1[keterangan]"?></td>
	                                <td><a href="materitugas/<?echo $d1[dokumen]?>" target="_blank"><?echo $d1[dokumen]?></a></td>
	                                <td>
	                                <?
	                                if(empty($dCek[iduploadtugas]))
	                                	{
									?>
	                                	<a data-toggle="modal" data-target="#compose-modal-ubahdetail<?echo $d1[id]?>" style="cursor:pointer"><i class="fa fa-edit"></i>Upload Hasil</a>
									<?
										}
									else{
									?>
	                                   <a href="materitugas/<?echo $dCek[dokumen]?>" target="_blank"><?echo $dCek[dokumen]?></a>
									<?
										}
	                                ?>
	                                </td>
	                            </tr>
	                        <?
	                        	}
	                        ?>
	                        </tbody>
	                        <tfoot>
	                            <tr>
	                                <th colspan="10">&nbsp;</th>
	                            </tr>
	                        </tfoot>
	                    </table>
			    <?
                    while($d2 = mysql_fetch_array($q2))
                    	{
                ?>
<!-- ################## MODAL UBAH DETAIL ########################################################################################## -->
				        <div class="modal fade " id="compose-modal-ubahdetail<?echo $d2[id]?>" tabindex="-1" role="dialog" aria-hidden="true">
				            <div class="modal-dialog"  style="width:600px;">
				                <div class="modal-content">
				                    <div class="modal-header">
				                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				                        <h4 class="modal-title">UPLOAD HASIL TUGAS</h4>
				                    </div>
				                    
				                   	<form method="post" action="" enctype="multipart/form-data">
			                        <div class="modal-body">
					                    <table width="100%">
				                    		<tr>
				                    			<td valign="top">DOKUMEN HASIL TUGAS</td>
				                    			<td valign="top">:</td>
						                        <td valign="top" colspan="3">
													<input type="file" name="fupload" required="">
						                        </td>
											</tr>
					                    	<input type="hidden" name="input" value="<?echo $d2[id]?>">
		                            	</table>
				               		</div>
			                        <div class="modal-footer clearfix">
			                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-undo"></i> &nbsp;Batal</button>
										<button type="submit" class="btn btn-primary pull-left"><i class="fa fa-save"></i> &nbsp;Simpan</button>
				                	</div>
									</form>
				                </div>
				            </div>
				        </div>
<!-- ############################################################################################################################### -->
                <?
                		}
                ?>
	                </div>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="materi")
	{
?>
    <section class="contact" id="MATERI">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_title  wow fadeInUp animated text-center">
                        <h1>MATERI BELAJAR</h1>
                        <img src="images/shape.png" alt="">
                    </div>
                    </br>
                    
                    <!--
                    <div class="single_contact_info">
                    	<h4 class="text-center">Untuk men-download materi belajar silahkan memilih guru terlebih dahulu dilanjutkan dengan memilih mata pelajarannya.</h4>
                    	</br>
                    	</br>
                    -->
		            <div class="col-md-12">
	                    <table id="example2" class="table table-bordered table-hover" style="width:100%">
	                        <thead>
	                            <tr>
	                                <th>WAKTU</th>
	                                <th>NAMA GURU</th>
	                                <th>KETERANGAN</th>
	                                <th>DOKUMEN</th>
	                                <th>VIDEO</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        <?
							$q1 = mysql_query("SELECT * FROM materibelajar ORDER BY id DESC");
	                        while($d1 = mysql_fetch_array($q1))
	                        	{
								$dP = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE id='$d1[idguru]'"));
								if(empty($dP[nama])){
									$ng = "Admin";
									}
								else{
									$ng = $dP[nama];
									}
	                        ?>
	                            <tr style="cursor:pointer">
	                                <td align="center"><?echo DATE("d-m-Y H:i:s",strtotime($d1[waktu]))?></td>
			                        <td><?echo $ng?></td>
			                        <td><?echo "$d1[kode] - $d1[keterangan]"?></td>
	                                <td><a href="materibelajar/<?echo $d1[dokumen]?>" target="_blank"><?echo $d1[dokumen]?></a></td>
	                                <td width="30%%"><iframe src="https://www.youtube.com/embed/<?echo $d1[video]?>" allowfullscreen="allowfullscreen" width="100%"></iframe></td>
	                            </tr>
	                        <?
	                        	}
	                        ?>
	                        </tbody>
	                        <tfoot>
	                            <tr>
	                                <th colspan="10">&nbsp;</th>
	                            </tr>
	                        </tfoot>
	                    </table>
	                </div>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="forum")
	{
?>
    <section class="contact" id="FORUM">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_title  wow fadeInUp animated text-center">
                        <h1>FORUM</h1>
                        <img src="images/shape.png" alt="">
                        <p>Untuk dapat bergabung pada forum kamu harus login terlebih dahulu.</p>
                    </div>
                    </br>
                    <?
				    $q2 = mysql_query("SELECT * FROM forum");
				    while($d2 = mysql_fetch_array($q2))
				    	{
					    $d3 = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE id='$d2[idguru]'"));
						if(empty($d3[nama])){
							$ng = "Admin";
							}
						else{
							$ng = $d3[nama];
							}
					?>
	                    <div class="single_contact_info" style="border-bottom: dashed #ddd 1px;margin-top:20px">
	                        <div class="col-md-3" style="text-align:right;margin-top:-5px"">
	                            <h4><?echo date("d-m-Y H:i",strtotime($d2[waktu]))?></br><?echo $ng?></h4>
	                        </div>
	                        <div class="col-md-9">
	                            <h3 style="margin-top:0px"><?echo $d2[judul]?></h3>
	                            <h4><?echo $d2[isi]?></h4>
	                            <a href="?index.php&content=detailforum&idforum=<?echo $d2[idforum]?>#DETAILFORUM"><button type="button" class="btn btn-default submit-btn">Balas</button></a>
	                    	</div>
	                    	<div class="clearfix"></div>
	                    </div>
					<?
						}
                    ?>
	                </br>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="detailforum")
	{
    $d2 = mysql_fetch_array(mysql_query("SELECT * FROM forum WHERE idforum='$_REQUEST[idforum]'"));
    $d3 = mysql_fetch_array(mysql_query("SELECT * FROM guru WHERE id='$d2[idguru]'"));
	if(empty($d3[nama])){
		$ng = "Admin";
		}
	else{
		$ng = $d3[nama];
		}
		
	if(!empty($_REQUEST[komentar])){
		mysql_query("INSERT INTO komentarforum (
											idforum,
											waktu,
											nisn,
											komentar)
										VALUES (
											'$_REQUEST[idforum]',
											NOW(),
											'$_SESSION[nisn]',
											'$_REQUEST[komentar]'
											)
						
		");
		}
?>
    <section class="contact" id="DETAILFORUM">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_title  wow fadeInUp animated text-center">
                        <h1>FORUM</h1>
                        <img src="images/shape.png" alt="">
                        <p>Untuk dapat bergabung pada forum kamu harus login terlebih dahulu.</p>
                    </div>
                    </br>
                    
                    <div class="single_contact_info" style="border-bottom: dashed #ddd 1px">
                        <div class="col-md-3" style="text-align:right;margin-top:-5px"">
                            <h4><?echo date("d-m-Y H:i",strtotime($d2[waktu]))?></br><?echo $ng?></h4>
                        </div>
                        <div class="col-md-9">
                            <h3 style="margin-top:0px"><?echo $d2[judul]?></h3>
                            <h4><?echo $d2[isi]?></h4>
                            <div class="single_contact_info" style="#border-bottom: dashed #ddd 1px;border-top: dashed #ddd 1px;margin-bottom:20px">
			                    <?
							    $qA = mysql_query("SELECT * FROM komentarforum WHERE idforum='$_REQUEST[idforum]'");
							    while($dA = mysql_fetch_array($qA))
							    	{
								    $dB = mysql_fetch_array(mysql_query("SELECT * FROM murid WHERE nisn='$dA[nisn]'"));
								?>
				                    <div class="single_contact_info" style="border-bottom: dashed #ddd 1px;margin-top:20px">
				                        <div class="col-md-12" style="margin-top:-5px"">
				                            <p style="font-size:12px;color:#aaa"><?echo date("d-m-Y H:i",strtotime($dA[waktu]))?> | <?echo $dA[nisn]?></p>
				                           	<h4><?echo $dA[komentar]?></h4>
				                        </div>
				                    	<div class="clearfix"></div>
				                    </div>
								<?
									}
			                    ?>
                            </div>
                            <?
                            if(!empty($_SESSION[status]))
                            	{
							?>
								<form  method="post" action="">
		                            <textarea type="text" name="komentar" class="form-control" required></textarea>
		                            <button type="submit" class="btn btn-default submit-btn" style="margin-top:10px">Kirim Komentar</button>
		                        </form>
							<?
								}
                            ?>
                        </div>
                    	<div class="clearfix"></div>
                    </div>
                    </br>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="guru")
	{
?>
    <section class="contact" id="GURU">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact_title  wow fadeInUp animated text-center">
                        <h1>GURU</h1>
                        <img src="images/shape.png" alt="">
                    </div>
                    </br>
                    
                    <div class="single_contact_info">
                    	<h4 class="text-center">Berikut adalah daftar guru pada SMP Negeri 3 Natar.</h4>
                    	</br>
                    	</br>
			                        <table id="example2" class="table table-bordered table-hover" style="width:100%">
			                            <thead>
			                                <tr>
			                                    <th>NAMA GURU</th>
			                                    <th>NIP</th>
			                                    <th>ALAMAT</th>
			                                    <th>NO. TELEPON</th>
			                                    <th>TEMPAT, TGL LAHIR</th>
			                                    <th>PHOTO</th>
			                                </tr>
			                            </thead>
			                            <tbody>
			                            <?
										$q1 = mysql_query("SELECT * FROM guru");
			                            while($d1 = mysql_fetch_array($q1))
			                            	{
			                            ?>
			                                <tr style="cursor:pointer">
			                                    <td><?echo $d1[nama]?></td>
			                                    <td><?echo $d1[nip]?></td>
			                                    <td><?echo $d1[alamat]?></td>
			                                    <td><?echo $d1[notelp]?></td>
			                                    <td><?echo $d1[tempatlahir].',</br>'.tgl_indo1($d1[tanggallahir])?></td>
			                                    <td align="center"><a href="admmin/gambar/<?echo $d1[photo]?>" target="_blank"><img src="admin/gambar/<?echo $d1[photo]?>" width="50px"></a></td>
			                                </tr>
			                            <?
			                            	}
			                            ?>
			                            </tbody>
			                            <tfoot>
			                                <tr>
			                                    <th colspan="10">&nbsp;</th>
			                                </tr>
			                            </tfoot>
			                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?
	}
	
if($_REQUEST[content]=="kontak")
	{
?>
    <section class="contact" id="CONTACT">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="contact_title  wow fadeInUp animated">
                        <h1>KONTAK KAMI</h1>
                        <img src="images/shape.png" alt="">
                        <h3>Silahkan mengunjungi sekolah kami untuk informasi lebih lanjut.</h3>
                        </br>
                        <h4>Jl. Lintas Sumatera no. 1175A Merak Batin, Natar, Lampung Selatan - Lampung.</h4>
                    </div>
                    <div class="single_contact_info">
                    <img src="images/map.jpg" width="100%">
                        <h2>Telp</h2>
                        <p>(0721) 91146</p>
                    </div>
                    <div class="single_contact_info">
                        <h2>Email</h2>
                        <p>info@mtsguppi.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?
	}
?>


	<footer>
	    <div class="container">
	        <div class="container">
	            <div class="row">
	                <div class="col-md-12 text-center">
	                    <div class="contact_title  wow fadeInUp animated">
	                    	<img src="images/home.png" width="100px" style="margin-bottom:-20px">
	                    	<h3>MTS GUPPI NATAR</h3>
	                        <h4>Jl. Lintas Sumatera no. 1175A Merak Batin, Natar, Lampung Selatan - Lampung.</h4>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</footer>


</body>

<!-- 
============================== 
     SCRIPTS 
============================== 
-->  
  

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/script.js"></script>
    
	<script type="text/javascript" src="js/jquery.jqplot.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.barRenderer.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.pieRenderer.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.categoryAxisRenderer.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.pointLabels.js"></script>
	
        <script src="js/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="js/datatables/dataTables.bootstrap.js" type="text/javascript"></script> 
        
  	<script src="js/jquery-ui.js"></script>
    <!-- buat angka -->
    <script type="text/javascript">
		function buat_angka(e,teks)
		{
			var goodInput = teks;
			var evt = (e)?e:window.event;
			var key_code = (document.all)?evt.keyCode:evt.which;
			
			if (key_code == 0 || key_code == 8 || key_code == 11 || key_code == 9 || key_code == 13) 
				return true;
			if (goodInput.indexOf(String.fromCharCode(key_code)) == -1)	
				return false;
			else
				return true;
		}
    </script>
        
	<script>
		  $( function() {
		    $( "#datepicker" ).datepicker({ 
            dateFormat:'yy-mm-dd',
		    minDate: 0, 
		    maxDate: "+1M",
		    });
		  } );
		  
            $(function() {
                $("#example1").dataTable();
                $('#example2').dataTable({
                    "bPaginate": false,
                    "bLengthChange": false,
                    "bFilter": true,
                    "bSort": false,
                    "bInfo": false,
                    "bAutoWidth": true
                });
            });
	</script>

</html>