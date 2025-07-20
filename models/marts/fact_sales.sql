SELECT
  "No. Urut" AS no_urut,
  "Ref" AS ref,
  "Tgl Ref" AS tgl_ref,
  "No. Ref" AS no_ref,
  "No. Dok Ref" AS no_dok_ref,

  -- Relation into dimension table
  "Kode Cust" AS kode_cust,
  "Kode Barang" AS kode_barang,
  "Kode Sales" AS kode_sales,
  "Pajak" AS pajak,
  "Kategori Pjk" AS kategori_pajak,

  -- Product Information
  "Qty" AS qty,
  "Sat" AS sat,
  "Qty Std" AS qty_std,
  "Sat Std" AS sat_std,

  -- Price
  "Harga (+)" AS harga_plus,
  "Harga Sbl (+)" AS harga_sbl_plus,
  "Harga Unit(Mu)" AS harga_unit_mu,
  "Total(MU)" AS total_mu,

  -- Discount
  "Disc. 1 (%)" AS disc_1_pct,
  "Disc. 1 (MU)" AS disc_1_mu,
  "Disc. 2 (%)" AS disc_2_pct,
  "Disc. 2 (MU)" AS disc_2_mu,
  "Disc. 3 (%)" AS disc_3_pct,
  "Disc. 3 (MU)" AS disc_3_mu,
  "Disc. 4 (MU)" AS disc_4_mu,
  "Disc. 5 (%)" AS disc_5_pct,
  "Disc. 5 (MU)" AS disc_5_mu,
  "Disc. 6 (MU)" AS disc_6_mu,
  "Subtot Disc(Mu)" AS subtot_disc_mu,
  "Subtot(Mu)" AS subtot_mu,

  -- Real Price
  "Hrg Unit Riil(Mu)" AS hrg_unit_rill_mu,
  "Total Riil(Mu)" AS total_rill_mu,
  "Subtot Disc Riil(Mu)" AS subtot_disc_rill_mu,
  "Subtot Riil(Mu)" AS subtot_rill_mu,

  -- Final Discount + Tax
  "Disc Akh(Mu)" AS disc_akh_mu,
  "Subtot Net(Mu)" AS subtot_net_mu,
  "Pjk(Mu)" AS pjk_mu,
  "Subtot Net Pjk(Mu)"  AS subtot_net_pjk_mu
FROM {{ source('public', 'sales') }}
