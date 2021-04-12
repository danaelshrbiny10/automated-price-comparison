PGDMP     /                     y            APC    12.4    12.4 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    20639    APC    DATABASE     �   CREATE DATABASE "APC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Arabic_Egypt.1256' LC_CTYPE = 'Arabic_Egypt.1256';
    DROP DATABASE "APC";
                postgres    false            �            1259    21349 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    21347    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    233                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    232            �            1259    21359    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    21357    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    235                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    234            �            1259    21341    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    21339    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    231                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    230            �            1259    21367 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    21377    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    21375    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    239                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    238            �            1259    21365    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    237                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    236            �            1259    21385    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    21383 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    241                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    240            �            1259    20670    category    TABLE     b   CREATE TABLE public.category (
    name character varying(300),
    url character varying(500)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    20676    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100),
    password character varying(300)
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    20682    customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.customer_id_seq;
       public          postgres    false    203                       0    0    customer_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;
          public          postgres    false    204            �            1259    21445    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    21443    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    243                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    242            �            1259    21331    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    21329    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    229                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    228            �            1259    21320    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    21318    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    227                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    226            �            1259    21476    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    20701    img    TABLE     z   CREATE TABLE public.img (
    id integer NOT NULL,
    product_id integer NOT NULL,
    img_path character varying(50)
);
    DROP TABLE public.img;
       public         heap    postgres    false            �            1259    20704 
   img_id_seq    SEQUENCE     �   CREATE SEQUENCE public.img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.img_id_seq;
       public          postgres    false    205                       0    0 
   img_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.img_id_seq OWNED BY public.img.id;
          public          postgres    false    206            �            1259    20706    img_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.img_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.img_product_id_seq;
       public          postgres    false    205                       0    0    img_product_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.img_product_id_seq OWNED BY public.img.product_id;
          public          postgres    false    207            �            1259    21297    jumia    TABLE     �   CREATE TABLE public.jumia (
    id integer NOT NULL,
    sku character varying(520),
    name character varying(300),
    categories character varying(500),
    prices character varying(500),
    img text NOT NULL,
    rating double precision NOT NULL
);
    DROP TABLE public.jumia;
       public         heap    postgres    false            �            1259    21295    jumia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jumia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.jumia_id_seq;
       public          postgres    false    225                       0    0    jumia_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.jumia_id_seq OWNED BY public.jumia.id;
          public          postgres    false    224            �            1259    20722    main_category    TABLE     M   CREATE TABLE public.main_category (
    categories character varying(500)
);
 !   DROP TABLE public.main_category;
       public         heap    postgres    false            �            1259    20725    noon    TABLE     �  CREATE TABLE public.noon (
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
       public         heap    postgres    false            �            1259    20731    noon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.noon_id_seq;
       public          postgres    false    209                       0    0    noon_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.noon_id_seq OWNED BY public.noon.id;
          public          postgres    false    210            �            1259    20733    noon_noon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_noon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.noon_noon_id_seq;
       public          postgres    false    209                       0    0    noon_noon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.noon_noon_id_seq OWNED BY public.noon.noon_id;
          public          postgres    false    211            �            1259    20735    noon_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.noon_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.noon_product_id_seq;
       public          postgres    false    209                       0    0    noon_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.noon_product_id_seq OWNED BY public.noon.product_id;
          public          postgres    false    212            �            1259    20737    notify    TABLE     �   CREATE TABLE public.notify (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    prodect_id integer NOT NULL,
    im_price character varying(100),
    ended boolean
);
    DROP TABLE public.notify;
       public         heap    postgres    false            �            1259    20740    notify_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.notify_customer_id_seq;
       public          postgres    false    213                       0    0    notify_customer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.notify_customer_id_seq OWNED BY public.notify.customer_id;
          public          postgres    false    214            �            1259    20742    notify_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.notify_id_seq;
       public          postgres    false    213                       0    0    notify_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.notify_id_seq OWNED BY public.notify.id;
          public          postgres    false    215            �            1259    20744    notify_prodect_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notify_prodect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.notify_prodect_id_seq;
       public          postgres    false    213                       0    0    notify_prodect_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.notify_prodect_id_seq OWNED BY public.notify.prodect_id;
          public          postgres    false    216            �            1259    20746    price_history    TABLE     H   CREATE TABLE public.price_history (
    prices character varying(50)
);
 !   DROP TABLE public.price_history;
       public         heap    postgres    false            �            1259    20749    product    TABLE     ]  CREATE TABLE public.product (
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
       public         heap    postgres    false            �            1259    20755    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    218                       0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    219            �            1259    20757    souq    TABLE     �  CREATE TABLE public.souq (
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
       public         heap    postgres    false            �            1259    20763    souq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.souq_id_seq;
       public          postgres    false    220                        0    0    souq_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.souq_id_seq OWNED BY public.souq.id;
          public          postgres    false    221            �            1259    20765    souq_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.souq_product_id_seq;
       public          postgres    false    220            !           0    0    souq_product_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.souq_product_id_seq OWNED BY public.souq.product_id;
          public          postgres    false    222            �            1259    20767    souq_souq_id_seq    SEQUENCE     �   CREATE SEQUENCE public.souq_souq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.souq_souq_id_seq;
       public          postgres    false    220            "           0    0    souq_souq_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.souq_souq_id_seq OWNED BY public.souq.souq_id;
          public          postgres    false    223                       2604    21352    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    21362    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    21344    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    21370    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    21380    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239                       2604    21388    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    20792    customer id    DEFAULT     j   ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);
 :   ALTER TABLE public.customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203                       2604    21448    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243                       2604    21334    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229                       2604    21323    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    20795    img id    DEFAULT     `   ALTER TABLE ONLY public.img ALTER COLUMN id SET DEFAULT nextval('public.img_id_seq'::regclass);
 5   ALTER TABLE public.img ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205                       2604    20796    img product_id    DEFAULT     p   ALTER TABLE ONLY public.img ALTER COLUMN product_id SET DEFAULT nextval('public.img_product_id_seq'::regclass);
 =   ALTER TABLE public.img ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    207    205                       2604    21300    jumia id    DEFAULT     d   ALTER TABLE ONLY public.jumia ALTER COLUMN id SET DEFAULT nextval('public.jumia_id_seq'::regclass);
 7   ALTER TABLE public.jumia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    20798    noon id    DEFAULT     b   ALTER TABLE ONLY public.noon ALTER COLUMN id SET DEFAULT nextval('public.noon_id_seq'::regclass);
 6   ALTER TABLE public.noon ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209                       2604    20799    noon product_id    DEFAULT     r   ALTER TABLE ONLY public.noon ALTER COLUMN product_id SET DEFAULT nextval('public.noon_product_id_seq'::regclass);
 >   ALTER TABLE public.noon ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    212    209                       2604    20800    noon noon_id    DEFAULT     l   ALTER TABLE ONLY public.noon ALTER COLUMN noon_id SET DEFAULT nextval('public.noon_noon_id_seq'::regclass);
 ;   ALTER TABLE public.noon ALTER COLUMN noon_id DROP DEFAULT;
       public          postgres    false    211    209                       2604    20801 	   notify id    DEFAULT     f   ALTER TABLE ONLY public.notify ALTER COLUMN id SET DEFAULT nextval('public.notify_id_seq'::regclass);
 8   ALTER TABLE public.notify ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    213                       2604    20802    notify customer_id    DEFAULT     x   ALTER TABLE ONLY public.notify ALTER COLUMN customer_id SET DEFAULT nextval('public.notify_customer_id_seq'::regclass);
 A   ALTER TABLE public.notify ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    214    213            	           2604    20803    notify prodect_id    DEFAULT     v   ALTER TABLE ONLY public.notify ALTER COLUMN prodect_id SET DEFAULT nextval('public.notify_prodect_id_seq'::regclass);
 @   ALTER TABLE public.notify ALTER COLUMN prodect_id DROP DEFAULT;
       public          postgres    false    216    213            
           2604    20804 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218                       2604    20805    souq id    DEFAULT     b   ALTER TABLE ONLY public.souq ALTER COLUMN id SET DEFAULT nextval('public.souq_id_seq'::regclass);
 6   ALTER TABLE public.souq ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220                       2604    20806    souq product_id    DEFAULT     r   ALTER TABLE ONLY public.souq ALTER COLUMN product_id SET DEFAULT nextval('public.souq_product_id_seq'::regclass);
 >   ALTER TABLE public.souq ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    222    220                       2604    20807    souq souq_id    DEFAULT     l   ALTER TABLE ONLY public.souq ALTER COLUMN souq_id SET DEFAULT nextval('public.souq_souq_id_seq'::regclass);
 ;   ALTER TABLE public.souq ALTER COLUMN souq_id DROP DEFAULT;
       public          postgres    false    223    220            �          0    21349 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    233   ��       �          0    21359    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    235   �       �          0    21341    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    231   )�       �          0    21367 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    237   ��                  0    21377    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    239   L�                 0    21385    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    241   i�       �          0    20670    category 
   TABLE DATA           -   COPY public.category (name, url) FROM stdin;
    public          postgres    false    202   ��       �          0    20676    customer 
   TABLE DATA           L   COPY public.customer (id, firstname, lastname, email, password) FROM stdin;
    public          postgres    false    203   �                0    21445    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    243   �      �          0    21331    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    229   �      �          0    21320    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    227   �                0    21476    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    244   U      �          0    20701    img 
   TABLE DATA           7   COPY public.img (id, product_id, img_path) FROM stdin;
    public          postgres    false    205   o      �          0    21297    jumia 
   TABLE DATA           O   COPY public.jumia (id, sku, name, categories, prices, img, rating) FROM stdin;
    public          postgres    false    225   �      �          0    20722    main_category 
   TABLE DATA           3   COPY public.main_category (categories) FROM stdin;
    public          postgres    false    208   �O      �          0    20725    noon 
   TABLE DATA           �   COPY public.noon (id, sku, title, manufacture, category, keywords, ean, active, lastprice, product_id, noon_id, rate) FROM stdin;
    public          postgres    false    209   /P      �          0    20737    notify 
   TABLE DATA           N   COPY public.notify (id, customer_id, prodect_id, im_price, ended) FROM stdin;
    public          postgres    false    213   LP      �          0    20746    price_history 
   TABLE DATA           /   COPY public.price_history (prices) FROM stdin;
    public          postgres    false    217   iP      �          0    20749    product 
   TABLE DATA           x   COPY public.product (id, sku, title, manufacture, description, category, keywords, ean, lowprice, avg_rate) FROM stdin;
    public          postgres    false    218   �V      �          0    20757    souq 
   TABLE DATA           �   COPY public.souq (id, sku, title, manufacture, description, img, category, keywords, ean, active, lastprice, product_id, souq_id, rate) FROM stdin;
    public          postgres    false    220   �V      #           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    232            $           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    234            %           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    230            &           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    238            '           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    236            (           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    240            )           0    0    customer_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customer_id_seq', 1, false);
          public          postgres    false    204            *           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    242            +           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    228            ,           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    226            -           0    0 
   img_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.img_id_seq', 1, false);
          public          postgres    false    206            .           0    0    img_product_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.img_product_id_seq', 1, false);
          public          postgres    false    207            /           0    0    jumia_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.jumia_id_seq', 400, true);
          public          postgres    false    224            0           0    0    noon_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.noon_id_seq', 1, false);
          public          postgres    false    210            1           0    0    noon_noon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.noon_noon_id_seq', 1, false);
          public          postgres    false    211            2           0    0    noon_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.noon_product_id_seq', 1, false);
          public          postgres    false    212            3           0    0    notify_customer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.notify_customer_id_seq', 1, false);
          public          postgres    false    214            4           0    0    notify_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.notify_id_seq', 1, false);
          public          postgres    false    215            5           0    0    notify_prodect_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notify_prodect_id_seq', 1, false);
          public          postgres    false    216            6           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          postgres    false    219            7           0    0    souq_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.souq_id_seq', 1, false);
          public          postgres    false    221            8           0    0    souq_product_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.souq_product_id_seq', 1, false);
          public          postgres    false    222            9           0    0    souq_souq_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.souq_souq_id_seq', 1, false);
          public          postgres    false    223            2           2606    21474    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    233            7           2606    21401 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    235    235            :           2606    21364 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    235            4           2606    21354    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    233            -           2606    21392 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    231    231            /           2606    21346 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    231            B           2606    21382 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    239            E           2606    21416 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    239    239            <           2606    21372    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    237            H           2606    21390 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    241            K           2606    21430 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    241    241            ?           2606    21468     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    237                       2606    20835    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    203            N           2606    21454 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    243            (           2606    21338 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    229    229            *           2606    21336 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    229            &           2606    21328 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    227            R           2606    21483 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    244                       2606    20841    img img_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.img
    ADD CONSTRAINT img_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.img DROP CONSTRAINT img_pkey;
       public            postgres    false    205                       2606    20847    noon noon_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.noon
    ADD CONSTRAINT noon_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.noon DROP CONSTRAINT noon_pkey;
       public            postgres    false    209                        2606    20849    notify notify_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.notify
    ADD CONSTRAINT notify_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.notify DROP CONSTRAINT notify_pkey;
       public            postgres    false    213            "           2606    20851    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    218            $           2606    20853    souq souq_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.souq
    ADD CONSTRAINT souq_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.souq DROP CONSTRAINT souq_pkey;
       public            postgres    false    220            0           1259    21475    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    233            5           1259    21412 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    235            8           1259    21413 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    235            +           1259    21398 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    231            @           1259    21428 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    239            C           1259    21427 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    239            F           1259    21442 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    241            I           1259    21441 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    241            =           1259    21469     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    237            L           1259    21465 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    243            O           1259    21466 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    243            P           1259    21485 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    244            S           1259    21484 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    244            V           2606    21407 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2863    231    235            U           2606    21402 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2868    235    233            T           2606    21393 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    229    231    2858            X           2606    21422 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    239    233    2868            W           2606    21417 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    239    2876    237            Z           2606    21436 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2863    241    231            Y           2606    21431 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    241    2876    237            [           2606    21455 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    243    229    2858            \           2606    21460 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    2876    237    243            �      x������ � �      �      x������ � �      �   f  x�e�[��0E��UdE�G��F��pԌ���:v��}e�"�?K<O�k&���x�n���t?�q��\pi�3�i�+B��n�GC�Vko�3.�6��?�mj�����z��*R+���;Ş��a!��KQ4$9*�*��yZ��&Az���r^@�v�t�TE%d�r-�+ή!��чF�G�huw h����F�Zs�,��i\�[;,_��Z2�ֶ��E���2�U{����|u,�o4�6��+�[=�0V�2y/<3i/�SY/Y	R��wK�O�c8�b�+sE���d\���TW_�@%���Z�GJ��Ͱ��ɸ����&�
�f��+��*�ww%���k�y�A��&�\� �U޹Hm�T��{}�K_�֔�6	 ���T���4*�B��%��n˫<��My}�I򎇜=bR�;W{D%|w��-^�>N�c<ҷgߘ��2<�0����P��u���Uu_�_I�F�m�ۣ5Ȉ80�E�ă�J�d.L�?硏��!�{�9�ⴉ=ߚd���wg�����=sD}���g���m�Z��ҷ�-���ZW�Ē��Q
50j�O�0�ӳ?��r�D��"�u"�PG�G�V���{��� �      �   �   x�3�,H�NI3�/�H425S124300P���HL�0�q�RIJKw��t�*K��)uK��r�r.O�6�Ԏ2
Hͩ(7�0����4202�50�54T02�2��25�3�m�m`�Y������	���^r~.P�S���������!P/W� w�.�             x������ � �            x������ � �      �      x��}YrG��7ka��M�d�{�G�'�K��&�%{?�D �B�H�_���@��-�W�|cʤ����%���w8��{�5�5J҄<���jv� X������l}1_4�ۛ���q6�\ͯov�w�zv��ņ�LQ��t�����r_/��|�.��� ]����������%���7���o���Z�kyU/����d[�"(V� ]���{:qr��,�_���k��3�5�!U�S�/�����^�XѶ^n��k�(Re$�ĢN!�?/���н�ӛz3[׋'/f0U#S@�/@�*frX�Z��k�7�dX�|��=�(�)�U$�6�ÓbR:K���7&��k:A
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
N��n�qPC v,-b�!Q��A�g}/����0ߔ~-ei^��Rӱ@�@?3H�M3j�Y7��o�)�61T�	�;j5�7�i��֝`I����^K0��,e�R������B�Ci�	V�ͭw���7��v���ao�}�=��Qo��� g{@�e���ֲ▙�Y�Sd˖#�5͑�iqn���h��bk؁}�h2�Yit	p�N�y��~���֜�p�X�TLI@�G^Y�����2�=�~�L�^n֟Ughu��yM%/��y���������      �      x������ � �            x������ � �      �   �   x�M�A� E��a�mջ�A�4��
a�ۋ�:�����c�N�<8�$y�l��#�B��M�\�j�p��i�.���P��.[�#\�pV|�����Z�c[;+Sh���5�Ec�����M�e�6m�ڭW\29?S��V�T����'^v��;�X      �   �  x���Kn� @��)��1���,�J�����jn_ .�TW�-��y̼�����R��&v!Pv��j�a����'L^�xz�������>�#����A:}���1�Bo!X9?�D�E3�/���^��y�!������ 7F�S����ԻӃ:}x{��X�Z4���f�n���&=�mǒմx�v�5�0�KJ%^��[93��&JJ$hA��"+j�y1��n�B1"
E6
������紭����B ��=�阊y�[�v�)`W
4
�r?�ݪ]g�@HR!���k*_�ٳN>��|�j41�៾�1�Ui8�)g�rO��~@I�q��I,kۡ�EZQC���F��\}����Y�Qs�ߗ�����(���@f��E���`U�<W��Y/��S���v��x8~ h�Y         
  x���n�0  �g���/�R�Rx+ʪ�@�۲�p��D._�9`H��s����@���Ѵ�2%t�̜QT��*�޹�RB�VCÙ-�$��cX��갖�T�/\�2�s�O�������E~�ֽu������mzO��%���n��O��ELx���T�.�ҷ�ř:������ngJf�����d̾����Ŭ<QO�LM�b����9����ȇ� ܎�(d��BRv�X�_�ʺ. ��
�
�\���-��5��P�_*��U]�      �      x������ � �      �      x��}�vKݚ�
/|���S�<x� Fb o 	-�E4H>�z���K�Y��L
$A�D��x�z-���̌�ƍ�lTB�uH^�)�������Y��g��I�ς���\�~�Z�Q��?����0ju����Ͳ0���]�_Y�y\���r_���������>
�}4���<�%?.�~ެW��?uVk
�ȅ>���pw�ߢh���?��V����������(B�2���yXn�������zX�=�۬??~z�0�V���ݗ��Ag�>'g�>!�=�L�����������V�.6�֋��M�`&s)�r&���9u_��p�5X}�ވm2�e�6��m��`�c�)������O`~~����oP�>m֣j��b��į���A}Fw�㊛��Φ-�Dw�k��u�u����W=���/������~Y�o�_ �B@�+Q��{�Kll�����&
���[?,2y�|o:kd��-�͏@�`�BFZqM��vI81�@��.�|vI��s�.�C�}�����ԛN��b���qfN[���A�3�x{���_��͛?�h�(��G�2��cf[O��Ys�2ǬF|��Lo�ա������|�����`ZT�%8I��;em�5�Z;���zkk�`�i]��B�^�q�9���.>�����fE̡<���hS�	%2~���d�S�����=��0��F�LH_n�W�
���<�fU�p�GR��.��\rml����.	�3G��c��?.n �6+"	e��g������ƅa�|X�J��!T��B/v0��ܬ?:�������ӳ�e�'�~��%�����#����L_��zjy���
<9��pJ����u��|��������_ ���LD�)꾀��֑�o�R5��Ľ�m�v\�V1I���8��΍)�C76K���0c�:���{�km�{�m�f��� ��N����'ο����x;��'��	l`��q�`澂V1X�k��|�FK���@�vN~{�v����m"ڭ�!����+'0X�{?�����4]e����g�{����3��f�ơ2t!�O-����r�\�Z�~�ͳ Jr8�r��pQr(��U�XI�Z�I6�84�\L�<sВ��Y���s��0��d�#a��i��-\�P�����9�%��`������\yD��� ����:�T��N���9!i����K]����EA�dt|�+���� �9��Z����_ǒ
k3u�{�U�ׯ��!K4��]���*6اo�]�Sҷ��[-
���� �d�j@5�^��y����@IbN]LHZ��p���!̦m��O������;�A'm��dm&�9ԉ2���Y��c��s�tƄp�JEB.�#e�6"�JŔI]D�j��VV���c��P_|Z�W߭]1��ga��7����(<q���Lp؃���:�G�cV���*��yI�nV������C;s������0�K���zH�	��9�.Jkr�t�Vs�����z�Y��F0�+Ί�`F�H���(�jԥkhz�� �5P�2e㙔ͼvFM�J}ʆF��t�2t)����k\��P��N)W.s�$�':M���Q~�x{��W���ڇ\��S�� u[��=cb���S���V�rL�˱�&9�2w�A (�TCa�(�FIP|NYZ��N�R>�7_���TD�k�jR�iR�Q���� ��,�L������#�yw�	r�0��5����e��Mݎ6v�4��Αuo�lԒJZ��|�D��Ͳ`�2�y��+�Q��e5�D���Ķ�O��j͡�����
�_L�<�.6���毓)��X�#E�?]�3�+��[�a3����=%n$��I�X��rՉl�'��Wh%6a\��T'I�~ŽΔ&�9zJ#$vz���&��|Q����b��vH�m��O�1Wak��upa+M�{���Heӱ�T��3;[`[2�9e��F�٬}R
Ae�Z�A)yi�y�B�F|>�ICG��C����YogN{a�F&�c��0_ �'�g�K���BK���&��z]�pt�L����{@�7+DG�-y���6u�)��o�Hl�1|n�[�Q�b�^
)�#4Id�$���o�w8�H���pe~ƃ����8)B�
꘼�<<l�	K�a*�ָ����k�h��g���3�����8�=y�{e�stgn<��kq�C-N�yj�Z6n�A�h�h�p&Z3���#åi������w��qUN���9I��9�1��6&g��O��3/�cs���B�%��6z�=�겢�'�������o2`�$"�x/���83���;�[�M'��0m�d
�u�ۙ8�b�8m�pg\��H'CJAa���@��'R��C�s�=kϻz/�~	��v�&BI�|V�e\Gr�z��fõ����u�[D��2<4��������'P���giL��X���ҽ�����/���~�y��:~�7�r��9W.P7k5�'�7X?���g�('��s�5���L7�$q�3}��2 �"�&�q�!2�-�br�47�Tj�����z�� 	p�������w5Ǘ�Je/O}�q!8&�c��<s�N�P��T%y�g��7.�XޯM�w�Z�Ƣp��,o����.�v�����F�qA&�Ԓ��eꡦj�ä����}�YA1S)X�f
S����l�@0�.*��U��Ϗw���d�ED̓�~��x������L�K��q9h���0�����aP���GK$]����C?�s!҂W��=�+�lf�]��`�v"�F Ԧ,�88M���p�4T/���n�g:����.�t�0����s� %e{��6�'1�]q|d�v#B ���H	���t�1]�Z�;�$�U�>������"���4b��`�Y�C�O��0��z=��ΰ��6��'�\�g�ڜ�\�{�,�v��I���0:�0!��g�L7R�Y��-۰��6<�S S��������mn��zv'b��t$�
4V��\ �$!���߫��h��W f��3��K�j�1:���A���_:�M�C��-����Y���o����`i{͜D��m<�s�p4�7(�7�E��,}�[:Vǎ��r�r�|�\ln`��dIlk(�$&q �,���u���7����`,pc���� ʱ5\��o�r:u�,,����<u�p�hĹ">'��(
�o��s3O:�nc�`J�|��1�B�+�	�4Q�P����RN��G�I{���SYY�C�.HN%��T�M\�%5�2v�q/��^� �w�<6�S$0�Xe.y�,���dJژ�Er�{������:�L�A�X4˘�ܓF�)G���F�M<���5��O#��S�z��X��q� �]c���v�|�F��N�?"��@}NI�X�1������J�Jy�*�8ͭ)����@Fqiùi�����6���fe�k^��с@�䬦&�x�`6�Tڵ����IH@/�ǐ�[��7���i7��C#!�Cg���|Zvn�f�Ik�&�鼃�&�Q�X��r����_+6u/#��s�	b$ε�G���i���n�����e�"�~L�7/yVI��x;`�	�g0�޽�i�
�\�w��3����"2����n���N��gx�6H~��G���<HDc埰���.�nW���[5�w�P��σ�n��k���F*qs&E��~�/+l�t3���h����%�*��h���ʬ]�����{��Oi/�J� ���#�T��n�ne���L��w��tZ����h��l[�t�٘�֓�ؗ��������.�w��E��hq�Q*F�y�A��'z�#�4��y�ʺ��h"�1kA=�Lb��\���k�6K9��D
�Xd)%��$�p�qv�o��/��G��~ex��|�G�8Q�Eԫ�u��Y�ɢ0�'\/�g���z��Ysv��\�\�����9i��XV��tPߔUp�[V`\nL���+S�{�l�;U��P[��o񰼹Yl "�,��L���%IN��!!��{��A�\?0*n?}�fR�Z�V    �ʝI���!`l�"��c�Ň��J�������F@��꠆�H��3(/_W)�,��)s���P��̛2�>ݧh�A��S�H�����٫��I����` �����6��/E!$� ؋c4���ՋC�Ѹ�~�&`	���!�h�ia��O�#�ܜލS4�"H��`�K=V�_]f����Xn�:+1�	N��G�$҉B#v�g�<���k<�L��U�JWC�}�ɭ�p+lS㜱�>�d��J���I)��9��ki� W�!�<�I��3t�ټz�F@'((1
�q,S��O8i�_=�|� ���I-�c���~ѬdF�Ã��=6��?d�U\BGR��L�8��2�*B��\�P��oO�d���[��sq���`�LG���B����aoW �M�9."i�4!�+� �i��a��j��Vn���O0U�]���R�`d!���y���t��+�m��^ܜ�,�-A����H�2R�����*��ai��������RE:�ə����GK�l1�w�ɣFKa�2@���U 2��u"�B�����tO�
�~�1]z�,
�������u@,!#�v�(�d������lp�K�A�s�'���`Wс06��W�<v�z9 �yНep�X�?�cQ�Ki�N�=��������/���xf��~���'N�����J\|��DbP�SG1�|gD$���&��e	��`�ѻ
mg���"{���Q��R���G1�g��V?�D�nGc��?އǞ8�|-|�������{p�]��w!�{�����X`���Fg��R?� ���廠3��:�(�2�q[���4J�V���qyx���XQ���80�W�j�:�8.������
��y��'���U]���Y.��Ա�ʥv/��>�K�c�en*�<��h* �#8��?�~��5�*����?ٻ��]��AYm��S�ʵ���j�R8��Pg+���&j�����L��=o�LV�)��-�T:��U�?N�_AS���*q!P�����f�'��o��-�4S���
ˎ�p�>,���H\�P���*�NNX@Wx�a�y銱�!9_���=g�� �%������r����v�	˵��3�&��#���nkr��/y��ps�E\)�Rg(�Ĺ��e��X� ����<��b2��y���m�p_q?1�N��O��u�$c�/������#q���n%�1���r5M����#2�n�`8;,`�6!�n�&�R֜UPX|��� cT#irӀ��̵���H�� :��k�
�D	);)���A�P��l�..�1��N�a�%y{��>u�1A�������Tb$�����-W�q��fN��5�0��Ld؜<A�#�&7e^��v!���Vi��.���Dk�
�������A��t�2�o'��5��
�	ˇcW��m����B�����K�na��1,���]%�U���s���4�
g'��Ư�?D~ӌ�.Wq����Z�v�}t�p�����+�t~�T�ޓ*M�'���t|y�����_�k�S�� M�v�5�� _�9R�{ڧl����<���^q᫳2�Ү2/+my:�"#�E�.&{u1��I7J��ޓ>��O�SEv�c�OvO�����,�)�gu4�g���A �@��`;��H)�K��J����6o�bA��`>��$8C~�V+(��e,ܔ�D�ufڤ/�x�%y�"���W)O@��#x���;�?3���Ɣk���^��K�E������~��AN��ٌ#��z�"��	�$��
7Sф�B�M�<u��x��$Ƴ�Q�L��ܔ_:6�9�~Q�h�����XNOw�٬��G�"s�v�~a��3�ZL�]�W��,�C|4��f����8=֟���ѨsBF%6����)c�B�KGź3���b�2������p��姇��'�"�V�4ju�1W��G]Er+�S�b�c�:�r^L�+K�t�j����hD�ZVE�h����d�!2���M��IK^6vː�ۅA�����v'Z$��|Qg�M8K<�gZgz���] �TX�)���d�H{�S����{�c�;1����Z��j_�#9t��t6��� Qy't�{�L��=�8�~w��e�뽉���GZӀ�K��7M�L���[��Z�a:E�pR���<C�Om�-J�������t�85��̃�Q.���XJ'o*%��#�z���N�G6^��}5V�j;���B{��T�vK�j8���wh�0�weO�qo���f�����9���	�&���QgTJ��o��(��"ĸ�{�n��{H��r��IZ�V��\��_�̾+�j����~v�A.�;*�1CM��e�zt��h�Ǆk0�-��f��qo_���ԝ����#pˎ �¬6y�a%JC�:�IwDYp��Np_B��4ы�Ҍ���d5R�j�_�ɐr�"}�����j�,�[G�$�Ag[�d�oZ@�R�?/y��;�`\Tc)��m@��gA���iK/�M�w�<������_n`�r	9�"���R	��.�ֵ�Pa4�`8[pE��K��$Uz�;�]���h0��>[x2���4��5�vi��у��c�?���_|�+  T��+���`�5��CQ{<>IG��C��2X�"m�Wo��q�PS/��c��=���k�؋�L]I��j�2Ě������j�^��3�1v���QD��ױ���X5�+ª�Pw��>�%��qbO#�R%�t�'q�R��vw�[���, tS)�0��d�H�6���K����f��>#_����۟���}��l��ЮiX�%O�#p���5ʒ)�UNP{R���h Ô-`ٜԑ���B|�k�S���S��9Z*(	_CլZ���%2y,=�[��pFZ�1q��F�Lb���#1"c����I��� u��8��1�o�3�ܕl�ldJ��<��յ|]�>���p�U���`��"�,�ޓ`���5������a���OH���/aU��ڧy��K��i���â}�G�5�bq)g+�T��Z����M�O5�z��	+����3|N�-v������T)̗�u�y����}Z����KцX�A����|�bm��6��懣���q|�s���K<N�C�\⁰����B&h�T�?��}�H�NH��!��fK��Nfh�!�HDXU�j��ڨ�6��i����fu�,�7��/K1�������w������[��UC��P�,�����PY�	�?b7��^?|������[l���ᢜ���^�Y�TϮ&#x��kr{ޢ�T�J8?�Gi���Uܮn�@�͋,ͱ��H)'��f[�=B7�������>j	'@���0�m��0��^Zʞ��9y
'蕯�L��ཐ�2��K^�A�]���Ҝ��cn���ڶ#:G�y�Ѕ$*�l��/%��KuN`C&����_��98=^�ߕ �CvH����|J��b#�I��S�)UAY��j�����Ÿ�������:��S0��xy�34���@7����	�0Tևd(����a,ƭL����U>~���ID�t0�'Hr�~���-��_��4X�Xn�P	Id����-�)4��بq���f���M��R	}��mO+��,7�$&���?u��R��*4��Z�-b����N�T�q1����qW0����(\�}Fl6N<!�U��O�o��:j�W��F�j����B��@;Eg���X��q֨�/`I�Z�҇[�1����B��f��PY��l-K,�y���Buy��0�����PYܟ|ʀW�>��bk�T��Z-����APB/�ٟT��NdB��.n��<�_���@n�Py �/s�����������_ ��ρ���w靉�>�UȠ��1����� �la�U=2�H���pkP+��t�ͥT akJ܉W���H�a���$��v����h�� ?��*�g,=���-�9p�M�"U(�B���.=��HX�t#��^�S�#	��d��O_ي�~ ~6��D�nrk�i:S;���?�    ��kR6������^�E�����O�6R����m���_��n'�f�-$*?�ݞ��l�M�5`�y�����ӄ*�h6Fs]M'��U�AX���S��[���w����1��{�}L���|��8���>B���ь�H��Q��z A6�:\^�JJy�n��a�<}�[������&A�"��YK����F8�a#q �����3�٪V-��;j��q$���a�@��O�|^'.Ys
�܎7��'�s@[z�B<�f�2�Y r�UYT���k ��p�k��N���y�*���¥�
ı3@���m�ȧ72J&�gv%��,��j�[Ϣ7�X�� aX�zan�IB=$��)F5��p�K�B(~�̂	���*Rڑa���{���E����J�K��1�:ll�}��5��|7��ڃ�8m=���*ʮS:X�d�m���
�=�����x�%Xp3�,}[M�S<�c���i��w����w)���vZ��#:�����T�'�X*M+"c >(+~�	f���ѡ��5���wWxY���4���'��a�0@��8ps}Z�m�U#�����_/l7�@��M�S���N�l{���C��zUtfo3�TFvoY�b�x��͸Wo��h����S�/�Ґ�R��ˈR�W�dL�i��x�5��1y0HE��Y	���0)��e���-�|?b�%lw��:�����-�l8�E�oP�(\y�p��ᱳ٤q�|ۭ&Pך��g��D�Wm��a�3#�aSG�����.�|�����PކU{��q?ʸB�f�k�ɞ: .A�yďx�Dx���bW�L����Y�r�i����	��M�F�.�I2#��F椏^	#T���[m8�����J@C���-�T�Ԁa�LEJ���ʁX�}7���nY��6&$�8a�"��F��W��aj/vn�	�`Z53���[@ J0�5 BDX������ť�p)�ۮL#�aSzH����s"Q���r^�=n���m�~P"�N1Y�_à������D���_Bڛ�k����v�$������q`�bED1�,�"Ia��Ԫ�Yf}�+X B���.S�z���,��K���%���-�8�Ҳ��7�]������)jF�ca`��ț�1	���6ܜ�9w��j_[l��Yئ���6yF��~��R��>1���-G������|z�"�J��W�Liʂ�_���Lz^��NR���H�-�5�,�b�=	hvUu�p*,�.z^�k�Y�~^��0��v3�HpE�,�r�Vv��<���>ˏ�X n6\���sU����S>kk�kWY�
'A���6NDq�T�_�Q�����,E^��9Em@	R1�zm�O	��tLy�
Qo�N��;B0#r`�T��2�[�R��>>������ �(pE::��i$�ֵ�>"�����]j����?���e{8�Ж�g-ɹ�:����%%F�*O\��b6�'� y�<"��&�T(9f�֊6E��v=�_��l���$�u|Uf���$��)���bN�����7r��(Zv]aX��:�ZDg,۶���{��&*��N�z
~�qˌ��mu`FD#���(��i��b�46��c3�l_��e���D<׬�F,�N����c�AD����e�;�T2ϭ�H���=إ�;��a�߶����Itp
�v�W���\j��h�n�l>��1�D�,,�NVD�rr��1(��hI�g+��e (8�s,�t��C;�0ܼ`���N�|l��|\� �g0���W:'�7�İ;M��+��Ir2��!G>h(v�t�RѾ�W�C����B2�d���X��`�<u�[u�������ZFq����D
O{�U�U����Wf'���f'�&�u\Y"���N��2� wk�)��v�.�N�cGv�8����K;^�Nlk����GEd{�����)�?���ؾg��Ե�J��u����(��l(�ʇ��%1��^��ԯP}��!p�P��Dܔ$,�*9l�1�F��&l3�]�7�shK.��fE��qf�E�(
E¹���Q�;r��5�T]Ǔ�I��LZ�������q���C�-9獧`���P\	rJQ�O)R�E�x[��f�o�g8���
j,c��^S�K��P������J]�? #� 2A\ƶc7-p��4Y�*m8<mOnBin+0�*mи�g��t�\
7`�+�1 (�B�aP8g��Z�ۻ��D����y*���L�e���`Œn�슥��8@��UI0��t��oA�7J��wU�0�2�G�"�}�s\<}�x(q@lu�zH�J_���h>P�tIj�}g6Ox��o��w���M�,�N ���H�+�$`�D�/���G^Q���`K&Hd��?\%����|Vz�2zW/Nӄ0���
�X���0^e��{Y���(V���p�x�A��	�aS���N%�_�N�����V�ryw�\:�v��t�LFHȈ�`Z�1e	��x�MMu_����.��{��sJꆆ���q�_-��;R`�6�{ƭ�t�m�Y\UZَ�m��P���ݝJB��b� �;�Fs�`��1�gd����1�6I�{ԭu9��K�S��L�t���y���Q�i��7@���5Q��>���(햋�n�}򹬟��0^.N���5�l�bp�h7Z0�~
L�+�8�7���;K��~���ǭn�2�r;�oK uL�4WHs�_�>�̆����@ C�~�@�$y���+K[��/X��ɏ�Фo�	�>�H��xߑ�S��^�\�Y��Ym��ͧ��G�$:�*�G�f{ԷWk��ofr�l��G��� �� EFfVV-0�m�m�bc�[Є���<��"��;:�a`0-��m����6 |<(	��(�F�t�~4�S�Oؘz��|�������铔p��l�0y�.����hzM�c��ɘpou��ӳ<8n�%�r�$�	P<ݣ��͐26p]fu ��B��tZ��Gw��PaQ���^�1����!��Yc���.?m���� \OY�H+&|�F���Q��B��~��"�[+IM�l'�sjd��G��>����'ȁ��܊&���z������l�_�Ȯ#����p�E�Ҹܝ�D\�@�遨��Yo:�i2A������H7���[��eد�����p�ٴWq-Ɯ���|�әc4�J�A�I����s"D�_R*�vn����jm�<�
����ʝ6Ǳ�հsU���G�7^��Lղ�T��k��F?�j�#i8h���;^��g��ǂ\�� ��$��CT	��UK�H�xr����o��eTyR/���T���c�;'M9u;�G��L����B}�Z�~�����S�6�����]��1R*�"e$��R�@�C4b:��&jД�UJjX�h�(�ƫU��#Y$q�ޢU��p���WW�W�mX���dk�U�D;���;�W�Z�d��FC*���?���#��n�����O���E� 5�>C��Վj<���-3v����Z��L8�\����k���Y��>=���c�2�������ֆO��B��E�бn02M�ƿ�Z��v��徲���=�Y�m(9���16�^�i�W����J��o �OJH�g=XZ��ЫWrN[����H:Ί�Z�K����D��
��V��Z?Sp�?Y��[�(���f.�J���+�e�2���Ӷ��}X�����k 0��	4#q�������6����ّ�|��rT]e�����[+�Z�(�ڀܐf���d,Xh�u�=���u���c�`���"�h����4�K��;�1*���k�͌�,B�"`��)2m�:�L����W]]Ů�.�X
�A`ٕJ"�]G���-j!v���S���܊��<IϮZ��X�x��Ιy҇�I�T̼+��P�2��?CI����������}]mN�᠜km���:������5T��s%���0�/�v��9
*.�i�IG@C�:��ow�xڽi�/�D�%�����g �  �����ld4k^�%h	����%Z�=����
D�R�kz�Mo���S�5O��������������i^�u���v��F5]��4<��k�c<Ã�^�~�@��oRcV�k�R�a�v���r���O���<�yD��s;>�� ��m=}O�=`a�L��&я�E=�xYifǘޓ;� Q��bsA@�2(v�N�Nz�b.��v�uJߘ���^<:��|���i�S������)&��^j;gP�Ku5n�#S�퐏s�;���EH1?R�4���]�[ײ]�w�_��SS�B54�]A�Ws������]z\�p���ܼ;E"��-�h�Q:P�h��!�x[�ܕ$ӕ��4sK��@1��F8%��Ÿv\#d��z[���2������L���5o�D1l��!���1��2�CK�xH6�p�H��IlѶ#4m5��G��4GxZG{7��h0��|�QN`	�O{u�z������+"��b�L&O�������׽�Vl��Av ���A�lҜ��L��h�o�[� [J��T	��T�Y ���^וֹ���'"�K>��z�WOEF̓&l8�T�m��v�s�* w�G4x��"?N�+�{��Y�}���Sb��@q�n>�v�.�&�!�/X��u��ʦ[˚�ϧ+΃��&��"\2@�4�-��8�+"�N�m:K�[f�?*��4 8FF&w��1�������'r��      �   �   x�U�A�0���y7�R�$�b��ߓ�R�mw�#;SsmE'Ɍm��g��L�ę�w��G^�D+�Y!P�N��!-Q�j83��Z���1��k���R���s��!W��밲?�?�-`���L/s���A�*J�|�m��� ��og�      �      x������ � �      �      x������ � �      �     x�mYɱ$)�+ƀ��}�;���-E֍H6�Iz�����'�(����kFڣ�����-W٣z��;�5��������_&���y���Q\��cG~I�Q��wK{g�x4�f�뽿g�5y`+�-r�,ߤ�� �[�Y��u�֗T��π|[�Yn�U��uw@�س�]� 4�_vP��b����& P�n�|^�>���-,�p,��8$K�8v,���w�q�]� �#��]�v�A�;��G]��N*�4׹/�����|hP
4H��b'tAs/���^7�zcN�@Z�
p��@c��X&�N˵�BkZ�&Dh�O��R�(\���`��z%�o]BU��uQ>E��D*Ĳ��ށ���}Pf|x���q�&���%>*�|���������U��P^1*I����W����MF�q�L�)N�^t�_� ϕG�r�^Rqo�S�7�Tgb|����7sJ�V�Ӎ�:���c�}G���-�&��"�E'/P��
a����,x�u�S�#�+�J$@U,��0�����yIL�@hA&_�Q�)mm�sN���o�fJ�<r�jJgd���2��g�|;�E�����;&���S�ب6��^���-7h���&�aܧ�:���\���'��I:�9;)L�� ȃ	w<��8(��J���/�����<	!H!a'��j9�I�A�j�	yg���y���j�[P��|B(t��*b��;�1^�!��]�WXՆۦ��	:O���h�wA��sb�rܠ��X���wf��B�2e%T��PQ��{����y��
Q�W��ޜV�������0f
6�yQ
�7n|��;h&,_�q!��7b̎�FnL��r!��p��WB@y��ן�u�d4 �f����bUBEG�P*T�K��1�	�gUo����Pբa�[�.��o�r(�M
]�6?8#����B��U��M��d��x�lP@����g�����:y~k�֏��.[y� s�׌��E���d�ZTH���N�ix�0b#_-���K��;�|t�wɇ
�`/jOq�� �����"�y9��C&Њb���42���O7%��y��F'��a�v�Ť��@aK�����v���$�QD�8D�/#Xx3�� *kSylR��\Ӈ�0���uՎ��.e��7��[���o�f�2�-��NT+��8���ar���f�OV��/���կ,/z$��q۫���q��G�w4%rVA�=Y�,d���g��R?H�S�婌.k�KX�Zݎ����� 륣a�-�?3�y�=�Yig���������*/���Tzxy|S>E.�Ѥ:�����u{rA�S+��?��Y�q���Q�^4�q��R�	ԕ@e��2��4�֋����b�ދ�Ⱥ�+� 3z)K��}}L�T��>Qs�H(�%�I�R��<�W��us;�
ƽ��7C68�&����%����%���Z5���ŤY�=����#Q�eV�����>WͶw�����[|PP�~����sѭ:�N��o ��NsJ�og�����~~~��*8�      �      x������ � �      �      x������ � �     