SELECT DISTINCT
    "Tgl Ref"::DATE AS tgl_ref,
    EXTRACT(DAY FROM "Tgl Ref"::DATE) AS day,
    EXTRACT(MONTH FROM "Tgl Ref"::DATE) AS month,
    EXTRACT(YEAR FROM "Tgl Ref"::DATE) AS year,
    EXTRACT(WEEK FROM "Tgl Ref"::DATE) AS week,
    EXTRACT(QUARTER FROM "Tgl Ref"::DATE) AS quarter
FROM {{ source('public', 'sales') }}