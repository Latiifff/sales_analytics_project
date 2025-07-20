SELECT DISTINCT
    "Kode Barang" AS kode_barang,
    "Nama Jns Brg" AS nama_jns_brg,
    "Sat" AS sat,
    "Sat Std" AS sat_std
FROM {{ source('public', 'sales') }}