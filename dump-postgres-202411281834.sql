PGDMP      "            
    |            postgres    17.2    17.0 `    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            6           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                     postgres    false            7           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4918                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            8           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16443    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nome character varying(100) NOT NULL,
    endereco character varying(255) NOT NULL,
    telefone character varying(20),
    email character varying(100)
);
    DROP TABLE public.cliente;
       public         heap r       postgres    false    4            �            1259    16442    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public               postgres    false    228    4            9           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public               postgres    false    227            �            1259    16483    cliente_venda    TABLE     f   CREATE TABLE public.cliente_venda (
    id_cliente integer NOT NULL,
    id_venda integer NOT NULL
);
 !   DROP TABLE public.cliente_venda;
       public         heap r       postgres    false    4            �            1259    16409 
   emprestimo    TABLE     �   CREATE TABLE public.emprestimo (
    id_emprestimo integer NOT NULL,
    data_emprestimo date NOT NULL,
    data_devolucao date NOT NULL,
    id_usuario integer NOT NULL,
    id_livro integer NOT NULL
);
    DROP TABLE public.emprestimo;
       public         heap r       postgres    false    4            �            1259    16408    emprestimo_id_emprestimo_seq    SEQUENCE     �   CREATE SEQUENCE public.emprestimo_id_emprestimo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.emprestimo_id_emprestimo_seq;
       public               postgres    false    224    4            :           0    0    emprestimo_id_emprestimo_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.emprestimo_id_emprestimo_seq OWNED BY public.emprestimo.id_emprestimo;
          public               postgres    false    223            �            1259    16477 
   fornecedor    TABLE     �   CREATE TABLE public.fornecedor (
    id_fornecedor integer NOT NULL,
    nome_fornecedor character varying(100) NOT NULL,
    contato character varying(20),
    endereco character varying(255)
);
    DROP TABLE public.fornecedor;
       public         heap r       postgres    false    4            �            1259    16476    fornecedor_id_fornecedor_seq    SEQUENCE     �   CREATE SEQUENCE public.fornecedor_id_fornecedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.fornecedor_id_fornecedor_seq;
       public               postgres    false    4    234            ;           0    0    fornecedor_id_fornecedor_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.fornecedor_id_fornecedor_seq OWNED BY public.fornecedor.id_fornecedor;
          public               postgres    false    233            �            1259    16513    fornecedor_produto    TABLE     p   CREATE TABLE public.fornecedor_produto (
    id_fornecedor integer NOT NULL,
    id_produto integer NOT NULL
);
 &   DROP TABLE public.fornecedor_produto;
       public         heap r       postgres    false    4            �            1259    16395    funcionario    TABLE     �   CREATE TABLE public.funcionario (
    id_funcionario integer NOT NULL,
    nome character varying(100) NOT NULL,
    cargo character varying(50),
    telefone character varying(20),
    email character varying(100)
);
    DROP TABLE public.funcionario;
       public         heap r       postgres    false    4            �            1259    16394    funcionario_id_funcionario_seq    SEQUENCE     �   CREATE SEQUENCE public.funcionario_id_funcionario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.funcionario_id_funcionario_seq;
       public               postgres    false    220    4            <           0    0    funcionario_id_funcionario_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.funcionario_id_funcionario_seq OWNED BY public.funcionario.id_funcionario;
          public               postgres    false    219            �            1259    16528    funcionario_venda    TABLE     n   CREATE TABLE public.funcionario_venda (
    id_funcionario integer NOT NULL,
    id_venda integer NOT NULL
);
 %   DROP TABLE public.funcionario_venda;
       public         heap r       postgres    false    4            �            1259    16402    livro    TABLE     �   CREATE TABLE public.livro (
    id_livro integer NOT NULL,
    titulo character varying(100) NOT NULL,
    autor character varying(100) NOT NULL,
    genero character varying(50),
    ano_publicacao integer,
    disponibilidade boolean NOT NULL
);
    DROP TABLE public.livro;
       public         heap r       postgres    false    4            �            1259    16401    livro_id_livro_seq    SEQUENCE     �   CREATE SEQUENCE public.livro_id_livro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.livro_id_livro_seq;
       public               postgres    false    222    4            =           0    0    livro_id_livro_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.livro_id_livro_seq OWNED BY public.livro.id_livro;
          public               postgres    false    221            �            1259    16450    produto    TABLE       CREATE TABLE public.produto (
    id_produto integer NOT NULL,
    nome character varying(100) NOT NULL,
    descricao text NOT NULL,
    preco numeric(10,2) NOT NULL,
    tamanho character(1),
    cor character varying(50),
    estoque integer NOT NULL
);
    DROP TABLE public.produto;
       public         heap r       postgres    false    4            �            1259    16449    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE public.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.produto_id_produto_seq;
       public               postgres    false    230    4            >           0    0    produto_id_produto_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.produto_id_produto_seq OWNED BY public.produto.id_produto;
          public               postgres    false    229            �            1259    16498    produto_venda    TABLE     �   CREATE TABLE public.produto_venda (
    id_produto integer NOT NULL,
    id_venda integer NOT NULL,
    quantidade integer NOT NULL
);
 !   DROP TABLE public.produto_venda;
       public         heap r       postgres    false    4            �            1259    16426    reserva    TABLE     �   CREATE TABLE public.reserva (
    id_reserva integer NOT NULL,
    data_reserva date NOT NULL,
    id_usuario integer NOT NULL,
    id_livro integer NOT NULL
);
    DROP TABLE public.reserva;
       public         heap r       postgres    false    4            �            1259    16425    reserva_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reserva_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.reserva_id_reserva_seq;
       public               postgres    false    4    226            ?           0    0    reserva_id_reserva_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.reserva_id_reserva_seq OWNED BY public.reserva.id_reserva;
          public               postgres    false    225            �            1259    16388    usuario    TABLE     �   CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nome character varying(100) NOT NULL,
    data_nascimento date NOT NULL,
    telefone character varying(20),
    email character varying(100)
);
    DROP TABLE public.usuario;
       public         heap r       postgres    false    4            �            1259    16387    usuario_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public               postgres    false    218    4            @           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;
          public               postgres    false    217            �            1259    16460    venda    TABLE     �   CREATE TABLE public.venda (
    id_venda integer NOT NULL,
    data_venda date NOT NULL,
    valor_total numeric(10,2) NOT NULL,
    forma_pagamento character varying(50),
    id_cliente integer,
    id_funcionario integer
);
    DROP TABLE public.venda;
       public         heap r       postgres    false    4            �            1259    16459    venda_id_venda_seq    SEQUENCE     �   CREATE SEQUENCE public.venda_id_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.venda_id_venda_seq;
       public               postgres    false    4    232            A           0    0    venda_id_venda_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.venda_id_venda_seq OWNED BY public.venda.id_venda;
          public               postgres    false    231            ^           2604    16446    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public               postgres    false    228    227    228            \           2604    16412    emprestimo id_emprestimo    DEFAULT     �   ALTER TABLE ONLY public.emprestimo ALTER COLUMN id_emprestimo SET DEFAULT nextval('public.emprestimo_id_emprestimo_seq'::regclass);
 G   ALTER TABLE public.emprestimo ALTER COLUMN id_emprestimo DROP DEFAULT;
       public               postgres    false    224    223    224            a           2604    16480    fornecedor id_fornecedor    DEFAULT     �   ALTER TABLE ONLY public.fornecedor ALTER COLUMN id_fornecedor SET DEFAULT nextval('public.fornecedor_id_fornecedor_seq'::regclass);
 G   ALTER TABLE public.fornecedor ALTER COLUMN id_fornecedor DROP DEFAULT;
       public               postgres    false    233    234    234            Z           2604    16398    funcionario id_funcionario    DEFAULT     �   ALTER TABLE ONLY public.funcionario ALTER COLUMN id_funcionario SET DEFAULT nextval('public.funcionario_id_funcionario_seq'::regclass);
 I   ALTER TABLE public.funcionario ALTER COLUMN id_funcionario DROP DEFAULT;
       public               postgres    false    219    220    220            [           2604    16405    livro id_livro    DEFAULT     p   ALTER TABLE ONLY public.livro ALTER COLUMN id_livro SET DEFAULT nextval('public.livro_id_livro_seq'::regclass);
 =   ALTER TABLE public.livro ALTER COLUMN id_livro DROP DEFAULT;
       public               postgres    false    221    222    222            _           2604    16453    produto id_produto    DEFAULT     x   ALTER TABLE ONLY public.produto ALTER COLUMN id_produto SET DEFAULT nextval('public.produto_id_produto_seq'::regclass);
 A   ALTER TABLE public.produto ALTER COLUMN id_produto DROP DEFAULT;
       public               postgres    false    229    230    230            ]           2604    16429    reserva id_reserva    DEFAULT     x   ALTER TABLE ONLY public.reserva ALTER COLUMN id_reserva SET DEFAULT nextval('public.reserva_id_reserva_seq'::regclass);
 A   ALTER TABLE public.reserva ALTER COLUMN id_reserva DROP DEFAULT;
       public               postgres    false    225    226    226            Y           2604    16391    usuario id_usuario    DEFAULT     x   ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public               postgres    false    218    217    218            `           2604    16463    venda id_venda    DEFAULT     p   ALTER TABLE ONLY public.venda ALTER COLUMN id_venda SET DEFAULT nextval('public.venda_id_venda_seq'::regclass);
 =   ALTER TABLE public.venda ALTER COLUMN id_venda DROP DEFAULT;
       public               postgres    false    231    232    232            &          0    16443    cliente 
   TABLE DATA           N   COPY public.cliente (id_cliente, nome, endereco, telefone, email) FROM stdin;
    public               postgres    false    228   sv       -          0    16483    cliente_venda 
   TABLE DATA           =   COPY public.cliente_venda (id_cliente, id_venda) FROM stdin;
    public               postgres    false    235   w       "          0    16409 
   emprestimo 
   TABLE DATA           j   COPY public.emprestimo (id_emprestimo, data_emprestimo, data_devolucao, id_usuario, id_livro) FROM stdin;
    public               postgres    false    224   ,w       ,          0    16477 
   fornecedor 
   TABLE DATA           W   COPY public.fornecedor (id_fornecedor, nome_fornecedor, contato, endereco) FROM stdin;
    public               postgres    false    234   gw       /          0    16513    fornecedor_produto 
   TABLE DATA           G   COPY public.fornecedor_produto (id_fornecedor, id_produto) FROM stdin;
    public               postgres    false    237   �w                 0    16395    funcionario 
   TABLE DATA           S   COPY public.funcionario (id_funcionario, nome, cargo, telefone, email) FROM stdin;
    public               postgres    false    220   x       0          0    16528    funcionario_venda 
   TABLE DATA           E   COPY public.funcionario_venda (id_funcionario, id_venda) FROM stdin;
    public               postgres    false    238   �x                  0    16402    livro 
   TABLE DATA           a   COPY public.livro (id_livro, titulo, autor, genero, ano_publicacao, disponibilidade) FROM stdin;
    public               postgres    false    222   �x       (          0    16450    produto 
   TABLE DATA           \   COPY public.produto (id_produto, nome, descricao, preco, tamanho, cor, estoque) FROM stdin;
    public               postgres    false    230   -y       .          0    16498    produto_venda 
   TABLE DATA           I   COPY public.produto_venda (id_produto, id_venda, quantidade) FROM stdin;
    public               postgres    false    236   �y       $          0    16426    reserva 
   TABLE DATA           Q   COPY public.reserva (id_reserva, data_reserva, id_usuario, id_livro) FROM stdin;
    public               postgres    false    226   z                 0    16388    usuario 
   TABLE DATA           U   COPY public.usuario (id_usuario, nome, data_nascimento, telefone, email) FROM stdin;
    public               postgres    false    218   Rz       *          0    16460    venda 
   TABLE DATA           o   COPY public.venda (id_venda, data_venda, valor_total, forma_pagamento, id_cliente, id_funcionario) FROM stdin;
    public               postgres    false    232   �z       B           0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 2, true);
          public               postgres    false    227            C           0    0    emprestimo_id_emprestimo_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.emprestimo_id_emprestimo_seq', 2, true);
          public               postgres    false    223            D           0    0    fornecedor_id_fornecedor_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.fornecedor_id_fornecedor_seq', 2, true);
          public               postgres    false    233            E           0    0    funcionario_id_funcionario_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.funcionario_id_funcionario_seq', 2, true);
          public               postgres    false    219            F           0    0    livro_id_livro_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.livro_id_livro_seq', 2, true);
          public               postgres    false    221            G           0    0    produto_id_produto_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.produto_id_produto_seq', 4, true);
          public               postgres    false    229            H           0    0    reserva_id_reserva_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.reserva_id_reserva_seq', 2, true);
          public               postgres    false    225            I           0    0    usuario_id_usuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 2, true);
          public               postgres    false    217            J           0    0    venda_id_venda_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.venda_id_venda_seq', 2, true);
          public               postgres    false    231            m           2606    16448    cliente cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public                 postgres    false    228            u           2606    16487     cliente_venda cliente_venda_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cliente_venda
    ADD CONSTRAINT cliente_venda_pkey PRIMARY KEY (id_cliente, id_venda);
 J   ALTER TABLE ONLY public.cliente_venda DROP CONSTRAINT cliente_venda_pkey;
       public                 postgres    false    235    235            i           2606    16414    emprestimo emprestimo_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_pkey PRIMARY KEY (id_emprestimo);
 D   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_pkey;
       public                 postgres    false    224            s           2606    16482    fornecedor fornecedor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id_fornecedor);
 D   ALTER TABLE ONLY public.fornecedor DROP CONSTRAINT fornecedor_pkey;
       public                 postgres    false    234            y           2606    16517 *   fornecedor_produto fornecedor_produto_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.fornecedor_produto
    ADD CONSTRAINT fornecedor_produto_pkey PRIMARY KEY (id_fornecedor, id_produto);
 T   ALTER TABLE ONLY public.fornecedor_produto DROP CONSTRAINT fornecedor_produto_pkey;
       public                 postgres    false    237    237            e           2606    16400    funcionario funcionario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_funcionario);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public                 postgres    false    220            {           2606    16532 (   funcionario_venda funcionario_venda_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.funcionario_venda
    ADD CONSTRAINT funcionario_venda_pkey PRIMARY KEY (id_funcionario, id_venda);
 R   ALTER TABLE ONLY public.funcionario_venda DROP CONSTRAINT funcionario_venda_pkey;
       public                 postgres    false    238    238            g           2606    16407    livro livro_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id_livro);
 :   ALTER TABLE ONLY public.livro DROP CONSTRAINT livro_pkey;
       public                 postgres    false    222            o           2606    16457    produto produto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 >   ALTER TABLE ONLY public.produto DROP CONSTRAINT produto_pkey;
       public                 postgres    false    230            w           2606    16502     produto_venda produto_venda_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.produto_venda
    ADD CONSTRAINT produto_venda_pkey PRIMARY KEY (id_produto, id_venda);
 J   ALTER TABLE ONLY public.produto_venda DROP CONSTRAINT produto_venda_pkey;
       public                 postgres    false    236    236            k           2606    16431    reserva reserva_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id_reserva);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public                 postgres    false    226            c           2606    16393    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public                 postgres    false    218            q           2606    16465    venda venda_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_venda);
 :   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_pkey;
       public                 postgres    false    232            �           2606    16488 +   cliente_venda cliente_venda_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente_venda
    ADD CONSTRAINT cliente_venda_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 U   ALTER TABLE ONLY public.cliente_venda DROP CONSTRAINT cliente_venda_id_cliente_fkey;
       public               postgres    false    228    235    4717            �           2606    16493 )   cliente_venda cliente_venda_id_venda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cliente_venda
    ADD CONSTRAINT cliente_venda_id_venda_fkey FOREIGN KEY (id_venda) REFERENCES public.venda(id_venda);
 S   ALTER TABLE ONLY public.cliente_venda DROP CONSTRAINT cliente_venda_id_venda_fkey;
       public               postgres    false    235    4721    232            |           2606    16420 #   emprestimo emprestimo_id_livro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);
 M   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_id_livro_fkey;
       public               postgres    false    224    4711    222            }           2606    16415 %   emprestimo emprestimo_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emprestimo
    ADD CONSTRAINT emprestimo_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 O   ALTER TABLE ONLY public.emprestimo DROP CONSTRAINT emprestimo_id_usuario_fkey;
       public               postgres    false    218    4707    224            �           2606    16518 8   fornecedor_produto fornecedor_produto_id_fornecedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fornecedor_produto
    ADD CONSTRAINT fornecedor_produto_id_fornecedor_fkey FOREIGN KEY (id_fornecedor) REFERENCES public.fornecedor(id_fornecedor);
 b   ALTER TABLE ONLY public.fornecedor_produto DROP CONSTRAINT fornecedor_produto_id_fornecedor_fkey;
       public               postgres    false    237    234    4723            �           2606    16523 5   fornecedor_produto fornecedor_produto_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fornecedor_produto
    ADD CONSTRAINT fornecedor_produto_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);
 _   ALTER TABLE ONLY public.fornecedor_produto DROP CONSTRAINT fornecedor_produto_id_produto_fkey;
       public               postgres    false    4719    237    230            �           2606    16533 7   funcionario_venda funcionario_venda_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario_venda
    ADD CONSTRAINT funcionario_venda_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 a   ALTER TABLE ONLY public.funcionario_venda DROP CONSTRAINT funcionario_venda_id_funcionario_fkey;
       public               postgres    false    238    220    4709            �           2606    16538 1   funcionario_venda funcionario_venda_id_venda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario_venda
    ADD CONSTRAINT funcionario_venda_id_venda_fkey FOREIGN KEY (id_venda) REFERENCES public.venda(id_venda);
 [   ALTER TABLE ONLY public.funcionario_venda DROP CONSTRAINT funcionario_venda_id_venda_fkey;
       public               postgres    false    232    238    4721            �           2606    16503 +   produto_venda produto_venda_id_produto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto_venda
    ADD CONSTRAINT produto_venda_id_produto_fkey FOREIGN KEY (id_produto) REFERENCES public.produto(id_produto);
 U   ALTER TABLE ONLY public.produto_venda DROP CONSTRAINT produto_venda_id_produto_fkey;
       public               postgres    false    230    4719    236            �           2606    16508 )   produto_venda produto_venda_id_venda_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produto_venda
    ADD CONSTRAINT produto_venda_id_venda_fkey FOREIGN KEY (id_venda) REFERENCES public.venda(id_venda);
 S   ALTER TABLE ONLY public.produto_venda DROP CONSTRAINT produto_venda_id_venda_fkey;
       public               postgres    false    4721    232    236            ~           2606    16437    reserva reserva_id_livro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);
 G   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_id_livro_fkey;
       public               postgres    false    4711    226    222                       2606    16432    reserva reserva_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 I   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_id_usuario_fkey;
       public               postgres    false    218    4707    226            �           2606    16466    venda venda_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);
 E   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_id_cliente_fkey;
       public               postgres    false    228    4717    232            �           2606    16471    venda venda_id_funcionario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.venda
    ADD CONSTRAINT venda_id_funcionario_fkey FOREIGN KEY (id_funcionario) REFERENCES public.funcionario(id_funcionario);
 I   ALTER TABLE ONLY public.venda DROP CONSTRAINT venda_id_funcionario_fkey;
       public               postgres    false    220    232    4709            &   �   x�M�=�0����)n���7]TDg��5ri!%~z/��~���c�@��[
,�pɄ-���!�X��S����ZkV<��v�˦��އh<�))w`�`��>���S~�8�/���R�Yj��>��?�j�1��.�      -      x�3�4�2�4����� ��      "   +   x�3�4202�50�54�3�9���!g��*�4����� ;�	�      ,   v   x�3���OITp�IMO�+I��04�T�442�5153�*MTHI,V�/-H,�Q0���2�t-.���WpK��������0i��0�5351�t,K��L�hI�K9�*/9���Ȑ+F��� ��!`      /      x�3�4�2�4����� ��         n   x�3��N,�IT�M,�L�t�L���/IM>��հ0մ ]K ��)��)tH�M���K���2�t�KT�)��w,.�,.I�+Ij5�4 ]s �L�K��)A����� #/'J      0      x�3�4�2�4����� ��          h   x�3�t��UpN,�--*���ML�HL�WHIUp,.�,���M�KN�4����,�2��Wp�),���,.I�H,��Wp�O����t�L>����|NCK�4�=... �4h      (   �   x�E�K
1DםS�	$�Qt��� �+7ͤ�h>�dD���Ŝ�����V�ᔍ�7���#�ό��L�D:��ˎ�����,����V�{lK�����k�Qk/a9�Kу5¥��\��wd.���^�U$P�V���VYHQ����A�`��[M�t4�_A�����ێ��]J1      .      x�3�4�4�2�4�4����� 
      $   %   x�3�4202�50�54�4�4�2B ���\1z\\\ |�         t   x�3���?�8_!%Q!83�,�����H��T�ДS��P�tAgV~b�^1H�Cznbf�^r~.��obQf�BJ�Bp~iU"���P�����������\�:�b�"$�1z\\\ ��%       *   M   x�3�4202�5��54�460�30�tN,*9�8_!%U����ʔ̒|NCNC.#�Z3 ��%3/#5�(�(����� P��     