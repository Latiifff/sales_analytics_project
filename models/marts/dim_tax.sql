SELECT DISTINCT
    "Pajak" AS pajak,
    "Kategori Pjk" AS kategori_pajak
FROM {{ source('public', 'sales') }}