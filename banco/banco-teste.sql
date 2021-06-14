PGDMP                         y         	   hopibanco    11.11    11.11                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    33143 	   hopibanco    DATABASE     �   CREATE DATABASE hopibanco WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE hopibanco;
             postgres    false            �            1259    33146    imagem    TABLE     �   CREATE TABLE public.imagem (
    id integer NOT NULL,
    ativo boolean,
    created timestamp without time zone,
    motivoinativacao character varying(255),
    updated timestamp without time zone,
    nome character varying(255) NOT NULL
);
    DROP TABLE public.imagem;
       public         hopi    false            �            1259    33144    imagem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.imagem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.imagem_id_seq;
       public       hopi    false    197                       0    0    imagem_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.imagem_id_seq OWNED BY public.imagem.id;
            public       hopi    false    196            �            1259    33227    usuario    TABLE     �  CREATE TABLE public.usuario (
    id integer NOT NULL,
    ativo boolean,
    created timestamp without time zone,
    motivoinativacao character varying(255),
    updated timestamp without time zone,
    cidade character varying(255) NOT NULL,
    dtfinal date NOT NULL,
    dtinicial date NOT NULL,
    email character varying(255) NOT NULL,
    nome character varying(100) NOT NULL,
    rg character varying(12) NOT NULL,
    telefone character varying(255) NOT NULL,
    imagem_id integer
);
    DROP TABLE public.usuario;
       public         hopi    false            �            1259    33225    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public       hopi    false    199                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
            public       hopi    false    198            �
           2604    33149 	   imagem id    DEFAULT     f   ALTER TABLE ONLY public.imagem ALTER COLUMN id SET DEFAULT nextval('public.imagem_id_seq'::regclass);
 8   ALTER TABLE public.imagem ALTER COLUMN id DROP DEFAULT;
       public       hopi    false    196    197    197            �
           2604    33230 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public       hopi    false    198    199    199            
          0    33146    imagem 
   TABLE DATA               U   COPY public.imagem (id, ativo, created, motivoinativacao, updated, nome) FROM stdin;
    public       hopi    false    197   �                 0    33227    usuario 
   TABLE DATA               �   COPY public.usuario (id, ativo, created, motivoinativacao, updated, cidade, dtfinal, dtinicial, email, nome, rg, telefone, imagem_id) FROM stdin;
    public       hopi    false    199   �                  0    0    imagem_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.imagem_id_seq', 4, true);
            public       hopi    false    196                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 5, true);
            public       hopi    false    198            �
           2606    33154    imagem imagem_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.imagem
    ADD CONSTRAINT imagem_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.imagem DROP CONSTRAINT imagem_pkey;
       public         hopi    false    197            �
           2606    33237 $   usuario uk_4tdehxj7dh8ghfc68kbwbsbll 
   CONSTRAINT     `   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_4tdehxj7dh8ghfc68kbwbsbll UNIQUE (email);
 N   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_4tdehxj7dh8ghfc68kbwbsbll;
       public         hopi    false    199            �
           2606    33239 $   usuario uk_iuhgts3o0mr9ec0u3mu5qtlet 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_iuhgts3o0mr9ec0u3mu5qtlet UNIQUE (rg);
 N   ALTER TABLE ONLY public.usuario DROP CONSTRAINT uk_iuhgts3o0mr9ec0u3mu5qtlet;
       public         hopi    false    199            �
           2606    33235    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         hopi    false    199            �
           2606    33240 #   usuario fkdt08uu5uyj71ijy9qbv05gicq    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fkdt08uu5uyj71ijy9qbv05gicq FOREIGN KEY (imagem_id) REFERENCES public.imagem(id);
 M   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fkdt08uu5uyj71ijy9qbv05gicq;
       public       hopi    false    197    2696    199            
   E   x�3�,�4202�50�54Q00�20�21ҳ00���)ehfdlfbldb`ndQ�Z����W������� ���         v   x�u�1
�0@�Y>�/`!Yr�d*��!s��c�k0��C�.]������űZ➨W�QL��i�)�!�\�E��g[�ۚһ�[*s����n��AY�� w]��#��	�1B�%�     