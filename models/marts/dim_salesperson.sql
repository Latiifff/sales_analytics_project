SELECT DISTINCT
    "Kode Sales" AS kode_sales,
    "Nama Sales" AS nama_sales
FROM {{ source('public', 'sales') }}