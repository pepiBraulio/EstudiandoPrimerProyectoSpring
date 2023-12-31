PGDMP     /    '            
    {            universidad    15.3    15.3 )    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    65602    universidad    DATABASE        CREATE DATABASE universidad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE universidad;
                postgres    false            �            1259    66120    cuenta    TABLE     �   CREATE TABLE public.cuenta (
    id_cuenta bigint NOT NULL,
    numero_cuenta bigint,
    banco character varying(255),
    titular character varying(255)
);
    DROP TABLE public.cuenta;
       public         heap    postgres    false            �            1259    74166    cuenta_bancaria    TABLE     �   CREATE TABLE public.cuenta_bancaria (
    id_cuenta bigint NOT NULL,
    banco character varying(255),
    numero_cuenta bigint NOT NULL,
    titular character varying(255)
);
 #   DROP TABLE public.cuenta_bancaria;
       public         heap    postgres    false            �            1259    74173 
   estudiante    TABLE     Y  CREATE TABLE public.estudiante (
    id_estudiante bigint NOT NULL,
    email character varying(255) NOT NULL,
    fecha_nacimiento date,
    primer_apellido character varying(255),
    primer_nombre character varying(300) NOT NULL,
    segundo_apellido character varying(255),
    segundo_nombre character varying(255),
    id_cuenta bigint
);
    DROP TABLE public.estudiante;
       public         heap    postgres    false            �            1259    66393    estudiante_libros    TABLE     }   CREATE TABLE public.estudiante_libros (
    estudiante_id_estudiante bigint NOT NULL,
    libros_id_libro bigint NOT NULL
);
 %   DROP TABLE public.estudiante_libros;
       public         heap    postgres    false            �            1259    66673    estudiante_materias    TABLE     �   CREATE TABLE public.estudiante_materias (
    estudiante_id_estudiante bigint NOT NULL,
    materias_id_materia bigint NOT NULL
);
 '   DROP TABLE public.estudiante_materias;
       public         heap    postgres    false            �            1259    74180    inscripciones    TABLE     i   CREATE TABLE public.inscripciones (
    estudiante_id bigint NOT NULL,
    materia_id bigint NOT NULL
);
 !   DROP TABLE public.inscripciones;
       public         heap    postgres    false            �            1259    74183    libro    TABLE     �   CREATE TABLE public.libro (
    id_libro bigint NOT NULL,
    autor character varying(255),
    titulo character varying(255),
    estudiante_id bigint
);
    DROP TABLE public.libro;
       public         heap    postgres    false            �            1259    74190    materia    TABLE     y   CREATE TABLE public.materia (
    id_materia bigint NOT NULL,
    creditos integer,
    nombre character varying(255)
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    74201    sequence_cuenta    SEQUENCE     y   CREATE SEQUENCE public.sequence_cuenta
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sequence_cuenta;
       public          postgres    false            �            1259    74202    sequence_estudiante    SEQUENCE     }   CREATE SEQUENCE public.sequence_estudiante
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sequence_estudiante;
       public          postgres    false            �            1259    74203    sequence_libro    SEQUENCE     x   CREATE SEQUENCE public.sequence_libro
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.sequence_libro;
       public          postgres    false            �            1259    74204    sequence_materia    SEQUENCE     z   CREATE SEQUENCE public.sequence_materia
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.sequence_materia;
       public          postgres    false            (          0    66120    cuenta 
   TABLE DATA           J   COPY public.cuenta (id_cuenta, numero_cuenta, banco, titular) FROM stdin;
    public          postgres    false    214   �/       +          0    74166    cuenta_bancaria 
   TABLE DATA           S   COPY public.cuenta_bancaria (id_cuenta, banco, numero_cuenta, titular) FROM stdin;
    public          postgres    false    217   �/       ,          0    74173 
   estudiante 
   TABLE DATA           �   COPY public.estudiante (id_estudiante, email, fecha_nacimiento, primer_apellido, primer_nombre, segundo_apellido, segundo_nombre, id_cuenta) FROM stdin;
    public          postgres    false    218   F0       )          0    66393    estudiante_libros 
   TABLE DATA           V   COPY public.estudiante_libros (estudiante_id_estudiante, libros_id_libro) FROM stdin;
    public          postgres    false    215   �1       *          0    66673    estudiante_materias 
   TABLE DATA           \   COPY public.estudiante_materias (estudiante_id_estudiante, materias_id_materia) FROM stdin;
    public          postgres    false    216   �1       -          0    74180    inscripciones 
   TABLE DATA           B   COPY public.inscripciones (estudiante_id, materia_id) FROM stdin;
    public          postgres    false    219   �1       .          0    74183    libro 
   TABLE DATA           G   COPY public.libro (id_libro, autor, titulo, estudiante_id) FROM stdin;
    public          postgres    false    220   2       /          0    74190    materia 
   TABLE DATA           ?   COPY public.materia (id_materia, creditos, nombre) FROM stdin;
    public          postgres    false    221   �2       :           0    0    sequence_cuenta    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sequence_cuenta', 1, false);
          public          postgres    false    222            ;           0    0    sequence_estudiante    SEQUENCE SET     B   SELECT pg_catalog.setval('public.sequence_estudiante', 10, true);
          public          postgres    false    223            <           0    0    sequence_libro    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sequence_libro', 51, true);
          public          postgres    false    224            =           0    0    sequence_materia    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sequence_materia', 1, false);
          public          postgres    false    225            �           2606    74172 $   cuenta_bancaria cuenta_bancaria_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cuenta_bancaria
    ADD CONSTRAINT cuenta_bancaria_pkey PRIMARY KEY (id_cuenta);
 N   ALTER TABLE ONLY public.cuenta_bancaria DROP CONSTRAINT cuenta_bancaria_pkey;
       public            postgres    false    217            �           2606    66126    cuenta cuenta_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cuenta
    ADD CONSTRAINT cuenta_pkey PRIMARY KEY (id_cuenta);
 <   ALTER TABLE ONLY public.cuenta DROP CONSTRAINT cuenta_pkey;
       public            postgres    false    214            �           2606    66397 7   estudiante_libros estudiante_libros_libros_id_libro_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.estudiante_libros
    ADD CONSTRAINT estudiante_libros_libros_id_libro_key UNIQUE (libros_id_libro);
 a   ALTER TABLE ONLY public.estudiante_libros DROP CONSTRAINT estudiante_libros_libros_id_libro_key;
       public            postgres    false    215            �           2606    74179    estudiante estudiante_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (id_estudiante);
 D   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT estudiante_pkey;
       public            postgres    false    218            �           2606    74189    libro libro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT libro_pkey PRIMARY KEY (id_libro);
 :   ALTER TABLE ONLY public.libro DROP CONSTRAINT libro_pkey;
       public            postgres    false    220            �           2606    74194    materia materia_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id_materia);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    221            �           2606    74196 ,   cuenta_bancaria uk_6axt3u9c3dqbkxt0j5u1kgs1y 
   CONSTRAINT     p   ALTER TABLE ONLY public.cuenta_bancaria
    ADD CONSTRAINT uk_6axt3u9c3dqbkxt0j5u1kgs1y UNIQUE (numero_cuenta);
 V   ALTER TABLE ONLY public.cuenta_bancaria DROP CONSTRAINT uk_6axt3u9c3dqbkxt0j5u1kgs1y;
       public            postgres    false    217            �           2606    74200 '   estudiante uk_raol7xo11vkneyc6lt2tnr853 
   CONSTRAINT     g   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT uk_raol7xo11vkneyc6lt2tnr853 UNIQUE (id_cuenta);
 Q   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT uk_raol7xo11vkneyc6lt2tnr853;
       public            postgres    false    218            �           2606    74198 '   estudiante uk_tbc5806vbo6w5mcbmkqom1m0n 
   CONSTRAINT     c   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT uk_tbc5806vbo6w5mcbmkqom1m0n UNIQUE (email);
 Q   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT uk_tbc5806vbo6w5mcbmkqom1m0n;
       public            postgres    false    218            �           2606    74205 &   estudiante fkadetxs598rmh1y4g34qhwnw66    FK CONSTRAINT     �   ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT fkadetxs598rmh1y4g34qhwnw66 FOREIGN KEY (id_cuenta) REFERENCES public.cuenta_bancaria(id_cuenta);
 P   ALTER TABLE ONLY public.estudiante DROP CONSTRAINT fkadetxs598rmh1y4g34qhwnw66;
       public          postgres    false    218    217    3209            �           2606    74210 )   inscripciones fkagu4276rdflno7y2qj9cktgrd    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT fkagu4276rdflno7y2qj9cktgrd FOREIGN KEY (materia_id) REFERENCES public.materia(id_materia);
 S   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT fkagu4276rdflno7y2qj9cktgrd;
       public          postgres    false    219    3221    221            �           2606    74215 )   inscripciones fke1bjf4osl2wicgmrwg84v8524    FK CONSTRAINT     �   ALTER TABLE ONLY public.inscripciones
    ADD CONSTRAINT fke1bjf4osl2wicgmrwg84v8524 FOREIGN KEY (estudiante_id) REFERENCES public.estudiante(id_estudiante);
 S   ALTER TABLE ONLY public.inscripciones DROP CONSTRAINT fke1bjf4osl2wicgmrwg84v8524;
       public          postgres    false    218    3213    219            �           2606    74220 !   libro fkgiodetoccxr0na6ddehdkps9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.libro
    ADD CONSTRAINT fkgiodetoccxr0na6ddehdkps9d FOREIGN KEY (estudiante_id) REFERENCES public.estudiante(id_estudiante);
 K   ALTER TABLE ONLY public.libro DROP CONSTRAINT fkgiodetoccxr0na6ddehdkps9d;
       public          postgres    false    220    218    3213            (      x������ � �      +   �   x�e�=
�@��z��@��XfK��l�d
Av�n�@فh�>�1JA�4�Í�Ji�J�|��'ya��D��K�����=H�Ч�pE+��)�gt�{i��.Jsm<����p��$���~Q���㈈J�E�      ,   e  x�]��n�0 �3�.2�$���:�0�CQ�؋\s�Yd9����c������p�3���P�s+c�6(�����,���)Qw�D���c�U�[��Hy�Wڬ�{���v�jn����N��F�M���G�P����F��@>��}���b�m�%�/��*ޠ*��L��vC���.\l���;�9?�_��B�Rm���Dl5"���ݒ��]�Ķ�*�܉m�:����J��K?��<$w�IW�v�e�ґ?'��i,�����|�c��V{8����fz?FN.�%��z�����b;g;ٓ\�z°C���C`;�9��|�z�F�^^�I���7?pS�cnh,�PJ}�'��      )      x������ � �      *      x������ � �      -      x������ � �      .   z   x�e�;�0��)���	(�:��ylֲ�Qs~d

��43z{�,�s��������_���oS{t�{x��K�y��HȬ�UAO���]�l��}�^ݜI�`��R�j�l܅�}V5U      /      x������ � �     