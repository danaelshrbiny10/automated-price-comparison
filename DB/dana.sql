PGDMP         :    	            y            dana2    13.1    13.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18292    dana2    DATABASE     i   CREATE DATABASE dana2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE dana2;
                postgres    false            �            1259    18646 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    18644    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    234            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    233            �            1259    18656    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    18654    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    236            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    235            �            1259    18638    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    18636    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    232            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    231            �            1259    18664 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    18674    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    18672    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    240            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    239            �            1259    18662    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    238            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    237            �            1259    18682    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    18680 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    242            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    241            �            1259    18326    category    TABLE     b   CREATE TABLE public.category (
    name character varying(300),
    url character varying(500)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    18332    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100),
    password character varying(300)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    18338    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    201            �           0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    202            �            1259    18742    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    18740    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    244            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    243            �            1259    18625    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    18623    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    230            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    229            �            1259    18368    img    TABLE     z   CREATE TABLE public.img (
    id integer NOT NULL,
    product_id integer NOT NULL,
    img_path character varying(50)
);
    DROP TABLE public.img;
       public         heap    postgres    false            �            1259    18371 
   img_id_seq    SEQUENCE     �   CREATE SEQUENCE public.img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.img_id_seq;
       public          postgres    false    203            �           0    0 
   img_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.img_id_seq OWNED BY public.img.id;
          public          postgres    false    204            �            1259    18373    img_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.img_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.img_product_id_seq;
       public          postgres    false    203            �           0    0    img_product_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.img_product_id_seq OWNED BY public.img.product_id;
          public          postgres    false    205            �            1259    18375    jumia    TABLE     �   CREATE TABLE public.jumia (
    sku character varying(520),
    name character varying(300),
    categories character varying(500),
    prices character varying(500),
    rating double precision NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.jumia;
       public         heap    postgres    false            �            1259    18611    jumia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jumia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.jumia_id_seq;
       public          postgres    false    206            �           0    0    jumia_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.jumia_id_seq OWNED BY public.jumia.id;
          public          postgres    false    228            �            1259    18381    jumia_jumia    TABLE     �  CREATE TABLE public.jumia_jumia (
    id integer NOT NULL,
    sku character varying(50) NOT NULL,
    title character varying(50) NOT NULL,
    manufacture character varying(50) NOT NULL,
    category integer NOT NULL,
    active boolean NOT NULL,
    "lastPrice" character varying(50) NOT NULL,
    "mainImg" text NOT NULL,
    "productID" integer NOT NULL,
    "fullDescription" text NOT NULL,
    "JumiaID" integer NOT NULL,
    rate double precision NOT NULL
);
    DROP TABLE public.jumia_jumia;
       public         heap    postgres    false            �            1259    18387    main_category    TABLE     M   CREATE TABLE public.main_category (
    categories character varying(500)
);
 !   DROP TABLE public.main_category;
       public         heap    postgres    false            �            1259    18390    noon    TABLE     �  CREATE TABLE public.noon (
    id integer NOT NULL,
    sku character varying(50),
    title character varying(300),
    manufacture character varying(50),
    category integer NOT NULL,
    keywords text NOT NULL,
    ean character varying(50),
    active boolean,
    lastprice character varying(50),
    product_id integer NOT NULL,
    noon_id integer NOT NULL,
    rate integer NOT NULL
);
    DROP TABLE public.noon;
       public         heap    postgres    false            �            1259    18396    noon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.noon_id_seq;
       public          postgres    false    209            �           0    0    noon_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.noon_id_seq OWNED BY public.noon.id;
          public          postgres    false    210            �            1259    18398    noon_noon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_noon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.noon_noon_id_seq;
       public          postgres    false    209            �           0    0    noon_noon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.noon_noon_id_seq OWNED BY public.noon.noon_id;
          public          postgres    false    211            �            1259    18400    noon_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.noon_product_id_seq;
       public          postgres    false    209            �           0    0    noon_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.noon_product_id_seq OWNED BY public.noon.product_id;
          public          postgres    false    212            �            1259    18402    notify    TABLE     �   CREATE TABLE public.notify (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    prodect_id integer NOT NULL,
    im_price character varying(100),
    ended boolean
);
    DROP TABLE public.notify;
       public         heap    postgres    false            �            1259    18405    notify_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.notify_customer_id_seq;
       public          postgres    false    213            �           0    0    notify_customer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.notify_customer_id_seq OWNED BY public.notify.customer_id;
          public          postgres    false    214            �            1259    18407    notify_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.notify_id_seq;
       public          postgres    false    213            �           0    0    notify_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.notify_id_seq OWNED BY public.notify.id;
          public          postgres    false    215            �            1259    18409    notify_prodect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_prodect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.notify_prodect_id_seq;
       public          postgres    false    213            �           0    0    notify_prodect_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.notify_prodect_id_seq OWNED BY public.notify.prodect_id;
          public          postgres    false    216            �            1259    18411    price_history    TABLE     H   CREATE TABLE public.price_history (
    prices character varying(50)
);
 !   DROP TABLE public.price_history;
       public         heap    postgres    false            �            1259    18414    product    TABLE     ]  CREATE TABLE public.product (
    id integer NOT NULL,
    sku character varying(50),
    title character varying(300),
    manufacture character varying(50),
    description text NOT NULL,
    category integer NOT NULL,
    keywords text NOT NULL,
    ean character varying(50),
    lowprice character varying(50),
    avg_rate integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    18420    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    218            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    219            �            1259    18422    souq    TABLE     �  CREATE TABLE public.souq (
    id integer NOT NULL,
    sku character varying(50),
    title character varying(300),
    manufacture character varying(50),
    description text NOT NULL,
    img text NOT NULL,
    category integer NOT NULL,
    keywords text NOT NULL,
    ean character varying(50),
    active boolean,
    lastprice character varying(50),
    product_id integer NOT NULL,
    souq_id integer NOT NULL,
    rate integer NOT NULL
);
    DROP TABLE public.souq;
       public         heap    postgres    false            �            1259    18428    souq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.souq_id_seq;
       public          postgres    false    220            �           0    0    souq_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.souq_id_seq OWNED BY public.souq.id;
          public          postgres    false    221            �            1259    18430    souq_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.souq_product_id_seq;
       public          postgres    false    220            �           0    0    souq_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.souq_product_id_seq OWNED BY public.souq.product_id;
          public          postgres    false    222            �            1259    18432    souq_souq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_souq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.souq_souq_id_seq;
       public          postgres    false    220            �           0    0    souq_souq_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.souq_souq_id_seq OWNED BY public.souq.souq_id;
          public          postgres    false    223            �            1259    18434    star_ratings_rating    TABLE     �  CREATE TABLE public.star_ratings_rating (
    id integer NOT NULL,
    count integer NOT NULL,
    total integer NOT NULL,
    average numeric(6,3) NOT NULL,
    object_id integer,
    content_type_id integer,
    CONSTRAINT star_ratings_rating_count_check CHECK ((count >= 0)),
    CONSTRAINT star_ratings_rating_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT star_ratings_rating_total_check CHECK ((total >= 0))
);
 '   DROP TABLE public.star_ratings_rating;
       public         heap    postgres    false            �            1259    18440    star_ratings_rating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_ratings_rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.star_ratings_rating_id_seq;
       public          postgres    false    224            �           0    0    star_ratings_rating_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.star_ratings_rating_id_seq OWNED BY public.star_ratings_rating.id;
          public          postgres    false    225            �            1259    18442    star_ratings_userrating    TABLE     P  CREATE TABLE public.star_ratings_userrating (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    modified timestamp with time zone NOT NULL,
    ip inet,
    score smallint NOT NULL,
    rating_id integer NOT NULL,
    user_id integer,
    CONSTRAINT star_ratings_userrating_score_check CHECK ((score >= 0))
);
 +   DROP TABLE public.star_ratings_userrating;
       public         heap    postgres    false            �            1259    18449    star_ratings_userrating_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_ratings_userrating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.star_ratings_userrating_id_seq;
       public          postgres    false    226            �           0    0    star_ratings_userrating_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.star_ratings_userrating_id_seq OWNED BY public.star_ratings_userrating.id;
          public          postgres    false    227            �           2604    18649    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    18659    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    18641    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    18667    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    18677    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    18685    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    18457    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201            �           2604    18745    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    18628    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    18461    img id    DEFAULT     `   ALTER TABLE ONLY public.img ALTER COLUMN id SET DEFAULT nextval('public.img_id_seq'::regclass);
 5   ALTER TABLE public.img ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    18462    img product_id    DEFAULT     p   ALTER TABLE ONLY public.img ALTER COLUMN product_id SET DEFAULT nextval('public.img_product_id_seq'::regclass);
 =   ALTER TABLE public.img ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    205    203            �           2604    18613    jumia id    DEFAULT     d   ALTER TABLE ONLY public.jumia ALTER COLUMN id SET DEFAULT nextval('public.jumia_id_seq'::regclass);
 7   ALTER TABLE public.jumia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    206            �           2604    18463    noon id    DEFAULT     b   ALTER TABLE ONLY public.noon ALTER COLUMN id SET DEFAULT nextval('public.noon_id_seq'::regclass);
 6   ALTER TABLE public.noon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �           2604    18464    noon product_id    DEFAULT     r   ALTER TABLE ONLY public.noon ALTER COLUMN product_id SET DEFAULT nextval('public.noon_product_id_seq'::regclass);
 >   ALTER TABLE public.noon ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    212    209            �           2604    18465    noon noon_id    DEFAULT     l   ALTER TABLE ONLY public.noon ALTER COLUMN noon_id SET DEFAULT nextval('public.noon_noon_id_seq'::regclass);
 ;   ALTER TABLE public.noon ALTER COLUMN noon_id DROP DEFAULT;
       public          postgres    false    211    209            �           2604    18466 	   notify id    DEFAULT     f   ALTER TABLE ONLY public.notify ALTER COLUMN id SET DEFAULT nextval('public.notify_id_seq'::regclass);
 8   ALTER TABLE public.notify ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    213            �           2604    18467    notify customer_id    DEFAULT     x   ALTER TABLE ONLY public.notify ALTER COLUMN customer_id SET DEFAULT nextval('public.notify_customer_id_seq'::regclass);
 A   ALTER TABLE public.notify ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    214    213            �           2604    18468    notify prodect_id    DEFAULT     v   ALTER TABLE ONLY public.notify ALTER COLUMN prodect_id SET DEFAULT nextval('public.notify_prodect_id_seq'::regclass);
 @   ALTER TABLE public.notify ALTER COLUMN prodect_id DROP DEFAULT;
       public          postgres    false    216    213            �           2604    18469 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    18470    souq id    DEFAULT     b   ALTER TABLE ONLY public.souq ALTER COLUMN id SET DEFAULT nextval('public.souq_id_seq'::regclass);
 6   ALTER TABLE public.souq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    18471    souq product_id    DEFAULT     r   ALTER TABLE ONLY public.souq ALTER COLUMN product_id SET DEFAULT nextval('public.souq_product_id_seq'::regclass);
 >   ALTER TABLE public.souq ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    222    220            �           2604    18472    souq souq_id    DEFAULT     l   ALTER TABLE ONLY public.souq ALTER COLUMN souq_id SET DEFAULT nextval('public.souq_souq_id_seq'::regclass);
 ;   ALTER TABLE public.souq ALTER COLUMN souq_id DROP DEFAULT;
       public          postgres    false    223    220            �           2604    18473    star_ratings_rating id    DEFAULT     �   ALTER TABLE ONLY public.star_ratings_rating ALTER COLUMN id SET DEFAULT nextval('public.star_ratings_rating_id_seq'::regclass);
 E   ALTER TABLE public.star_ratings_rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    18474    star_ratings_userrating id    DEFAULT     �   ALTER TABLE ONLY public.star_ratings_userrating ALTER COLUMN id SET DEFAULT nextval('public.star_ratings_userrating_id_seq'::regclass);
 I   ALTER TABLE public.star_ratings_userrating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �          0    18646 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    234   .�       �          0    18656    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    236   K�       �          0    18638    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    232   h�       �          0    18664 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    238   ��       �          0    18674    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    240   ��       �          0    18682    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    242   ��       �          0    18326    category 
   TABLE DATA           -   COPY public.category (name, url) FROM stdin;
    public          postgres    false    200   ��       �          0    18332    customer 
   TABLE DATA           L   COPY public.customer (id, firstname, lastname, email, password) FROM stdin;
    public          postgres    false    201   $      �          0    18742    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    244   -$      �          0    18625    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    230   J$      �          0    18368    img 
   TABLE DATA           7   COPY public.img (id, product_id, img_path) FROM stdin;
    public          postgres    false    203   �$      �          0    18375    jumia 
   TABLE DATA           J   COPY public.jumia (sku, name, categories, prices, rating, id) FROM stdin;
    public          postgres    false    206   %      �          0    18381    jumia_jumia 
   TABLE DATA           �   COPY public.jumia_jumia (id, sku, title, manufacture, category, active, "lastPrice", "mainImg", "productID", "fullDescription", "JumiaID", rate) FROM stdin;
    public          postgres    false    207   ?b      �          0    18387    main_category 
   TABLE DATA           3   COPY public.main_category (categories) FROM stdin;
    public          postgres    false    208   \b      �          0    18390    noon 
   TABLE DATA           �   COPY public.noon (id, sku, title, manufacture, category, keywords, ean, active, lastprice, product_id, noon_id, rate) FROM stdin;
    public          postgres    false    209   c      �          0    18402    notify 
   TABLE DATA           N   COPY public.notify (id, customer_id, prodect_id, im_price, ended) FROM stdin;
    public          postgres    false    213   !c      �          0    18411    price_history 
   TABLE DATA           /   COPY public.price_history (prices) FROM stdin;
    public          postgres    false    217   >c      �          0    18414    product 
   TABLE DATA           x   COPY public.product (id, sku, title, manufacture, description, category, keywords, ean, lowprice, avg_rate) FROM stdin;
    public          postgres    false    218   Vi      �          0    18422    souq 
   TABLE DATA           �   COPY public.souq (id, sku, title, manufacture, description, img, category, keywords, ean, active, lastprice, product_id, souq_id, rate) FROM stdin;
    public          postgres    false    220   si      �          0    18434    star_ratings_rating 
   TABLE DATA           d   COPY public.star_ratings_rating (id, count, total, average, object_id, content_type_id) FROM stdin;
    public          postgres    false    224   �i      �          0    18442    star_ratings_userrating 
   TABLE DATA           g   COPY public.star_ratings_userrating (id, created, modified, ip, score, rating_id, user_id) FROM stdin;
    public          postgres    false    226   �i      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    233            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    235            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 1, false);
          public          postgres    false    231            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    239            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    237            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    241            �           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    202            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    243            �           0    0    django_migrations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_migrations_id_seq', 5, true);
          public          postgres    false    229            �           0    0 
   img_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.img_id_seq', 1, false);
          public          postgres    false    204            �           0    0    img_product_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.img_product_id_seq', 1, false);
          public          postgres    false    205            �           0    0    jumia_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.jumia_id_seq', 660, true);
          public          postgres    false    228            �           0    0    noon_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.noon_id_seq', 1, false);
          public          postgres    false    210            �           0    0    noon_noon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.noon_noon_id_seq', 1, false);
          public          postgres    false    211            �           0    0    noon_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.noon_product_id_seq', 1, false);
          public          postgres    false    212            �           0    0    notify_customer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.notify_customer_id_seq', 1, false);
          public          postgres    false    214            �           0    0    notify_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.notify_id_seq', 1, false);
          public          postgres    false    215            �           0    0    notify_prodect_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notify_prodect_id_seq', 1, false);
          public          postgres    false    216            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    219            �           0    0    souq_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.souq_id_seq', 1, false);
          public          postgres    false    221            �           0    0    souq_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.souq_product_id_seq', 1, false);
          public          postgres    false    222            �           0    0    souq_souq_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.souq_souq_id_seq', 1, false);
          public          postgres    false    223            �           0    0    star_ratings_rating_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.star_ratings_rating_id_seq', 1, false);
          public          postgres    false    225            �           0    0    star_ratings_userrating_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.star_ratings_userrating_id_seq', 1, false);
          public          postgres    false    227            �           2606    18653    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    234            �           2606    18698 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    236    236            �           2606    18661 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    236            �           2606    18651    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    234            �           2606    18689 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    232    232            �           2606    18643 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    232            �           2606    18679 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    240            �           2606    18713 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    240    240            �           2606    18669    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    238                       2606    18687 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    242                       2606    18727 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    242    242            �           2606    18671     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    238            �           2606    18500    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    201                       2606    18751 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    244            �           2606    18633 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    230            �           2606    18512    img img_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.img
    ADD CONSTRAINT img_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.img DROP CONSTRAINT img_pkey;
       public            postgres    false    203            �           2606    18514    jumia_jumia jumia_jumia_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.jumia_jumia
    ADD CONSTRAINT jumia_jumia_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.jumia_jumia DROP CONSTRAINT jumia_jumia_pkey;
       public            postgres    false    207            �           2606    18615    jumia jumia_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.jumia
    ADD CONSTRAINT jumia_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.jumia DROP CONSTRAINT jumia_pkey;
       public            postgres    false    206            �           2606    18516    noon noon_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.noon
    ADD CONSTRAINT noon_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.noon DROP CONSTRAINT noon_pkey;
       public            postgres    false    209            �           2606    18518    notify notify_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.notify
    ADD CONSTRAINT notify_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.notify DROP CONSTRAINT notify_pkey;
       public            postgres    false    213            �           2606    18520    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    218            �           2606    18522    souq souq_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.souq
    ADD CONSTRAINT souq_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.souq DROP CONSTRAINT souq_pkey;
       public            postgres    false    220            �           2606    18524 O   star_ratings_rating star_ratings_rating_content_type_id_object_id_f170c88b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.star_ratings_rating
    ADD CONSTRAINT star_ratings_rating_content_type_id_object_id_f170c88b_uniq UNIQUE (content_type_id, object_id);
 y   ALTER TABLE ONLY public.star_ratings_rating DROP CONSTRAINT star_ratings_rating_content_type_id_object_id_f170c88b_uniq;
       public            postgres    false    224    224            �           2606    18526 ,   star_ratings_rating star_ratings_rating_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.star_ratings_rating
    ADD CONSTRAINT star_ratings_rating_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.star_ratings_rating DROP CONSTRAINT star_ratings_rating_pkey;
       public            postgres    false    224            �           2606    18528 4   star_ratings_userrating star_ratings_userrating_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.star_ratings_userrating
    ADD CONSTRAINT star_ratings_userrating_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.star_ratings_userrating DROP CONSTRAINT star_ratings_userrating_pkey;
       public            postgres    false    226            �           2606    18530 O   star_ratings_userrating star_ratings_userrating_user_id_rating_id_25ba0a69_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.star_ratings_userrating
    ADD CONSTRAINT star_ratings_userrating_user_id_rating_id_25ba0a69_uniq UNIQUE (user_id, rating_id);
 y   ALTER TABLE ONLY public.star_ratings_userrating DROP CONSTRAINT star_ratings_userrating_user_id_rating_id_25ba0a69_uniq;
       public            postgres    false    226    226            �           1259    18696    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    234            �           1259    18709 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    236            �           1259    18710 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    236            �           1259    18695 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    232            �           1259    18725 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    240            �           1259    18724 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    240            �           1259    18739 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    242                       1259    18738 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    242            �           1259    18711     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    238                       1259    18762 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    244                       1259    18763 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    244            �           1259    18544 ,   star_ratings_rating_content_type_id_176abacc    INDEX     w   CREATE INDEX star_ratings_rating_content_type_id_176abacc ON public.star_ratings_rating USING btree (content_type_id);
 @   DROP INDEX public.star_ratings_rating_content_type_id_176abacc;
       public            postgres    false    224            �           1259    18545 *   star_ratings_userrating_rating_id_e7ac9370    INDEX     s   CREATE INDEX star_ratings_userrating_rating_id_e7ac9370 ON public.star_ratings_userrating USING btree (rating_id);
 >   DROP INDEX public.star_ratings_userrating_rating_id_e7ac9370;
       public            postgres    false    226            �           1259    18546 (   star_ratings_userrating_user_id_33d5d349    INDEX     o   CREATE INDEX star_ratings_userrating_user_id_33d5d349 ON public.star_ratings_userrating USING btree (user_id);
 <   DROP INDEX public.star_ratings_userrating_user_id_33d5d349;
       public            postgres    false    226                       2606    18704 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    232    236    3048            
           2606    18699 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    234    3053    236                       2606    18719 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3053    234    240                       2606    18714 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    240    238    3061                       2606    18733 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    232    242    3048                       2606    18728 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    242    3061    238                       2606    18757 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3061    244    238            	           2606    18597 L   star_ratings_userrating star_ratings_userrat_rating_id_e7ac9370_fk_star_rati    FK CONSTRAINT     �   ALTER TABLE ONLY public.star_ratings_userrating
    ADD CONSTRAINT star_ratings_userrat_rating_id_e7ac9370_fk_star_rati FOREIGN KEY (rating_id) REFERENCES public.star_ratings_rating(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.star_ratings_userrating DROP CONSTRAINT star_ratings_userrat_rating_id_e7ac9370_fk_star_rati;
       public          postgres    false    3035    224    226            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x��}YrG��7ka��M�d�{�G�'�K��&�%{?�D �B�H�_���@��-�W�|cʤ����%���w8��{�5�5J҄<���jv� X������l}1_4�ۛ���q6�\ͯov�w�zv��ņ�LQ��t�����r_/��|�.��� ]����������%���7���o���Z�kyU/����d[�"(V� ]���{:qr��,�_���k��3�5�!U�S�/�����^�XѶ^n��k�(Re$�ĢN!�?/���н�ӛz3[׋'/f0U#S@�/@�*frX�Z��k�7�dX�|��=�(�)�U$�6�ÓbR:K���7&��k:A
�
U�)��1��ޖ7�m�Ӭ�ݩK�	P�jqH�-�l5�*�YQ�;���,��U�{��:�]ɯ/���xW�@e�ʼ�8O������&yYϚ��%�(�����zq���\�w�M��}J���5�7i}wG�FgW����%o7��E)���&l�w'���;�������J?ΛO��e��f��"v%S��M�7{�k�a�kw�A��'(�[�й�3��j��oA���ʉ�rw镫�C���+y��{�z��C�O�rnY�p��ן���F����yRY�P\���e��+u����z9O7l��2�!�j���f3�K*L.䱼]�������/�=s~S_�?���z1wt�����Y���lҖ��k���+
� 8��훉�o�x�O.�l�i�F��4班G,٘T^��W?�I�pV��V�7�]�Ů��Ò��ť��}��s81��F������F,��l�{�����l�_1;���.=���k9^���y�C`>���t�J�<��gE?7w�=�ObA�CZ�I�2US�c�h%Ƌ\�(+s��b0Z���̷��t��޸��1���&}]ȱ��y���ߵ�@{��z?��2��Tmt-�Z� M~��wX�5��O��+��;��R�bԪ�"����F�^���8���hmS}5
�j�a�&��^�0�}	)�TAgr] k{^D�w�/��:y���_�/�Z&Ռ���E�9W�M����j@9*�4:PЦ���B�3{Q5���s~?��M��
܊��f�2P���z%��n��Q��B�UV@����]�擁��7�o��z�ZH��m�n�`GrG�h��@<dwc�j��"�A�*�����:�gэ`�?ڂC�Z��_�t~�^�{�E��[q@Zq�ZX���â��|~'w��_��7�j�^�[�@����wb�����T X!��۰a�%�I�W�f��5�E�	���*n����͍9��Ϩ8D{���s*to�.��z5A�.�T��)�FL�>:��J*�B����7��F��B�������K��*#Dj��$��͗!kcS��4�Z՞��ah�����=෮,@>�8��_F��<#���v$C6�,���K�t�2�*
��������� �~X�?�Iq��oް]�Ez>_|l6O^�9�$i�u�S�#8�G�|<{P%uӥ�@pq��/��.�B �x�/�[��)O:�,ݲ�R��i���M}�s�W���^�ߜ((?�G}� ��P�WNG�z���<��2��\���u@! An�!��O
�rW���jQo���?T�=�h���`����䞱g0�;cN��U����j��\cm���s��U�ĪF}܈��:L�`6~�z��6�'��y| ����q4��[)��Ny��.Ճ����j�X�l��u��O�C ��<�Z�r?�=��w;��'�����z(�e�(�}�k�:�I6O��m�m�:�IMM�2#Ԫ�pE\��P_āτ���ߋ:`�T���k�y�/
�1�}�r���~�������xS�Ν�P�z(����$����v�1N
�%��rX��	�m@�m�y�ƈ(j�� ��ө{5XHQ� t �l=�	�%`��h�&�£�17����dn�l�������n%;yi�J�g�+p ȵ�qu��m���HA����ި�ߑ�E�`zX��p�Z= 3����T�V5vq�����aeFlj��i#q7�R�v��a'"�T�x�1��,y�XrE��G�2����b�NbEy�<G��4|Ӓ�1>�Q1�.q�Fݰ����Y��z5{P@F�۳�����T1 ���w�gn�A#�=,��cc��u����:@Y�WGp�s��>�+\��n��,�GsE��$B��#���|�hv,"��i�ɠ��G>�Z,q����sPW�GV@��k�W�t��X�C��O2�w_��^��{��܅Ɠ�le\%�Z����]��Ms�m��͞�	y�X����l�-Ƨ>޻�R���)�@�,�Y^�ji�A1��7����A���>eӥl���h�cd�I��^�j����4�6I'�w�d;L�A��s>�:�H��d㣝m8B�6��G�	s�q``f��ɑ<��94�'
K��1��9l� Eͩ�mȧ������w-t����y&p��a� 3���P?5W1,���F�/��w�5��"^tOǦ���4�+>��u�!�E��@��f�e�&a�O��Hԇ�ش�Q%<^5W��\Φ@����R��F�[:��I����|�u?�����p��Cϙ��#!���b51<�:�L*&>�iL����r��0��%� ,�������[����^$?�>y��ܘ�n6��-�n7@⢟�F���t<�!��G%�U=�d'��`T��ՋE��P��r�����0`��4(0]9�x<�k;�K<
����(��Q�`�JR���tid��Lh���ձqz.�U"tA�:���թ�8G���D��cSQq7�(r(1����Ntu�`���� =�#+s{���d�h�8&���Hu���P�F[&����l��0��5�ܼ�{S��x@ų�*o�S��i��yq0/F�� �bh��z�7���4��H�$��C�B^��#����>��;�h��5��QW�ܜl�ͤ<��(ֹ���6d+|a��� %s���[������2����Aι�&3��Z��HÎz�,����y�\���W�^� /����H�cb��90^������/�p��l�1��^첑#\��A��Oi���yL���Y	�U#�
qy��
�;�^8ȅg�'�Ӊˆ{�9bq_B�6'�$������R��g�����B��R���2���$/7M��\���5(�p%�[����K���ͭTO�n�K��Q�2]���+:{:c�sE��nw���,XQ^*��D;_A��|	���=>b�)�t�sYԩ7��O�M�,�K�$bJ�VfHokz��-#�������c�BDi�e�0���}~x��f�m+���m����AVAxR:��{i�;���W�n���t�ݱ�Cy@%=�OLgb��E���/�SBTU�~e�sجD�CHlMA����4	�*�8 1�S��!�3è9b$�~��v���P{�5��e�p��&ybk:�^@YF4Yl(Q�g��r���+�K����g͢^]�h���>L2��b�gsxV~6�c2`�;�4�SP��$'�qP���hK�|:��쁅75=b�e);l	Fn�ǲ'����0��(�K�"X������aQ������f�0O)��r<�g�L����X�<0��|Pb�W�r���)�IH?�w����Q�0�I+�Y��Β�9z�*��z�s2�(K�2;4�!!�^,�a1_�!�*�(x]���O+qNn����
L;)DRUS�G���H�zL?��à~�����j�!�Zr�\=��n�T*JEh��$2����]���3������<����l�䐠��Os3	2N��+��L�Y,!D%Q4%+�z�7f�ȭ��m��q�PU*~�y1s���I;�.� ���pY3����S��
ĝ�&� m�����i7��f�P?M�B&o�} �뱱~���/��J��������:�����MVȨ~ �����[mq��L .|���#�ɑɲ�TԌɫ;���:�T�����I!�r�����    �<�6��g�6N͠���(��C~y���w���7"D��)�q)-�!��i\���K��ȣA�e��N�8��ʉG`�2���:��CSA�?jj@����0Ǚ�#��hkS82g}>���@@~Y�5tU9fI��N�`m��B���M�˧<M�_�qZy�����dy0H��S�K?���וs����׹#Tۑq��� �}ɇ��gR�UD�!�����{��o4?���*my4��t}Q/�?��5��59A�̢���B����k]�8+��29�1���m�P �q�;BH���;�xD�M�M�k����6�Ϙ��ݱ�O^����enn(��T�5u��&{!�>jYd��'Bf�*�Gq�a��T[��{���@��r��H}wdu׆T����ƫ��Wī8�v-'��,N��T,w8�jb���0�ͼNN}�DX��Og�,C�T��_��'�Lю�DH��"1/J<ʡu����c�� �+�����W�Xf���B��
I�c��c�Dz���]�)��2��!,%�4	���u�[ђJ�;�e�_K0������d�JKmo�۠�JU:�:����JJ�i���eh2�J��a�;��R[k9�mǡ��k����	�p���8m�0��B9i��7><��j�V�
����x�B{U����` �3Ea����)�m:�Ui�5���T���^/�@�@�ӆ'��)}BjTmٔ��mPbۉϦ���RE�N�5��YɔUwf��0P�*���=����"�+*�#��O�0�ooן�z���b�5�_�^�F������dVot"��:�*s�c�a�}�����z���%#q鄵|r:���M��d2�v8ߘ0������ǦUʍM�B� ��嶹�j��㓃&9>�\idx��4R�L$����ԲR;�Hv����	k�Z_L�ˠʁ�*��w�����ͯt2W[���%��@����mE��~�00*a�9:�(�n>�x*v��k'��J�N�)�)���ض��?6�K* ��׺�����9����ȩ�t��p��E�]̤q�c����q�Ӟ�@��ǈu�_���WH0� f`	�^feUAlW���.V��.�u�	fNU.@=ԗQ�/��{�Ic��*����M�7�U��ۧ���a���x,[H����gY�'��-�6	3B%OL�,{]�ThdOCM��@��"�_s�G3��޲;�tҩd�knpiz	|E�1�!U�a*��֍B�#;sE=��q�M�mA��{jJo���'��B�,���~S%��7�Ԑ�#�厍d�fU �??�L������(��+t����Fy4�N
�8�2,�{6<�£ֱ��!��`!%���9̒��������c�~�ҫ_��6P�����"u���� �qA�rN5�L�ߒ2��J�5W�WT���Z���-T:s��Ow��ʝ�����ߑ2��gI�,��C!#KzC4��(� ��!��הRN��q�.6OQ�:|~�P�!��(d� ���|˓�����*�������jXQ�9��9�p�_������4����S{�S�����_���)<@�hSa�p�L�O�Tt*�<���T�g
a@�q�>��S3FoG���һ�b>S�THi���a�C2�S����U-L��+���+)ڍ߅K�� U/��ճ��K&�.�����Ï����4���=Ȓ�f��<��l�&HwWBc+bZ�7tz����=��%�@>�����/v������S�H^���OήQd��p�����}<��=��T��.J����QDҗ..ծb�T2J�eK<�Eܴ��)�+�����W��ϫg�#I,9���w�g�zl��� ��� ��{_ķ)�����zVl�6ܵ9�u��\*�%��e��M�����ؒ�!х�F"$���x	���,`Q�Ǒ_�@Aef��zuS^�+b�[*mO�C����ƨ��-�U@���;��ؿ�j���R̲���k<����f$�=xE�|��/U�]��iB�ҩ�J�ʩ��F��-���!\��S�9��82Bb�鼩�������>C$,��b�6����B�!�0����+�&��o3�2��x��ɳ��C+y�s<���<O���ӲwZ<�L�w�ir �I��w���ZRu�!'��x��ݭk���H{f�2z�H�1z=Ԭ(@��{��C����
�z��u3�_;j�/�K�{t�w�Mr�h�MrZo�O�+If@ē{�?{66�ұl���t�Ʀ3:V�S���/� 8ܐC�=0A��s�D ���'e Cݮ�+c+����U��ȏ�Ӧ+3#��c�ڪ��Q��8�P(X�N�.bL���  W�*��uU���h-gI�-u�é�%��8)��-��DG��N�ca���8��˿�֒f���6�����v�%@߰�A�9{g/��SK��wT/�l��z�\q=y����y�)]���+1*��D*ʖ�*K('�T����=��*���M�����[&	޼��������n�aaB�{ù�La1��ը�`A����j��}�exfc�~S{�e���
�`��f9[��7� �����g�2K�^����L�IGE6�lv7ͦ��_e-�d`���� Z!��Ā�i�����@A�(T��߯��\,��~	>ϝz%�ư�y绦Y(���O��*�"b8��y[6�^���(q��@fA�q+����"�Xm܊�P�zK�F�U����+��ΪȊz��)���ެzB��BS��Gx�sOG~V{4)��/>E����ǱWE��r'c�#���`�(RR�yFVq~A�,ʡ���T�l#U��q4���!��%ҍR�T����Q��E|DU �2=�ԛ����Rn��N�Ag��R*S�+S���HC8\7Ç��21��P��O�	/�ps��n��x
�"a�j�P�C ��EW����*���*寜|U���x��j�e��<u����f�yRb�N������4�x��#5��É���j*�F}�M��d�_.�Ҙ��f�Z�N�qA�U4y�����>��`f��;�#��h���J�	U!�'��zNb�+�F?�������f{Qڦ�t�D�hE��K)���Ff��}X�����\b��̭$G�0�z���t��/<���"S�P�5pK, =�����v����W@H���g���2a]F�8:�b ��D�
��(uɧ���@�>˸�w�*X�`(�4�0bH��.�3��ƔOyg�g&�C?������[S*��z�==)�	���l ��R��:��Z��n}��;������[z"^�>'*�n�mP�fF�%a�AT*OpB1EI�{2�����y��1��0�/
��~��wT����^������#�=Ұ(Afo����g�wk��� ��v\��E�Ԏ�6�z1�faWƨh��q-�����:� ��@a+�o��M��Qh��FTj�*��c;Q�������\I� ]��~l�U�o
H
%-I@@�'ʼd+O�7��ĕJ�n�����Iv~�?_#�9�J?Wvyp�J,C��"8�2��XdK�k���!n�8���B� ���KAVqn#������/�69��2z+>�2��Ba3���b����a��P�Xq�3���&F�9R����
�ji:�aߙ}|Py���i�����Ê1��j�p_�Ic��b؟�S�a�A_(�z`2�R1 +9b�q��<pm$�X+<@��B$p4Bz�F����	X���qM�1	���3�2K�>�)�0PPe$����I�
�����y����x��(Ga�����kT�Γ��9׌����:FP��m2�"eUj�=�ܪ0;O���^U�R�`c�B�<�ZV(��B�\��s#�j�r�c�6"m6dq�
A\���F�W���K�kc��w8��K�Q׫��:j�G@���,C$�7cj�^��Ԟ�^O ޳Wu?�TU��K�;h�fI�R���~�6J    �`�.C���>����=l�N.jH��r�;��sv��36���!�Bh���p~DW���z��9�Y���8�:Q���]�{g�rD
S��]�N�P�/�A>'0�6"ɾK�q�O�����C�4� �Y��]U�F�#�!��:�V��^_HB-,R#���q����{>_]�]	X�Rr�M<�ww�'
TX4�U��ٱ:+���R�cY��[��>�v�R��8��J�|9��፳D�t0�"�1)<�ĕn@�eV��A���i�e#r-ꦕuXi�Q���'���z�Y/�6�>oA��g|6��@��Ӹon=�����Z��Eq@O�D4�X�P��z�s|�ѽ���l��� z�:��K��xl��B�z7��`���)e*̤�4�&����]�p\�i�Z��^�:�;194>Qůp �������4`q��**T2�m+��L�#0�b��X��#����a>Jo���
?$�@X��*��p��̨��M�Y;v[)�|N�y��8��_����kמ�>,O[݄�[1�8*��8 yO'�?�6Y�+���_3P(�s��X�b%=��(����t���$��(�Nod���~�mvn�nl�Ӗ��b�LMC��	�*-�DS���Q���\�7�DPa��K�����Ҩm94�)n`�<B�"�OU�%V�F0?�W��Yc��*�i+6�m	-oضu�`�2��`nU�&�_�EF���6��Pw����Ԫ�]���Z�}�t��$O���<����wq�4�Ka2�J��&�S�
X����u��`D������J�;í�O� v!�)�q̑*m��Ѥjē8�A��2�.�1`�`g)B�Q|�&�eS�#V�O��GJG�n�m�[W+�q#���ZW�I1�G����j��C�>+e��Tp�8���h��|�����HA���}�0�-���,1�m-b��=&��F�?�qDܶ��*�a��',0��]J�Nt���QTjl�^��o�u�������_�}�ĵ����L�<�w�*fX�@B����
y|sd-��{��vC�(�����A�)��3(C�)A�"_V�m-����9h�r� ߞ��`�$�����%`t�B�N�v4�T�xX��n��]��E�T�������Lb��mx��席��ړ�f�1��+�)oP^����H�� �D���kO%�d�L(��(U�-�C��i����Q����0~;�y8�N�=7zmg )�5���<ȠE8�ݧ5�fE�ŀ5HPA-B:��B�J7�$�ͧ��6��~�8Z���_�ᒚ�ڡ���%t�v�� !A�����M�h�09�9Mк�Ȳ(�";g�g�e���޳Ӊ�w�F��~�j.�Ǟ�	QU2��rѵ~��m��Z_9DG�'�g����2Nu���m��"7�S/��$�S �����zE��zaMx�Q��!�G�Z��C�a�,�DT�y�H2 �%8���֒(����6�슞�:kF��ʋBi�>*����K:���^�f�3��n6�\�ؕY���ogb8�&#�U���&g"�i�_�� �^P��j\UQ/��y�"Ds}aze�)b�*ğ��q��b �0�)�h0Y���c��,�'Ӿ��q�GC����=@��o��p���u*\]��eSQǣ
q4_J'�4t�����|������k7�5��,kO���S�.jb�q�P���FH_@��̬�Y��g���zu�ݭW-ˆN��3��g-��HC5������W＾e�Eo��bhˇ�wt��A�Bƅ���
����BN"Ç��� =�!h�Q3����i��ٚJ��M��yѱ^�����!;d6�ưT���:P��E�5��������я���-5o3�^���%�6z�����'ի���ej7��������=rX�8]�G�T	{�nAVl$�fW�p���B�q:P^��~�Ȋ%+�*��������9�:���!�Nm�����O���|=$���J7���a���SO���>�Y��(��HF^���~E�L��0����o����T`p����IF�$a�έ�XЦ�B�6��A�d`����v8ag0Os������E���Cb�{m_��Dc��.�w�C��78���~z�bHz���d�s�j�� ))�k�#�I�.'�g�G8I����|\��O�˵���ϭF��<zu����>�d�K�Bo��md2HL�k%��t�1u��Гq7�����Ĉ�ٝ�Um��V}���fKW/aU��l���5�L:sY��NוȪ@����Y�0�qyr� Pq]�ȡ�*$ bR�'y�����ڥzd�@�@�+6�wP:�Ъ�
�0K� ��A�!�(�,
��P�G&��A��{mfb�2���S�e�����#ey��NYN��<��|fe.�I/��.��ṱ�y�E�6�]��bYyo�Xf���w��>��o����!x+G�w}c5�ռY��u,�ZGڡ��<0���gYC�\T犴� 
��	��c������|C'��fYۮZ0�U�z4�[��q��T�ئ�:E1��G�>u�*�q�`���!�c����T���k�zvv�E��>��3v��RH�<�<���ᔳ���G���e�'6]�RU�$��w`��}��!��e��d�)�1�	��"�E���풡6	��+�xF\!6��Y['��@/�vgH%&3N�0��3�t��������W�0��E��EZ�����H�-'a�����A��إa�F�`W�x������5�'Nf��ҁT��s�E���|G0��ڃc_�.t�E[�Ͳ�
ݫd^�`�;���g�x!��{�|��H�,m�6���S �ށ���5��moP�H!�'����h[ĎZ�����Oh
i	Af����i�{�����u��;�����ձ��^���<���Zo�zm�wf�j�����9u-8G�v����'�Q��_4���Hq�(�|��!��)�.�5�}y�H����ow�O7�]�0�[U�sUj���8����1;�HΥ|����g#�Se�e�֣���VBa��d<e~p���4��|̼P�N��ɞ���1��,�����������M�����Fy���QΤ�lT@�F>���j����'r��< IJ�������E� Y�Z�C��tK@��f�|[h�WA��r2I謾f�@���l�G��Ԡr��f�)5��1b�V{��e:]4�j���z�{H^����~٬v��~��_�W3vYإ���X���Yc>���-��)�>�5E���H�t
�3Ǯ}������AC�aH��	����z�����6Jf����"� �1�p�[��Q�#7K�ӹ�0�ſzL��g�#s�<D>~|DIY�GY:½���v!��]X���9�jp_�k1V@w�'q��t�Ѹ��.Uzp�~�l�Q���d�a����f�cQ�7���9R�g-�͎b���fGA��jvd���М����@�0e�LLG,��K��v銴�W���M���>H�C�@� H�ty�� 2�1�VL�h�	����!�.��8.{��dH7�N5!��K�u�r�%W����LQ���~��s]�H�D,g�0�#e���@�t��O�qfG���8�c���_"���ԑ�a�G	-)�����پ��"�i��_m�ze"����DIT)�L%���Ӱ੘���t�\{?f&n#v"��_ޛ\�*	U^���TZ�%pIk�g���a<
JO���+�q�(�)�ej@0��j�|Z
�En<���L|U�4����}��=܎=��z�L���ag���DJ�*�X�m.c��?�|yJ9�v��>d�Վ��Tl���ʨ���䔺ۮ�6��Ɍͣ��|"u3���&�G�L	�v4B�\�q��B�	�}DM�R>�d�GH������e�[�����e�_:֧����lPb�	��z�3���uZ!�S�q[��"�|�Z_�@�rP��R>w�D!x�<�T������@��	èޝ 	  �}�.ޛ�?|KU�����d��P��Ġ7#��2��oj.z�i~5�͇pV��4;X������An.��
��ϸ:�@�!� �e��j���$
�#��\��^7�x�^�"5�J�}(�u*�dA��H���a�5)7L���b3�	_B�rG��
��z:
*$[Pi�� %>�N:t��n��Di���w�P���t�����M�
��c�1Xօ�����m6���nXg�6�?9qЎu�o�w}�r�P�.b'��=��g`��;��6��� N�W�!�S��w��=yqK�� �8���Z�Ҽ$U�@�	�
�c��2�����Z�!Lm�i�d��p�yE����l?2�0!��Jp�P����Q�hn]4�khvc$߫3͑��;Bڈ�3�����Tʻ���� ��i /Hf�LU}��΅,��箾��(F�T�$��G�Ь��(k;{7?���,�i#���Tog������p�cA6������A��"�XȐ�5_�%*�
t0�|@���8�H����i'l}�k��j:O�3`���e�J�p���H��ҭ�.�"{2PB �V� 8\$�X�d�fC��,-�#�U*Z8È�2sޖ��Q)E�0��>�f̸���~}WV*��7,= ��Gvl�;-����y�L���z<!�O`�r⨃AU	��؈�䳚�b�jh�%w��bز�[���}9g譼Q���q�eM��Γ6bv�*���]΢Yrں̪�rI8( �qp��χDc����P�@�v��+@;f-nd�-F�" }���t��t5HIa�-.����ĩE��R��zF��|G>�廍[�V��ΛXM�P�3��_P9���ˬ�W�o�G&~�;f�9R=C�\\���':ܒ�VFO���RdD����zu��C��p�����Ι2�9f�?�}"$g�91?���W�֥��Lf�Qa6�-����}�V="U��6m�ek����QZ9t�x)4����{M�vTK���d1�Sb�9)��>1�(%�x����R����9Pz��z�뎸�n����b-s�/���՟�U;�҄�q/�r���	�^�qi4�f�� ��h��M}��p�q}�6�^�Kd� ��� c�E��x�0;�ٸ�Ő{��CƤ�QS~0o���{y�ް!���H�\���K��D�㢩8<�[ w�4���E�B�T������ib&��s�?��龝���ϥθ�X9�v�w���A���/�zu�0��f�@T'<o6�3�|P�ʹ�\	!�N��{ʾ �n���PR���7|���4��_ͯ�O\�P~�N�^���:@-����3x�@�{��K��~�l�,�v���%E���,�<;�������QQ�\�\��zɨ+�S_��i:c��iDS�G%o�)���d�����G�м�)�0��5����<d�B>���<�u�X�n��gJ�>�T��|�{90,�@��E�Ak��W����n>{���2���V�o� ��L�E3���ƘG�f�{��X�)D!P� ����?��̟iG�ظ�p"��u��f;��_ݲ�8öo�w�,��ϓ�x�<�����?��:g���yW�����O��Ks��h[~Z��lw�[����rP��C��Y�ܩ�;�k�[#�7ȷ[�o�l��3 �ǒ�Y�J�ɻ��w%M��y.U���F#�N��t#fO�ܦ���Zg%Q	*4�����k��"��w��{���g:.���j|���7-٦�h7dg~�x�܌�8ǝC[t�/��m�Q�*����l�ۋ|��F���h�ۍ{h�Q�����8�V0&�~"�H���T2i���>�*�3���ʲ�~���j2Ǻ2�Ѝ&Iq_.�=x����H��(OXۑn��y��B��������Yy<�ʙ�0[��Fw�q�1\^3��y��,������%	�����¥_�o�WZF�^R<+�9f�oQ/�W�n��{Ig(� �ޠ�]�wI��:��|9
N��n�qPC v,-b�!Q��A�g}/����0ߔ~-ei^��Rӱ@�@?3H�M3j�Y7��o�)�61T�	�;j5�7�i��֝`I����^K0��,e�R������B�Ci�	V�ͭw���7��v���ao�}�=��Qo��� g{@�e���ֲ▙�Y�Sd˖#�5͑�iqn���h��bk؁}�h2�Yit	p�N�y��~���֜�p�X�TLI@�G^Y�����2�=�~�L�^n֟Ughu��yM%/��y���������      �      x������ � �      �      x������ � �      �   �   x���A� ��5���F3�Y�LR%Qh,m��ݸ1� �?/#�K1�����o �B9ؙ!��@V�o(�F��ժm��#��<]��؅dvXB�&FJ�5;i�4��]7Z������Dv�J����<őu9�H�َ�\��iKkjo=j���Q      �      x������ � �      �      x��}Ir$ǒ�8�K-���#�6���c�<�Yz���" �drUw��Y�(u����,��	|��I�����O�>m��m0��N3*E���;_����c_ɗ����QP�������o�ǹ���Z��/��o�_��������/�z��o��ח_7��_{O�����h��^-�uS,�=rGPxC��x���f��^)6 �j!1�<{���Ë x��!eF�6��Wx�=z�j��.̃w!�<v�o�-�~j(������A����V��V������cf� ��0|C�a�s�a�+��E�;`�W^�d6��G%7T}Tqj�q���Qc7/�411�����˾�3���4ѿa��"% nà6�}u~�������sq|�eF��&���o�v@�b�kA{��VU?o������h���+����œ0�B�x����%f,Z��OH�B~@�&��5��Y
�nbC���^�<{_�����O�F��5�EaJ���+4��=��h�I �����ߌ�P.<���H�c\)�m5���A��=�����ٓ�����me ~�AУ}f�09�p������wL>;v���� ����zɄ����n�.�~���|�t��Н��ҩB���[jj��^ݯ�1�������'��}����7���b��@bnY�ϓA�'������w�U?�@�~_Ǣx����"��D���|����m�E|qRӨ�'քc��x��{�c�T|�/����-��)���T���h�����T�H�7���Mt��3����k���ϴ���HK��}�1�9~}�����f�A�: �y
^����˓�_��|w���0�n�m��0��R��e��^��k?�~H[���m�����z�<U�!��A}�Џ&~w7��Վ�&�B}zI�����ư���[x�3��y���DƘ|(�d�
��������o/�_;��L:�_x.��v��/����dm�.����"o��j:m�HUQh'�N���T���C���3�F׆������H���b�Å ���,�_��[en_��wF�|,,�,�ǿ�vp ��k������Pp�Au}�ɹq���?�x��G���uNgi�*������E5��4~p�m?B���i�/�mx,���ڿ��j�|Lr\7��5Da�Ea�+�F����<9��S�����lQ��-T B�m�l/���&���J`��M��nbu�:_���gk�'��K �Щ��ZߘxI>/����M6`rÿ;1�9�6j��ǜz/Oe .�a(O�?j��a�j��������uG�x$J+l� P����|���p�����k.��g��%���0�}]��j��:�O��^�����g��Փ�~[??f�P�v|��զ�z�{H���Az�HxphP�hD�:�����{b:'n0���Q��0?�ɩt�q���+�ˏ)�I���?�q	�r5�>.�׳�(���� ���*�J���D�ƽ&��I$�	6��^�D�P����K0�//���MRMd�Co1EQ��+�c#�͉0<~�����rQsP�c:_\���y~���I��ɵ�w@�f�L�㦆Aǌ�yO��xq~��aN��������Q\M��_�ݧQ��>ӏ�8Qu�lПv����!�_�����Z8˷�� Oaw;;y���Z��@��e6��a��9)-v*��)����~�5=�o�:�O�� ��lu��(dX�{��<��q{;��nB��6��K��k�Ԃ�^ ���f�d|���ޖ/�WW��9�M�s�a0N��z[���:}�:�ܹ�� �_t#�ot{��\1��vs��f�g�w4H����i5g��iA`�䰯x�R���Ҥ��/^ğ%�y h�hd�b#v�>��K�V`�m1��R|N^]|�߿�54��TKh>`3\a���yq������lL�Tac;&�xU�V�K�,���ƥ5�������w�.T<���1d�.Wk���ى/��X/��<�9��>/�D�6��s��e�4[�;A��#7�Ђ ���0C&ٛ-��ɼ$�*�d�v�F\�����

��j~l�µ]��[�����=֚~��J��7�T�R`y�H�t���Q@H(;,,4ϳ�������x�}�����*k��w>�޷pQT-mcUaJw�vG,,�X:#�C0��>�5�ǃ�������Y&��O�f��O���9
�OF��0��W�f+�0Qƈ��꯬N�@n���Ҩ�����J%&r�=���D�!`�X5I/�Uv.A�:��oUMc��( ���>�ʦ���u*�����_�ˣ�����=�0/���7�7��;	kU�W�m����&�{�?0����Z�O�"�2ْ�MԀ�VF���c��lYI�����X�8�Y���_;IBq'�Agƥb~b��[��>k�k>��&0u����b�.+�� �\)O�ꦟV̻����~��}���k)���/��x_:{���,&�$�p?�HD��țι+$��A��I���Oϳo��pWx���zG*ނ	�ֶ�q� ��ڃ1W��F<|���Ơ�KX���0��G	[o�,�Em����?V7|Tݯ��k �>/��NbӇ���3�i)CX�6��iۇ�ʐ����/ЎD6��M`��0n���3��n��ԧ��S	�RǠ�W�X.I�D^zBs}��v	G)�Y1��""��1&��4<��l)anjy�Y�7���`���fF�w�FU����"ϊ��٢j��L�� �l�pF�F�����5=���6?�ABE�>;��ݡ�"� �����N��4�#`�lB���1*9������@��o���6��'C����}��i����A�
�x]��xn��o�t�l"��9����H�7��I�0����`;�&���w�d�~��gk�ӸA"��6_�+KnC 0]P�Y/�%���(Wd��:�t��8\�V���rmb�����h׮/i���49 b�s��i��|Ly�ln�c����0�B@���?^�g��P$��J2��3N�`�4S#�m�5�@>v�Q������y����]3�����$Ah*��ш\@gN߉� �u��Rn���\̐w�a����J�7�%�����6;&qe�
�v��1�SfSX=G�	lK��,�rz�8��U��d�>���
'�#"���g�F�����n�WⒹp|u��	44THA�MM@{Ѹ�0���oJ�:[Kp�I|��;��"`�?�E���U$HfRЎ�:����l�A�ٺ�"е�L�f�eT2���a�q�� r�?%��iKjٜ*��~p��C�uCN�肺A�˻��8#@�a�cN+L��`��{׵��A�|��C&�7KQ��d:�~�U��WX̞V���s��upP3t	a�i*�tƉ�I�ak<گ�O�����Wz\<{��8����Z�Kkn��0[��&��v����7�6�C^o+�;	~5翽=�a�)���얦D�&ܭ7.�S.V�G qx���A��=e#b8����7�)@�v�����
�(4�T~i���m���L���N�+p2�ţ6ALڭX�l���`���7s���;��;
�
C�bê(�VX�ɛ�w��a��!�E*������4��|��}�����?^^3w�q2Z�s���x\���F�v���!��G�x4ޕy�<֓ݱ0���N$��M{�� {<9٣S���%#���1�|$>#�ڽ���N9��ѐ&��2\�@q�z���񷫄ˤ�!wr���� u���SfQ*�s��1[���g��G��d/ E�*4ˬ4�@�ɁSI�#b5P��� ח �on]�� ��hG�zs�^C�t��iͭ�Q�V%��rn��-7"m�Q<��֊m~9y�)���Rc^��+��A��c��D������m����˒�0y��V��,�� ���B^Uص�A6j������;$�,� �fL@��ke*�6��3�    zq�G&~�R2�T� �a�cy�+�C1��@�����w�՗�)w�$����~�0)
\�a=Iγ���Џ<��V����nFU�G�iՑ`�����b�	����
)WrYZ���/nf͑�	<��QC�*F�G�3euN�ϭ�A��Q��1,F�����Daӆh*�ty��[*bg�]W�d�M7�4
]��l�-v輲�Ő-bi`�k��V4T����]�(�ZnTh[�`��K�<1b�j�w�����}�:h{��]�	;ҕR4`�b4��vl�7�{r���C2$%f�3g�>���X�bNT
H�xvf����8!*�e�d��15zE����)��D����e�-]� 1�&R#q��Ls�M��ĥ��[���O�^�R|mf�Y�ƩB��X)���J'q�N���XSn2��))��˥ ����^X�C�1�T�W�*�7��mTP���eF������ta<Ε?M�ϔy�)[�:}��[��	5ʷX3Mk����e&��e��}۫��iC��J�����7�
X��ю�K���E�r�S�	��7z�g�S6g:�,�}&���Q)kڊ��Pu�� ��ƾo�k%RNiRl�-W���quߨ3A��8�5�n# Q44�;�t���}�;$�uyLVl��X���~�x}������ߟɐ7ƣǃq�kB���»���Vw9K�_��G�x��`ۃ���Z8����v���!:���-�#ޗ,���$����u�ƶs5?=Us&`�fy��=�9~�=��/g:���D��^C���V`������R��X\�#w��YAp;�"L�dk��Iܴ�ϗ� �ͮ���D��*��ثR����(��!v�(��!1co��|����d!�8�P���mK#Z�L8?���]�z%�Ð�
�gˣiEg����z1����wq��y�"z��Zff�ȥz]0��������Xqxv�r�k�zQ&a���(����sv��]ذ!7��K�A�v����:9S"���S�9��G�T��E�h0�Ӻ����G����_��[@Ŏ��CY\�����	)^4nX�/���7 Î�M�y9W"���_��x��<:�q�p���l��y���=%�4&�9.R(�~*�}�0����t�0A���|�@��Ơt�(��4N�Hn@8.�uhˣ�=����&M�u��1FytH��`Q��~dHY͑<���/v�����e�|U�� a�-�׫^�����b�
W��9Ux�r��,6��}�fG�7D�\�7:z�0���DSb�9Y�up�$$#��0G�@��@m��d��1)���D ��Ys����Ё6&���0,�g�H����d#7&��-ȎmC6.��6����A�mO�
��,E�
�MKՆ�L�4{�2�`|���xt2�� 6��Ak��A<y!'>硣j����|�����$�0@������;s��5��o�U�����;���^��O��4  ��J��?�� 3�I0h��n�ة��O�A�Z�Ɇ��-)�-����h���/��p�׻��L4n���͌�	evz�i<��~�;�Vޡɣ�
������w!�jۗ2o@����d�ܵAv}��|�<\j�F��������d�*��<%�"F�4ߛ���1�_;�5���hcV�������W��T����W/�k;bi�Pi� �n��r�@��!�)�o���*�T�����g1C��p���N@����Q7s����O���Ҝ?�����0����nG�zE��NA�I���'�F�¢S/կnq���R=6��]����1x��<���z{��P�G t���5 H&,��P��Q��C��ݽ/rP� �mx���|��^�~���S�=9a'��č�=ӥR�0�,r Ab6) ��b~��^�3�f�I�d�o�� 
X�Qge�e`1[�㛬ޞK/7(����s�/d�)�����0�dmf�2�b���n�;����ݍ<�M�N3�8�)z'N�-��H��@�/;�h\�����B@�ab��1�O���D���60t�MV��9W�V�� s�r�JT?���?���F�v .5�:!j�_g�^�$\�b2�P��
?����/�?�֙�O#(m���MZ��q�P��]X�:t[/�C�&�"�HL�cs�B����|�]�����v�����������S{��D���s�
h��b}��"[	���R�2�]���\6; �-�S�՗�FB0=�-r:��������r�)����� :�1յ`��w���^R9�٩	Uˁک�R�Rq�O���ؠM�|�~���9�� ���3DE�C��}ܙL2B�.��	�.�V'��͂mg+|Mc����VP�[��$�%�!��-�4����6vVv�f
�%׈�fELJ�-�����Ӷ���Ӄa�X��i�W�Ͳ&)���B���
_=^���A��X��ͪ�;&�0��B+�ңD����lt,��$\)��0|R�ߜx���0������H���icȰ7��0~p�O$Q@����+]#�����}��XFcf���=����5�c��n�)%?�=!c��0��A������+O;{��'�_����?���ּX��_]-Z��ֳ�	�1_WG���Ej�#�=U�H��Slt�A�Ca���"������q������wr#�/]"֛Ͼ�=>���*Y�Xg���z���l����%b�Y�ķ툸>��J�~J��ƛ�o����&�=�K����(«�2�'����_�)������e�.�^��{{z�NJ�������^,�!���S�U�W�D��j�Z{ll��j����`7��D0o�w�hQZܹ�'!�g��~@��i�G��q��0�"fYВoot$R:d�k�dpR|��ElB\��-��ķ}��tXu���n��k�^I�ԗ ��'��B jxR��x�<?�m����a������\`a�8D�ޕ����!�3����� �|�G��?���3�P�4ۅļ���f��🊾�y��S�-���|�u�jb�����x�[r���1^!��29��C2]�n
kl��Ө��gH���j�(Q���d����e�B�|!�i��j���m�T��PsF���W��m�F`�ړs?8�BF�a�s�5���6� �"��&�\�z���t�&G�brg-�>B��n8,�ۢ���s2��4@B `�F)%R+����55��$�V�8ۘ�*��j�(_��!ġڋ����/�);tsq����T���\#�;��"^��D��>�|-)�Ntd//0���$f�zg��0\�n�U)����eA7�p�r�醶�d�Ɨ��'WZ�L:pã��c°X�Ym%�,�݄���t-?�i�̪�d������zqn[���vp'�;�-f�>+��G�����5�,&DV���b���p�����4���#���ˈ��o,��qh����]��@��TA
su���NH]9홪j�Ɍ ^97�Ml�)h~K	�X:�d��O��Sa`՜H�[����k"0�-���(�D�K������<��0C��ZQ�F�#�i{�܏�&3|�qEC�����K��$�ߕ�����"y���z#ew��'�C 3o���/��=Y5�����~�"��2{�܆"�
b��F�e��a�j��lw��(pC+��d���ZWH�&T<7}k Y1��:ݦ����g�-�/+8��Dx`�U76U�R���pz��0�PAq2��O��Ds�b3vO%5p�m�Ů��s�I�.�jj���
a��	C�8����0��9����/�V�]*l�^QP���Aw��������^=C]���{�E�Hʣ!+�1,t�9��S�R�DH##�~��OY�Ś��_&"j?� ��m��x�����U���:�P.bDIb�k�u��R�pS�������g�](��&1�@a���A(P}��Ϳp���v���KԽ�(?n���?l~�|+э�;���_���    Pa �l���֌���R����̰����b7�u.��S&ҫb���(���6�dg��	p�;ŉ"�VK���8$ʷ��աvU�]�alU���<���T��IF	x�� ���6�����(HH��,���&�WՅ��L���j+D������܍,��o4@ �5j,4@�i" �4*�n�d2M�e�d�~�MN���Z#���2D�����i䍟2���SĮ���B�{��,��߉! O��UT��;�e�_��-v������{h�|��~�3�>~������������d�~���	6#,1.�;�ƛ����z.��	r?�hb\%x��-b�ض� �Ź^�������2&�TwѤR�����ac�Iw���t۰n6|�@��Hy[24b8�Oxڟ1�vc�� D��(�+���nX��Xr/��/���/���h��]�K�z���!��X1W�^�^K�(�iz��۩�҈&��B�0�
Q< BQ?ɴ�����v�fŨ���~E�	1VK.!��z��'�E#���nx�L�٠P��2��B ��(L�@�o�O�;b��W��(݁n-�6M��@��Q>ϥغݡ-i��ZI� ���u�����~IQ�d#A�E<��w�����o��I����z�S�!�>n��m\^k�8���ڦAa<�t?��j�E,����+SX��t�w�ԩ�Z/�����TS��Bbj����*�b�TT�Ĥz6ݒ�=��吸��y���5T�9#��I�	���F��׫��=)�1����:�\G�v*^��m��)�|�+����6�Q�ڽ�(�5ϫuVmI�����Ym4����%ꈗ�|�9��+
��՘o��*�U���~��Ae�4�Y`�{����ɀ�=��	s��L$f,��)LG��DVͦ�ɱ+�Y�'H(�ط���(R\��O	���v�����S�ʒ�3ط%ͨ����7��������z��G%�eN,�i��{�/��}�	C��i���9�H�)��
-Ro}��j��ĢC�X����?~<�%b.���ط�t(�S���
�Z����������ӻ�IB�1]�8m��C��HFx?0��;�ҕɈc���@%�VE~����������e���@��^��6
N��J��q/����:2�Q �t~R���q{'U�[B['�'��$����emR��ɹ������u�4`���Ƭ�+�����6	�7�5V�����S���l��yOvf�p��LW���j"RJ�ߙu���а\(^_�h�܈r��6��E #{�M�ύ��A�DB��Ѵ��XR��!��ݔϥ�IB�HT����+N_�^����v�����\C᧯�I�^f���V�A��)�Ju�3�x��S�^鞈#4K& �2؃�>BK��]d�k%��I�DA:�Q?�kF%[+4d]��FG7�Rxd'R�]�._BvO'�q�4�����X	�%W&0��r��� ǡR�_V���Ԍ�E!:�B��/�MNz�H�|Qf��B ������ؘ��f'6�#
��Nl�nSݼ:k'���
��#�t�a�]imw|�<x���h/��i���k�?���\�+�	�y���۵����st�)R�p۬F���x�s�86�Q��jqZ7��o�>;Wx>v����av���2Sպ#����I�hl�8��fw.��%n�o<(�C�әA��!���.��V<(���g�G$W�Rx��99����m�!ˮK�v��i��@SSE���S�$5����F�2q�y�?�g���%p��/��֓��-�B$�'��ZݿQ�������.���@۷tq��)���@^���.iD��\�1���\O�ˡv'[�Ys����z�%bM�rܰڪv�Sԓ�[Q��n��{pG�q�ЪFէ�fm�ҽ������ &�D[H��֍���:g M'k�D�R�'������������S`(d�QX0����L�#� Ȫ���N#��~(5'2<� ;ZX*�����y�h!w�����Bq�X�	<��hE�}J����5
xP�ܤ��V,��� �5ew(y�2ĥ�N�'P�`���Q�B.�n��.�͹��.V4A�q~q��O�"<gsvPK�;��p�w!R�XL]��$(4EA��&���=��I%v�6���x�atU��fyL�@B6F�!LS$>!I0����$(��=�.��2�(�@��:f/�Uf�\�C01YKwFͭ�E\�_ť��9aQ�/��q��#�_�度�����\�a/^�a&�Ƹ�>���)�M7��:�c炽����k���^��ˠ�v�{�"�A��(gz��`[#ē�s������'<�_F����?�&��:�fj��*,��SH�OQpWdB6����Z����X���gK�j6'�~��]KumB�!A�����i�==Sn}cYv8�i�����X�9��y�T��ypüO��LJY�s#�RR�I�=�I��ظn�PP)�H�:��`�	T����΁9��h�1�L�m�W��Q^^WK7�&B�dc}Z�s�
�⒇)|
�E�-ʰEۯ�b�Lc��|��y�H�e��4��J��ۙ�ړ��'c��9TƇ��K�X	h�Ƅ�G�۠^���ZEf.ݡX�[�泷�Xj6OXԖ�"�VO���H�YM�B=��|���f܀EBB�DM���Z�ɕ�{t���Yۙ�2ZR�XH�) �N��̹G2��_���}�ګ�Ħ����O��x:,t���y�[����t0���{�ԝI������Li�;��a��LEh�ŧ�3eQ�1�PK��:�*>l�f��i'�2F�x��JPL��8#;�ם�;�N"���g�!_8iw'+��cNx:��+#�|N��t��~��c���~��#af�Em+�����(=ރu��\�O�r�N�P���w�5ޖ�>s2M�k8��n��&Gt?�_�ӗ+.L�D�h48�"
�S��d�"a60L���x�E���ڟ[�1^��_w���z�	���3�U�#Mރ�݌r=���B��� �a�6�`I_���ǖ�ޫD:�G4���6����Ϟ\M�Imb^}�f�k�#[N*-���">!��X-����	Q@_(f�^˖�f���@ߤ�f�C��e���vШ�˲}|��߅����y�� w�����xt8����~h��M�u]4E~2oH�i�)�@!xM6���>�vS/ܱ��-�Vr����'�1��`ZEu¾����<�J����G<� �5�������&C�06z@��U��dcֺQG����A�%�K���yE��V�<�����ŕ��۩��Ԯ�"aN
�!F�ÂwD�k�t\����y���E����I@�쮙�ܼ|��Fu��Z3�s����p�\px
�=s[�NFt�I6_� ���~%�ݱ'Ƥ�a���-�ɑ��H�Z�@#�B/�W9oq|S��U5��z�-4�����D�+��*��I��H�e��%��q'�_V���H�&d:rx����'� ;�=��t����=8�펵��9wb��)��'�G�f�%މI�`
MU��t�_�r�w�|8dʏ�1�\������ubχ���7�����۫�?W���_S�6w �±��/J,0�t~��K���Lڔah�!P(�UJ���Qbի��}<m�݀ �a|���l���e�'���gwP>
�It(w��
|�l��hn�:3��A�i�sK3�J�8e4�z���5�]��'���M��&�jxo��{o7C�H�F��0�k���d�p\��/쉤Vf�Kf����mF���+��r�9v-j��������1��O���a(��N'D��?�w-�N�q�0c����ӭ'��0�V	�q{@&��E�!I�biv�v5Jd�}�)DmW�$<.Ah�:yJ�����!	��[��D�(�sl�4������=���=��� ������ş]Pd���C�b�t�oo�,��cBd����~T
��?��Vuz!�� 	  v�L�M��x�\��Q�^����8�]�b����A��/0�Mr��d^6������>�z>{�.4g��/���̷�$�̀F<m�-���H�H!; !䈯BD�I�an4��/[?�<dm����";y2���W����o|���ۊ��E�S-�<�Gc^�����7���^���Y%�Z�;,��x��T�.R��{}�o� �߱r�bv����o߾�<�[%���>��"f5`X�o,ȼ��Ͼ�[�b�RQ�)�I|nZ��95�=���@��r1�r97�ec!�����l�"��泷�^u��~{�/_����u����^\pq��X,��J�k�.���A�P�Y�n���N/;�Ч�j�& !�v��5�&�ƞ�S+��ɯ�d������4�ӛ����۞0��z�ː��x8JpY��Z:@GcZ?�;3��?�8ҍ��\5����m�ت��]#
���wp2II�fk,�V���Z����$���N���z�l�>I���&�m�~��W�C�js)��<��p�Xv�vPN3����A��!^⠲j�jR�{�E��)�ݦڍ�q���b��`�����lL8��$OIJPb������mߋi��N��f�Ҥ>T�.)���h�O�xOך2ɑZOƝ�Y�.x������aQ��r�g�~�{��s���r��m�[?;�S��'�L �~]�q��2�N�dT{K����|��C��|�A�EI��[Xl�Y�g��07���ve�a���ַRi�ٙ��rg���A�l��Pju"X���7�3(�(�,���Zl����N��q�r	����VDØ�f���Dި�e@�>�n�2Jy��ܨ�N>T%���������p���f��wW�����V�������d)"C�8Vw���t�^"��U��8jڤ`��r���oدnRX,$) ��lP�q<!:XgX皙���-�JiHk�v.+$�_�e_`FF��h�F$�y�v�%��2�;�Ơ�y �e������w�Nl7v �!�6��p�?
0E�4ʦ�������i?��6�F1����7�u��tȎ�n�l�����a���%!Cg��̓�rǌ���ߎ�J��2f��eÂN4�ų�_�j��}�Ql����rIµaV4b��t\�*�E�,�S ߻,j�Q��p��F�� ^Y-Wk�����ȓ�;Ot5�Q|'g�_��[iq碢$wP%?>4O�	��{qr��&Aȷ@~X���g��4ۮV�a+g�c%�[x�9�����m�əZ��"Ғ��K�Iߪ�B��8g�e�"L��9L�%�5�����l��tla��l[�cn���~P5�s�>�2��:���z��FWU1�7��O�J� �G�
q��8� ���v8�~ G��vw_8��H^G ��Z��)j�jL)���N���O1�\k��d���BH��q[��x�vĴ���y��?���AB�V!W�~낦��<����i�~!�;��/��n+viS�J�?�]_������%ʴT(>k�gr��6�tk�|���mjk���n@#�FZ98�j��f��ARC�W�g��j�"}/�˯~�=:��ƪsX���������Z(�ŇB�6�v�x�O���R� �{����s�<S�X���|L̋�W3H��g�G7E0���1���,}�����RC$��)8�~����2[9�}:�q�?{)HL�K3��b����P�q�`V9��i�
Pk�~#У �p^j֔J�2��])^ʔ)�bB�6�E�e�?��݈�$��0����o���+�s��i۬�Ф��kd��w��x*3lШvZ� ��9�P��1`� *Lk���'���ĉ�� Y>���o&�ed (L&�L	�;f�,���5fUQX)x E�88���Wϳ�Lr��Dj��R�:�r	�@`F�n����`Ţ�s�'QZ���An5�8��ĉm��-P�~�m�W��I�i�h댪D���GV��aW��>ξ{Ň�hf&D�'b�Ĩ���2�n�Kh�;��lT��	b@Zg��,b�,㿅rS�����N>�a�
ET��.���1 �S+�n��w7�j	�F*��԰>����ݹ���$,?N)m�T����Pڕ���q%EAл�/a��m���8���-x��v!! �4߷��؍�N����pr�<�`���iU��fV��;��w~Q� w����F�2�=(k��"��YF�(FtX�vM���_T?�LSC��+?�4�`�yEɇ�>P�Pg��XP�E�70ȳGz�!\�ZQNz�TND2��V��}�,�yoS��m-96��MV˺Z����:[�z�IȀ��xHk=[~��2��7�jUCo��sq�`�Ce@�ؠ�WS��)q�M��������m�(	�(���:������e�~m�[ ������Wg6am�m������ �J��+�����	F���8y-�����K*�N�0���AYs>�'���uO���ߋtdG���>��D���'�_��|f`$�@�S��֊ؿ�t���w�N�&y`2���}��]J#�ǋ�0s��GP<]���p�[�;�F����٣�_�G���I�a�ƅeX���S�!g1��_�����Ƃ'�/6���%�W�>��iʄgMe&ß%��3F-����?~H�vR؆��\}�+a&����χ������%�{��_�Y;�*�b�3�Ri4��/�~m�¿vIM餡�5�t	!7��4oT�u��Չ� l4=Tm#y��^)����Th��K=�<�6id���&�`5�ǰ���;�p��נ��X.������0I΁]�F��˕�ٿ�-W*�?.�_��X�r�I�s�k=SL�C6?�*���@�+?�a�I>.vZ��oza����|��&�ub���|�Gf;Q��;�Mi���\�R���uߖK�a|��W���D�,	��	Ƃ��1�z��׏z:�aJi�۠t���cWB����fɽe��r���deI8���ZyTR�j'u���'�=z�[�Z۞��#y�f�|�U��E5Ɉ��(�rv�]�b����p�����|�t���=���b^3_�.Ϙ���":R��J�I��_�Vw*�x�Ԃ���Yy(�ڦ���^��F�8��$b�QxJD���{[��4��EG�&�!%&?�tr~�b ]��]O�nm�,eH	�
����}à=e9G1ϑגwqu2���倛�A�j���h��E�� ���y��%�� Q�1@�r%UZ���;Q�@����_ooo�?�AҦ      �      x������ � �      �   �   x�U�A�0���y7�R�$�b��ߓ�R�mw�#;SsmE'Ɍm��g��L�ę�w��G^�D+�Y!P�N��!-Q�j83��Z���1��k���R���s��!W��밲?�?�-`���L/s���A�*J�|�m��� ��og�      �      x������ � �      �      x������ � �      �     x�mYɱ$)�+ƀ��}�;���-E֍H6�Iz�����'�(����kFڣ�����-W٣z��;�5��������_&���y���Q\��cG~I�Q��wK{g�x4�f�뽿g�5y`+�-r�,ߤ�� �[�Y��u�֗T��π|[�Yn�U��uw@�س�]� 4�_vP��b����& P�n�|^�>���-,�p,��8$K�8v,���w�q�]� �#��]�v�A�;��G]��N*�4׹/�����|hP
4H��b'tAs/���^7�zcN�@Z�
p��@c��X&�N˵�BkZ�&Dh�O��R�(\���`��z%�o]BU��uQ>E��D*Ĳ��ށ���}Pf|x���q�&���%>*�|���������U��P^1*I����W����MF�q�L�)N�^t�_� ϕG�r�^Rqo�S�7�Tgb|����7sJ�V�Ӎ�:���c�}G���-�&��"�E'/P��
a����,x�u�S�#�+�J$@U,��0�����yIL�@hA&_�Q�)mm�sN���o�fJ�<r�jJgd���2��g�|;�E�����;&���S�ب6��^���-7h���&�aܧ�:���\���'��I:�9;)L�� ȃ	w<��8(��J���/�����<	!H!a'��j9�I�A�j�	yg���y���j�[P��|B(t��*b��;�1^�!��]�WXՆۦ��	:O���h�wA��sb�rܠ��X���wf��B�2e%T��PQ��{����y��
Q�W��ޜV�������0f
6�yQ
�7n|��;h&,_�q!��7b̎�FnL��r!��p��WB@y��ן�u�d4 �f����bUBEG�P*T�K��1�	�gUo����Pբa�[�.��o�r(�M
]�6?8#����B��U��M��d��x�lP@����g�����:y~k�֏��.[y� s�׌��E���d�ZTH���N�ix�0b#_-���K��;�|t�wɇ
�`/jOq�� �����"�y9��C&Њb���42���O7%��y��F'��a�v�Ť��@aK�����v���$�QD�8D�/#Xx3�� *kSylR��\Ӈ�0���uՎ��.e��7��[���o�f�2�-��NT+��8���ar���f�OV��/���կ,/z$��q۫���q��G�w4%rVA�=Y�,d���g��R?H�S�婌.k�KX�Zݎ����� 륣a�-�?3�y�=�Yig���������*/���Tzxy|S>E.�Ѥ:�����u{rA�S+��?��Y�q���Q�^4�q��R�	ԕ@e��2��4�֋����b�ދ�Ⱥ�+� 3z)K��}}L�T��>Qs�H(�%�I�R��<�W��us;�
ƽ��7C68�&����%����%���Z5���ŤY�=����#Q�eV�����>WͶw�����[|PP�~����sѭ:�N��o ��NsJ�og�����~~~��*8�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     