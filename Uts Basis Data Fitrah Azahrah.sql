PGDMP     %            
        z            retail1    13.9    13.9     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16400    retail1    DATABASE     g   CREATE DATABASE retail1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail1;
                postgres    false            ?            1259    16406    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(100) NOT NULL,
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16421 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16416    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(100) NOT NULL,
    jk character(1),
    no_telp character(15),
    alamat character varying(100)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16401    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(100) NOT NULL,
    no_telp character(13),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16411 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            ?          0    16406    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    201   ?       ?          0    16421 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    204   ?       ?          0    16416    pembeli 
   TABLE DATA           P   COPY public.pembeli (id_pembeli, nama_pembeli, jk, no_telp, alamat) FROM stdin;
    public          postgres    false    203   C       ?          0    16401    supplier 
   TABLE DATA           O   COPY public.supplier (id_supplier, nama_supplier, no_telp, alamat) FROM stdin;
    public          postgres    false    200   g       ?          0    16411 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    202   ?       3           2606    16410    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    201            9           2606    16425    pembayaran pemayaran_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pemayaran_pkey PRIMARY KEY (id_pembayaran);
 C   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pemayaran_pkey;
       public            postgres    false    204            7           2606    16420    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    203            1           2606    16405    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    200            5           2606    16415    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    202            ;           2606    16455    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    201    2867    202            <           2606    16460    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    202    203    2871            :           2606    16430    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    2865    201    200            =           2606    16465 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    204    2869    202            ?   ?   x?U?Mn? ???9A?!d2??v6?ƪ???Djo_CI;E!<???F(9??u???
???OQ?'??^)Ǖ?D??ke[a#ly?MWUr???N??ض?????!Z??7p?M?.P?r^????wa??9?(????0??????j?;E?|6?Z
J????(*?8??z?B?B;??U(i??0?????f%??%G?u?>!J(??o?B?n/J?or?[?      ?   ?   x?E??? D?3???@?{I?ud??Z?0o??OG\?+?K~m8,??E?7?#A?????!	ɠ????JR?d??IY?l?ʢl???#?rK?n?-9D?.?S ?%l 5?y?P?@?6?0h	@??<H?~??>B(      ?     x?]?An?0??p
????	t???6R??G@pc??U?????;/???g?T???w?[?"٨R??:?M#??????^T?;?O??`ɨ?J??$??1?mI~^??`3Z?Dc?;?D5???????????"??%?	????T?N<RpF?????p????%v|?݌?[??&U?
??8#?ԩ??`C???J(",???????b?R;?$??>?܏K)rp??y?4[ϽeT&?]ƌ?wV??>??l?ݧ6	ë???13??|?E??t??      ?   C  x?U??N?0е????c;?e?@U?T!??I???!Կg?uw????x@ ۿn??Ł?o ???4?p?+????8D ?
O?v?rb"??$?J?;?X5??*^ဖ?,?8M??4??q??f????$???[GHĬ?K}%$ N@? "a?)g*?~????3^?V/¾???++?????Ʈ&????f?p??K????L???fW_??D?????uJ??% ??	m?0$Y@?}?k?EW?C*???m?d??Zoy?J?̈????,uU??\8?=??SM5[??/?8??????p?@kq{&?t???b<?
???&??;??l      ?   ?   x?E??
?0??u?.?d??˻?\	??????t(̗͙??"R??ܒ?<??k{??kM???
?K???B[PY???V?Xe?@??XmC?Z??????A;?nm?I;?a??r?H??~:??@??????
$?????8???Jފ?D"{+y+????tnu?????@_?     