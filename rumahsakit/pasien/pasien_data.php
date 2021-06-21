<?php
$table = 'tb_pasien';
// Table's primary key
$primaryKey = 'id_pasien';
$columns = array(
    array( 'db' => 'nomor_identitas', 'dt' => 0 ),
    array( 'db' => 'nama_pasien',  'dt' => 1 ),
    array( 
        'db' => 'jenis_kelamin',
        'dt' => 2,
        'formatter' => function ($data, $row) {
            return $data == "L" ? "Laki-laki" : "Perempuan";
        }
    ),
    array( 'db' => 'alamat',     'dt' => 3 ),
    array( 'db' => 'no_telp',     'dt' => 4 ),
    array( 'db' => 'id_pasien',     'dt' => 5 ),
);
 
// SQL server connection information
include_once "../_config/conn.php";
require( '../_assets/libs/DataTables/ssp.class.php' );
echo json_encode(
    SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns )
);