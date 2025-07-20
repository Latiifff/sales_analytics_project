SELECT DISTINCT
    "Kode Cust" AS kode_cust,
    "Nama Cust" AS nama_cust,
    "Alamat Cust" AS alamat_cust,
    "Kode Kota" AS kode_kota,
    "Nama Kota" AS nama_kota
FROM {{ source('public', 'sales') }}