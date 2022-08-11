PGDMP                         z            administration    13.3    14.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    74020    administration    DATABASE     l   CREATE DATABASE administration WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE administration;
                postgres    false            �            1259    115081    actividad_dias_festivos    TABLE     �   CREATE TABLE public.actividad_dias_festivos (
    id integer NOT NULL,
    actividad_id integer,
    dias_festivos_id integer
);
 +   DROP TABLE public.actividad_dias_festivos;
       public         heap    postgres    false            �            1259    115079    actividad_dias_festivos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actividad_dias_festivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.actividad_dias_festivos_id_seq;
       public          postgres    false    235            �           0    0    actividad_dias_festivos_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.actividad_dias_festivos_id_seq OWNED BY public.actividad_dias_festivos.id;
          public          postgres    false    234            �            1259    114993    actividades    TABLE       CREATE TABLE public.actividades (
    actividad_id integer NOT NULL,
    nombre character varying,
    categoria character varying,
    created timestamp without time zone,
    updated timestamp without time zone,
    enabled boolean,
    archivate boolean,
    categoria_id integer
);
    DROP TABLE public.actividades;
       public         heap    postgres    false            �            1259    114991    actividades_actividad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actividades_actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.actividades_actividad_id_seq;
       public          postgres    false    221            �           0    0    actividades_actividad_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.actividades_actividad_id_seq OWNED BY public.actividades.actividad_id;
          public          postgres    false    220            �            1259    115010    categoria_actividad    TABLE     s  CREATE TABLE public.categoria_actividad (
    categoria_actividad_id integer NOT NULL,
    nombre character varying(200),
    secuencia integer NOT NULL,
    color character varying(200),
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    enabled boolean NOT NULL,
    archived boolean NOT NULL,
    rol_id integer
);
 '   DROP TABLE public.categoria_actividad;
       public         heap    postgres    false            �            1259    115008 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_actividad_categoria_actividad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.categoria_actividad_categoria_actividad_id_seq;
       public          postgres    false    223            �           0    0 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.categoria_actividad_categoria_actividad_id_seq OWNED BY public.categoria_actividad.categoria_actividad_id;
          public          postgres    false    222            �            1259    115097    categoria_actividades    TABLE     {   CREATE TABLE public.categoria_actividades (
    id integer NOT NULL,
    categoria_id integer,
    actividad_id integer
);
 )   DROP TABLE public.categoria_actividades;
       public         heap    postgres    false            �            1259    115095    categoria_actividades_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categoria_actividades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categoria_actividades_id_seq;
       public          postgres    false    237            �           0    0    categoria_actividades_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categoria_actividades_id_seq OWNED BY public.categoria_actividades.id;
          public          postgres    false    236            �            1259    106821 	   comentary    TABLE     W   CREATE TABLE public.comentary (
    id integer NOT NULL,
    name character varying
);
    DROP TABLE public.comentary;
       public         heap    postgres    false            �            1259    106819    comentary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comentary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.comentary_id_seq;
       public          postgres    false    202            �           0    0    comentary_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.comentary_id_seq OWNED BY public.comentary.id;
          public          postgres    false    201            �            1259    115018    dias_festivos    TABLE     $  CREATE TABLE public.dias_festivos (
    id_dia_festivo integer NOT NULL,
    nombre_dia_festivo character varying,
    fecha_dia_festivo date,
    created timestamp without time zone,
    updated timestamp without time zone,
    archived boolean,
    enabled boolean,
    fk_roles integer
);
 !   DROP TABLE public.dias_festivos;
       public         heap    postgres    false            �            1259    115045    dias_festivos_categorias    TABLE     �   CREATE TABLE public.dias_festivos_categorias (
    id integer NOT NULL,
    dia_festivo_id integer,
    categoria_id integer
);
 ,   DROP TABLE public.dias_festivos_categorias;
       public         heap    postgres    false            �            1259    115043    dias_festivos_categorias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dias_festivos_categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.dias_festivos_categorias_id_seq;
       public          postgres    false    231            �           0    0    dias_festivos_categorias_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.dias_festivos_categorias_id_seq OWNED BY public.dias_festivos_categorias.id;
          public          postgres    false    230            �            1259    115016     dias_festivos_id_dia_festivo_seq    SEQUENCE     �   CREATE SEQUENCE public.dias_festivos_id_dia_festivo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.dias_festivos_id_dia_festivo_seq;
       public          postgres    false    225            �           0    0     dias_festivos_id_dia_festivo_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.dias_festivos_id_dia_festivo_seq OWNED BY public.dias_festivos.id_dia_festivo;
          public          postgres    false    224            �            1259    106924    permission_comentary    TABLE     {   CREATE TABLE public.permission_comentary (
    id integer NOT NULL,
    permission_id integer,
    comentary_id integer
);
 (   DROP TABLE public.permission_comentary;
       public         heap    postgres    false            �            1259    106922    permission_comentary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permission_comentary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.permission_comentary_id_seq;
       public          postgres    false    207            �           0    0    permission_comentary_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.permission_comentary_id_seq OWNED BY public.permission_comentary.id;
          public          postgres    false    206            �            1259    115029    personas    TABLE     �   CREATE TABLE public.personas (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    enabled boolean NOT NULL
);
    DROP TABLE public.personas;
       public         heap    postgres    false            �            1259    115027    personas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.personas_id_seq;
       public          postgres    false    227            �           0    0    personas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.personas_id_seq OWNED BY public.personas.id;
          public          postgres    false    226            �            1259    106991    persons    TABLE     �   CREATE TABLE public.persons (
    id integer NOT NULL,
    name character varying,
    dni character varying,
    enabled boolean
);
    DROP TABLE public.persons;
       public         heap    postgres    false            �            1259    106989    persons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.persons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.persons_id_seq;
       public          postgres    false    213            �           0    0    persons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.persons_id_seq OWNED BY public.persons.id;
          public          postgres    false    212            �            1259    106901 !   registration_permission_comentary    TABLE     �   CREATE TABLE public.registration_permission_comentary (
    id integer NOT NULL,
    registro_id integer,
    comentary_id integer,
    comentary character varying
);
 5   DROP TABLE public.registration_permission_comentary;
       public         heap    postgres    false            �            1259    106913    registration_permissions    TABLE     �  CREATE TABLE public.registration_permissions (
    permission_id integer NOT NULL,
    name_permission integer,
    description character varying,
    date_since timestamp without time zone,
    date_until timestamp without time zone,
    created timestamp without time zone,
    updated timestamp without time zone,
    enabled boolean,
    archived boolean,
    tipo_permiso_id integer
);
 ,   DROP TABLE public.registration_permissions;
       public         heap    postgres    false            �            1259    106911 0   registration_permissions_type_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registration_permissions_type_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.registration_permissions_type_permissions_id_seq;
       public          postgres    false    205            �           0    0 0   registration_permissions_type_permissions_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.registration_permissions_type_permissions_id_seq OWNED BY public.registration_permissions.permission_id;
          public          postgres    false    204            �            1259    98596 	   registros    TABLE       CREATE TABLE public.registros (
    registro_id integer NOT NULL,
    usuario character varying,
    comentario character varying,
    created timestamp without time zone,
    activity integer,
    enabled boolean,
    updated timestamp without time zone,
    archived boolean
);
    DROP TABLE public.registros;
       public         heap    postgres    false            �            1259    115063 
   rol_person    TABLE     g   CREATE TABLE public.rol_person (
    id integer NOT NULL,
    rol_id integer,
    person_id integer
);
    DROP TABLE public.rol_person;
       public         heap    postgres    false            �            1259    115061    rol_person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rol_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.rol_person_id_seq;
       public          postgres    false    233            �           0    0    rol_person_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.rol_person_id_seq OWNED BY public.rol_person.id;
          public          postgres    false    232            �            1259    115037    roles    TABLE     F  CREATE TABLE public.roles (
    rol_id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    admin boolean NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    enable boolean NOT NULL,
    archived boolean NOT NULL,
    categoria_actividad_id integer
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    115035    roles_rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.roles_rol_id_seq;
       public          postgres    false    229            �           0    0    roles_rol_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.roles_rol_id_seq OWNED BY public.roles.rol_id;
          public          postgres    false    228            �            1259    107051    tipos_permiso    TABLE     �   CREATE TABLE public.tipos_permiso (
    tipos_permiso_id integer NOT NULL,
    name character varying,
    date date,
    created timestamp without time zone,
    updated timestamp with time zone,
    enabled boolean,
    username_id integer
);
 !   DROP TABLE public.tipos_permiso;
       public         heap    postgres    false            �            1259    107049 "   tipos_permiso_tipos_permiso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_permiso_tipos_permiso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipos_permiso_tipos_permiso_id_seq;
       public          postgres    false    217            �           0    0 "   tipos_permiso_tipos_permiso_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipos_permiso_tipos_permiso_id_seq OWNED BY public.tipos_permiso.tipos_permiso_id;
          public          postgres    false    216            �            1259    106952    tipos_permiso_usuarios    TABLE     �   CREATE TABLE public.tipos_permiso_usuarios (
    tipos_permiso_usuarios_id integer NOT NULL,
    username_id integer,
    tipos_permiso_id integer
);
 *   DROP TABLE public.tipos_permiso_usuarios;
       public         heap    postgres    false            �            1259    106950 4   tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq;
       public          postgres    false    209            �           0    0 4   tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq OWNED BY public.tipos_permiso_usuarios.tipos_permiso_usuarios_id;
          public          postgres    false    208            �            1259    107068    tipos_permission    TABLE     �   CREATE TABLE public.tipos_permission (
    id integer NOT NULL,
    tipos_permiso_id integer,
    type_permission_id integer
);
 $   DROP TABLE public.tipos_permission;
       public         heap    postgres    false            �            1259    107066    tipos_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tipos_permission_id_seq;
       public          postgres    false    219            �           0    0    tipos_permission_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tipos_permission_id_seq OWNED BY public.tipos_permission.id;
          public          postgres    false    218            �            1259    106970    username_permission    TABLE     �   CREATE TABLE public.username_permission (
    id integer NOT NULL,
    username_id integer,
    type_permission_id integer,
    description character varying
);
 '   DROP TABLE public.username_permission;
       public         heap    postgres    false            �            1259    106968    username_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.username_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.username_permission_id_seq;
       public          postgres    false    211            �           0    0    username_permission_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.username_permission_id_seq OWNED BY public.username_permission.id;
          public          postgres    false    210            �            1259    107030 	   usernames    TABLE       CREATE TABLE public.usernames (
    username_id integer NOT NULL,
    name character varying,
    email character varying,
    password character varying,
    created time without time zone,
    updated time without time zone,
    enabled boolean,
    person_id integer
);
    DROP TABLE public.usernames;
       public         heap    postgres    false            �            1259    107028    usernames_username_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usernames_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.usernames_username_id_seq;
       public          postgres    false    215            �           0    0    usernames_username_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.usernames_username_id_seq OWNED BY public.usernames.username_id;
          public          postgres    false    214            �           2604    115084    actividad_dias_festivos id    DEFAULT     �   ALTER TABLE ONLY public.actividad_dias_festivos ALTER COLUMN id SET DEFAULT nextval('public.actividad_dias_festivos_id_seq'::regclass);
 I   ALTER TABLE public.actividad_dias_festivos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    114996    actividades actividad_id    DEFAULT     �   ALTER TABLE ONLY public.actividades ALTER COLUMN actividad_id SET DEFAULT nextval('public.actividades_actividad_id_seq'::regclass);
 G   ALTER TABLE public.actividades ALTER COLUMN actividad_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    115013 *   categoria_actividad categoria_actividad_id    DEFAULT     �   ALTER TABLE ONLY public.categoria_actividad ALTER COLUMN categoria_actividad_id SET DEFAULT nextval('public.categoria_actividad_categoria_actividad_id_seq'::regclass);
 Y   ALTER TABLE public.categoria_actividad ALTER COLUMN categoria_actividad_id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    115100    categoria_actividades id    DEFAULT     �   ALTER TABLE ONLY public.categoria_actividades ALTER COLUMN id SET DEFAULT nextval('public.categoria_actividades_id_seq'::regclass);
 G   ALTER TABLE public.categoria_actividades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    106824    comentary id    DEFAULT     l   ALTER TABLE ONLY public.comentary ALTER COLUMN id SET DEFAULT nextval('public.comentary_id_seq'::regclass);
 ;   ALTER TABLE public.comentary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �           2604    115021    dias_festivos id_dia_festivo    DEFAULT     �   ALTER TABLE ONLY public.dias_festivos ALTER COLUMN id_dia_festivo SET DEFAULT nextval('public.dias_festivos_id_dia_festivo_seq'::regclass);
 K   ALTER TABLE public.dias_festivos ALTER COLUMN id_dia_festivo DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    115048    dias_festivos_categorias id    DEFAULT     �   ALTER TABLE ONLY public.dias_festivos_categorias ALTER COLUMN id SET DEFAULT nextval('public.dias_festivos_categorias_id_seq'::regclass);
 J   ALTER TABLE public.dias_festivos_categorias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    106927    permission_comentary id    DEFAULT     �   ALTER TABLE ONLY public.permission_comentary ALTER COLUMN id SET DEFAULT nextval('public.permission_comentary_id_seq'::regclass);
 F   ALTER TABLE public.permission_comentary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    115032    personas id    DEFAULT     j   ALTER TABLE ONLY public.personas ALTER COLUMN id SET DEFAULT nextval('public.personas_id_seq'::regclass);
 :   ALTER TABLE public.personas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    106994 
   persons id    DEFAULT     h   ALTER TABLE ONLY public.persons ALTER COLUMN id SET DEFAULT nextval('public.persons_id_seq'::regclass);
 9   ALTER TABLE public.persons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �           2604    106916 &   registration_permissions permission_id    DEFAULT     �   ALTER TABLE ONLY public.registration_permissions ALTER COLUMN permission_id SET DEFAULT nextval('public.registration_permissions_type_permissions_id_seq'::regclass);
 U   ALTER TABLE public.registration_permissions ALTER COLUMN permission_id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    115066    rol_person id    DEFAULT     n   ALTER TABLE ONLY public.rol_person ALTER COLUMN id SET DEFAULT nextval('public.rol_person_id_seq'::regclass);
 <   ALTER TABLE public.rol_person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    115040    roles rol_id    DEFAULT     l   ALTER TABLE ONLY public.roles ALTER COLUMN rol_id SET DEFAULT nextval('public.roles_rol_id_seq'::regclass);
 ;   ALTER TABLE public.roles ALTER COLUMN rol_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    107054    tipos_permiso tipos_permiso_id    DEFAULT     �   ALTER TABLE ONLY public.tipos_permiso ALTER COLUMN tipos_permiso_id SET DEFAULT nextval('public.tipos_permiso_tipos_permiso_id_seq'::regclass);
 M   ALTER TABLE public.tipos_permiso ALTER COLUMN tipos_permiso_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    106955 0   tipos_permiso_usuarios tipos_permiso_usuarios_id    DEFAULT     �   ALTER TABLE ONLY public.tipos_permiso_usuarios ALTER COLUMN tipos_permiso_usuarios_id SET DEFAULT nextval('public.tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq'::regclass);
 _   ALTER TABLE public.tipos_permiso_usuarios ALTER COLUMN tipos_permiso_usuarios_id DROP DEFAULT;
       public          postgres    false    209    208    209            �           2604    107071    tipos_permission id    DEFAULT     z   ALTER TABLE ONLY public.tipos_permission ALTER COLUMN id SET DEFAULT nextval('public.tipos_permission_id_seq'::regclass);
 B   ALTER TABLE public.tipos_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    106973    username_permission id    DEFAULT     �   ALTER TABLE ONLY public.username_permission ALTER COLUMN id SET DEFAULT nextval('public.username_permission_id_seq'::regclass);
 E   ALTER TABLE public.username_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    107033    usernames username_id    DEFAULT     ~   ALTER TABLE ONLY public.usernames ALTER COLUMN username_id SET DEFAULT nextval('public.usernames_username_id_seq'::regclass);
 D   ALTER TABLE public.usernames ALTER COLUMN username_id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    115081    actividad_dias_festivos 
   TABLE DATA           U   COPY public.actividad_dias_festivos (id, actividad_id, dias_festivos_id) FROM stdin;
    public          postgres    false    235    �                 0    114993    actividades 
   TABLE DATA           z   COPY public.actividades (actividad_id, nombre, categoria, created, updated, enabled, archivate, categoria_id) FROM stdin;
    public          postgres    false    221   =�       �          0    115010    categoria_actividad 
   TABLE DATA           �   COPY public.categoria_actividad (categoria_actividad_id, nombre, secuencia, color, created, updated, enabled, archived, rol_id) FROM stdin;
    public          postgres    false    223   Z�       �          0    115097    categoria_actividades 
   TABLE DATA           O   COPY public.categoria_actividades (id, categoria_id, actividad_id) FROM stdin;
    public          postgres    false    237   w�       l          0    106821 	   comentary 
   TABLE DATA           -   COPY public.comentary (id, name) FROM stdin;
    public          postgres    false    202   ��       �          0    115018    dias_festivos 
   TABLE DATA           �   COPY public.dias_festivos (id_dia_festivo, nombre_dia_festivo, fecha_dia_festivo, created, updated, archived, enabled, fk_roles) FROM stdin;
    public          postgres    false    225   ��       �          0    115045    dias_festivos_categorias 
   TABLE DATA           T   COPY public.dias_festivos_categorias (id, dia_festivo_id, categoria_id) FROM stdin;
    public          postgres    false    231   ��       q          0    106924    permission_comentary 
   TABLE DATA           O   COPY public.permission_comentary (id, permission_id, comentary_id) FROM stdin;
    public          postgres    false    207   ��       �          0    115029    personas 
   TABLE DATA           ?   COPY public.personas (id, name, lastname, enabled) FROM stdin;
    public          postgres    false    227   �       w          0    106991    persons 
   TABLE DATA           9   COPY public.persons (id, name, dni, enabled) FROM stdin;
    public          postgres    false    213   3�       m          0    106901 !   registration_permission_comentary 
   TABLE DATA           e   COPY public.registration_permission_comentary (id, registro_id, comentary_id, comentary) FROM stdin;
    public          postgres    false    203   ��       o          0    106913    registration_permissions 
   TABLE DATA           �   COPY public.registration_permissions (permission_id, name_permission, description, date_since, date_until, created, updated, enabled, archived, tipo_permiso_id) FROM stdin;
    public          postgres    false    205   ��       j          0    98596 	   registros 
   TABLE DATA           t   COPY public.registros (registro_id, usuario, comentario, created, activity, enabled, updated, archived) FROM stdin;
    public          postgres    false    200   ��       �          0    115063 
   rol_person 
   TABLE DATA           ;   COPY public.rol_person (id, rol_id, person_id) FROM stdin;
    public          postgres    false    233   ��       �          0    115037    roles 
   TABLE DATA           r   COPY public.roles (rol_id, nombre, admin, created, updated, enable, archived, categoria_actividad_id) FROM stdin;
    public          postgres    false    229   ��       {          0    107051    tipos_permiso 
   TABLE DATA           m   COPY public.tipos_permiso (tipos_permiso_id, name, date, created, updated, enabled, username_id) FROM stdin;
    public          postgres    false    217   ��       s          0    106952    tipos_permiso_usuarios 
   TABLE DATA           j   COPY public.tipos_permiso_usuarios (tipos_permiso_usuarios_id, username_id, tipos_permiso_id) FROM stdin;
    public          postgres    false    209   ��       }          0    107068    tipos_permission 
   TABLE DATA           T   COPY public.tipos_permission (id, tipos_permiso_id, type_permission_id) FROM stdin;
    public          postgres    false    219   ��       u          0    106970    username_permission 
   TABLE DATA           _   COPY public.username_permission (id, username_id, type_permission_id, description) FROM stdin;
    public          postgres    false    211   6�       y          0    107030 	   usernames 
   TABLE DATA           m   COPY public.usernames (username_id, name, email, password, created, updated, enabled, person_id) FROM stdin;
    public          postgres    false    215   m�       �           0    0    actividad_dias_festivos_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.actividad_dias_festivos_id_seq', 1, false);
          public          postgres    false    234            �           0    0    actividades_actividad_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.actividades_actividad_id_seq', 1, false);
          public          postgres    false    220            �           0    0 .   categoria_actividad_categoria_actividad_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.categoria_actividad_categoria_actividad_id_seq', 1, false);
          public          postgres    false    222            �           0    0    categoria_actividades_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.categoria_actividades_id_seq', 1, false);
          public          postgres    false    236            �           0    0    comentary_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.comentary_id_seq', 1, false);
          public          postgres    false    201            �           0    0    dias_festivos_categorias_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dias_festivos_categorias_id_seq', 1, false);
          public          postgres    false    230            �           0    0     dias_festivos_id_dia_festivo_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.dias_festivos_id_dia_festivo_seq', 1, false);
          public          postgres    false    224            �           0    0    permission_comentary_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.permission_comentary_id_seq', 1, false);
          public          postgres    false    206            �           0    0    personas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.personas_id_seq', 1, false);
          public          postgres    false    226            �           0    0    persons_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.persons_id_seq', 5, true);
          public          postgres    false    212            �           0    0 0   registration_permissions_type_permissions_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.registration_permissions_type_permissions_id_seq', 8, true);
          public          postgres    false    204            �           0    0    rol_person_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.rol_person_id_seq', 1, false);
          public          postgres    false    232            �           0    0    roles_rol_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.roles_rol_id_seq', 1, false);
          public          postgres    false    228            �           0    0 "   tipos_permiso_tipos_permiso_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipos_permiso_tipos_permiso_id_seq', 10, true);
          public          postgres    false    216            �           0    0 4   tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.tipos_permiso_usuarios_tipos_permiso_usuarios_id_seq', 1, false);
          public          postgres    false    208            �           0    0    tipos_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tipos_permission_id_seq', 10, true);
          public          postgres    false    218            �           0    0    username_permission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.username_permission_id_seq', 2, true);
          public          postgres    false    210            �           0    0    usernames_username_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.usernames_username_id_seq', 6, true);
          public          postgres    false    214            �           2606    115001    actividades actividades_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT actividades_pkey PRIMARY KEY (actividad_id);
 F   ALTER TABLE ONLY public.actividades DROP CONSTRAINT actividades_pkey;
       public            postgres    false    221            �           2606    115015 ,   categoria_actividad categoria_actividad_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.categoria_actividad
    ADD CONSTRAINT categoria_actividad_pkey PRIMARY KEY (categoria_actividad_id);
 V   ALTER TABLE ONLY public.categoria_actividad DROP CONSTRAINT categoria_actividad_pkey;
       public            postgres    false    223            �           2606    115102 0   categoria_actividades categoria_actividades_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT categoria_actividades_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT categoria_actividades_pkey;
       public            postgres    false    237            �           2606    106829    comentary comentary_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.comentary
    ADD CONSTRAINT comentary_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.comentary DROP CONSTRAINT comentary_pkey;
       public            postgres    false    202            �           2606    115050 6   dias_festivos_categorias dias_festivos_categorias_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT dias_festivos_categorias_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT dias_festivos_categorias_pkey;
       public            postgres    false    231            �           2606    115026     dias_festivos dias_festivos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.dias_festivos
    ADD CONSTRAINT dias_festivos_pkey PRIMARY KEY (id_dia_festivo);
 J   ALTER TABLE ONLY public.dias_festivos DROP CONSTRAINT dias_festivos_pkey;
       public            postgres    false    225            �           2606    106929 .   permission_comentary permission_comentary_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.permission_comentary
    ADD CONSTRAINT permission_comentary_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.permission_comentary DROP CONSTRAINT permission_comentary_pkey;
       public            postgres    false    207            �           2606    115034    personas personas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    227            �           2606    106999    persons persons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persons DROP CONSTRAINT persons_pkey;
       public            postgres    false    213            �           2606    106908 H   registration_permission_comentary registration_permission_comentary_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.registration_permission_comentary
    ADD CONSTRAINT registration_permission_comentary_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.registration_permission_comentary DROP CONSTRAINT registration_permission_comentary_pkey;
       public            postgres    false    203            �           2606    106921 6   registration_permissions registration_permissions_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.registration_permissions
    ADD CONSTRAINT registration_permissions_pkey PRIMARY KEY (permission_id);
 `   ALTER TABLE ONLY public.registration_permissions DROP CONSTRAINT registration_permissions_pkey;
       public            postgres    false    205            �           2606    98603    registros registros_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.registros
    ADD CONSTRAINT registros_pkey PRIMARY KEY (registro_id);
 B   ALTER TABLE ONLY public.registros DROP CONSTRAINT registros_pkey;
       public            postgres    false    200            �           2606    115042    roles rol_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rol_id);
 8   ALTER TABLE ONLY public.roles DROP CONSTRAINT rol_pkey;
       public            postgres    false    229            �           2606    115068    rol_person role_person_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT role_person_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT role_person_pkey;
       public            postgres    false    233            �           2606    107059     tipos_permiso tipos_permiso_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tipos_permiso
    ADD CONSTRAINT tipos_permiso_pkey PRIMARY KEY (tipos_permiso_id);
 J   ALTER TABLE ONLY public.tipos_permiso DROP CONSTRAINT tipos_permiso_pkey;
       public            postgres    false    217            �           2606    106957 2   tipos_permiso_usuarios tipos_permiso_usuarios_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tipos_permiso_usuarios
    ADD CONSTRAINT tipos_permiso_usuarios_pkey PRIMARY KEY (tipos_permiso_usuarios_id);
 \   ALTER TABLE ONLY public.tipos_permiso_usuarios DROP CONSTRAINT tipos_permiso_usuarios_pkey;
       public            postgres    false    209            �           2606    107073 &   tipos_permission tipos_permission_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipos_permission
    ADD CONSTRAINT tipos_permission_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tipos_permission DROP CONSTRAINT tipos_permission_pkey;
       public            postgres    false    219            �           2606    106978 ,   username_permission username_permission_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.username_permission
    ADD CONSTRAINT username_permission_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.username_permission DROP CONSTRAINT username_permission_pkey;
       public            postgres    false    211            �           2606    107038    usernames usernames_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (username_id);
 B   ALTER TABLE ONLY public.usernames DROP CONSTRAINT usernames_pkey;
       public            postgres    false    215            �           2606    115103 "   categoria_actividades fk_actividad    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT fk_actividad FOREIGN KEY (actividad_id) REFERENCES public.actividades(actividad_id);
 L   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT fk_actividad;
       public          postgres    false    237    3011    221            �           2606    115085 &   actividad_dias_festivos fk_actividades    FK CONSTRAINT     �   ALTER TABLE ONLY public.actividad_dias_festivos
    ADD CONSTRAINT fk_actividades FOREIGN KEY (actividad_id) REFERENCES public.actividades(actividad_id);
 P   ALTER TABLE ONLY public.actividad_dias_festivos DROP CONSTRAINT fk_actividades;
       public          postgres    false    3011    235    221            �           2606    115113 $   actividades fk_actividades_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.actividades
    ADD CONSTRAINT fk_actividades_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 N   ALTER TABLE ONLY public.actividades DROP CONSTRAINT fk_actividades_categoria;
       public          postgres    false    221    223    3013            �           2606    115108 "   categoria_actividades fk_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_actividades
    ADD CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 L   ALTER TABLE ONLY public.categoria_actividades DROP CONSTRAINT fk_categoria;
       public          postgres    false    3013    237    223            �           2606    115123    roles fk_categoria_actividad_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT fk_categoria_actividad_id FOREIGN KEY (categoria_actividad_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 I   ALTER TABLE ONLY public.roles DROP CONSTRAINT fk_categoria_actividad_id;
       public          postgres    false    3013    223    229            �           2606    115051 &   dias_festivos_categorias fk_categorias    FK CONSTRAINT     �   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT fk_categorias FOREIGN KEY (categoria_id) REFERENCES public.categoria_actividad(categoria_actividad_id);
 P   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT fk_categorias;
       public          postgres    false    3013    223    231            �           2606    106930 !   permission_comentary fk_comentary    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_comentary
    ADD CONSTRAINT fk_comentary FOREIGN KEY (comentary_id) REFERENCES public.comentary(id);
 K   ALTER TABLE ONLY public.permission_comentary DROP CONSTRAINT fk_comentary;
       public          postgres    false    207    202    2991            �           2606    106940 .   registration_permission_comentary fk_comentary    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_permission_comentary
    ADD CONSTRAINT fk_comentary FOREIGN KEY (comentary_id) REFERENCES public.comentary(id) NOT VALID;
 X   ALTER TABLE ONLY public.registration_permission_comentary DROP CONSTRAINT fk_comentary;
       public          postgres    false    2991    203    202            �           2606    115090 (   actividad_dias_festivos fk_dias_feriados    FK CONSTRAINT     �   ALTER TABLE ONLY public.actividad_dias_festivos
    ADD CONSTRAINT fk_dias_feriados FOREIGN KEY (dias_festivos_id) REFERENCES public.dias_festivos(id_dia_festivo);
 R   ALTER TABLE ONLY public.actividad_dias_festivos DROP CONSTRAINT fk_dias_feriados;
       public          postgres    false    225    235    3015            �           2606    115056 )   dias_festivos_categorias fk_dias_festivos    FK CONSTRAINT     �   ALTER TABLE ONLY public.dias_festivos_categorias
    ADD CONSTRAINT fk_dias_festivos FOREIGN KEY (dia_festivo_id) REFERENCES public.dias_festivos(id_dia_festivo);
 S   ALTER TABLE ONLY public.dias_festivos_categorias DROP CONSTRAINT fk_dias_festivos;
       public          postgres    false    3015    231    225            �           2606    106979 !   username_permission fk_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.username_permission
    ADD CONSTRAINT fk_permission FOREIGN KEY (type_permission_id) REFERENCES public.registration_permissions(permission_id);
 K   ALTER TABLE ONLY public.username_permission DROP CONSTRAINT fk_permission;
       public          postgres    false    2995    205    211            �           2606    107079    tipos_permission fk_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_permission
    ADD CONSTRAINT fk_permission FOREIGN KEY (type_permission_id) REFERENCES public.registration_permissions(permission_id);
 H   ALTER TABLE ONLY public.tipos_permission DROP CONSTRAINT fk_permission;
       public          postgres    false    205    219    2995            �           2606    106935 #   permission_comentary fk_permissions    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_comentary
    ADD CONSTRAINT fk_permissions FOREIGN KEY (permission_id) REFERENCES public.registration_permissions(permission_id);
 M   ALTER TABLE ONLY public.permission_comentary DROP CONSTRAINT fk_permissions;
       public          postgres    false    205    207    2995            �           2606    115069    rol_person fk_person_id    FK CONSTRAINT     {   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT fk_person_id FOREIGN KEY (person_id) REFERENCES public.personas(id);
 A   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT fk_person_id;
       public          postgres    false    233    3017    227            �           2606    106945 -   registration_permission_comentary fk_registro    FK CONSTRAINT     �   ALTER TABLE ONLY public.registration_permission_comentary
    ADD CONSTRAINT fk_registro FOREIGN KEY (registro_id) REFERENCES public.registros(registro_id) NOT VALID;
 W   ALTER TABLE ONLY public.registration_permission_comentary DROP CONSTRAINT fk_registro;
       public          postgres    false    2989    200    203            �           2606    115118    categoria_actividad fk_rol    FK CONSTRAINT     |   ALTER TABLE ONLY public.categoria_actividad
    ADD CONSTRAINT fk_rol FOREIGN KEY (rol_id) REFERENCES public.roles(rol_id);
 D   ALTER TABLE ONLY public.categoria_actividad DROP CONSTRAINT fk_rol;
       public          postgres    false    223    3019    229            �           2606    115074    rol_person fk_rol_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.rol_person
    ADD CONSTRAINT fk_rol_id FOREIGN KEY (rol_id) REFERENCES public.roles(rol_id);
 >   ALTER TABLE ONLY public.rol_person DROP CONSTRAINT fk_rol_id;
       public          postgres    false    233    229    3019            �           2606    115128    dias_festivos fk_roles_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.dias_festivos
    ADD CONSTRAINT fk_roles_id FOREIGN KEY (fk_roles) REFERENCES public.roles(rol_id);
 C   ALTER TABLE ONLY public.dias_festivos DROP CONSTRAINT fk_roles_id;
       public          postgres    false    229    225    3019            �           2606    107061 '   tipos_permiso_usuarios fk_tipos_permiso    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_permiso_usuarios
    ADD CONSTRAINT fk_tipos_permiso FOREIGN KEY (tipos_permiso_id) REFERENCES public.tipos_permiso(tipos_permiso_id);
 Q   ALTER TABLE ONLY public.tipos_permiso_usuarios DROP CONSTRAINT fk_tipos_permiso;
       public          postgres    false    217    3007    209            �           2606    107074 !   tipos_permission fk_tipos_permiso    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_permission
    ADD CONSTRAINT fk_tipos_permiso FOREIGN KEY (tipos_permiso_id) REFERENCES public.tipos_permiso(tipos_permiso_id);
 K   ALTER TABLE ONLY public.tipos_permission DROP CONSTRAINT fk_tipos_permiso;
       public          postgres    false    3007    219    217            �           2606    107039    username_permission fk_username    FK CONSTRAINT     �   ALTER TABLE ONLY public.username_permission
    ADD CONSTRAINT fk_username FOREIGN KEY (username_id) REFERENCES public.usernames(username_id);
 I   ALTER TABLE ONLY public.username_permission DROP CONSTRAINT fk_username;
       public          postgres    false    3005    215    211            �           2606    107044 "   tipos_permiso_usuarios fk_username    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipos_permiso_usuarios
    ADD CONSTRAINT fk_username FOREIGN KEY (username_id) REFERENCES public.usernames(username_id);
 L   ALTER TABLE ONLY public.tipos_permiso_usuarios DROP CONSTRAINT fk_username;
       public          postgres    false    215    209    3005            �      x������ � �            x������ � �      �      x������ � �      �      x������ � �      l      x�3�L��M�+I,��7����� <�O      �      x������ � �      �      x������ � �      q      x������ � �      �      x������ � �      w   S   x�%�;
�@E��e1B>b-v��&��0L`�����0���9.�ޏ ����(��PSyK0��+xR�F,�k�`�N�"z �Sm      m      x������ � �      o   �   x��P�
�0<o��HI6�G�J?�K��J���n�U��Ev�a��̎���(�@.T"˫�3���{Lsy�i��bM]1	vXd_p�G�V�X]������Z���E}�o�H��kZ�:z��/�нG]yhH��&��&�c�-�3�8��޶]�� D�L�	�QPw;��{%7׼�f<�E}a���fw      j      x������ � �      �      x������ � �      �      x������ � �      {   �   x�m�Kn�0���)|�X3�gf�m�d��HDPPH�_'�Vݍ���� qM�iXg���6c3]өn����F� ��NE�)2�F��K<����ue��t7C�`BvF#��;D��i�u-R�J��ɳ	���wW�J�E6Qgv�s�zY�WkM��X�@l��`7�K�ǬB{�F�`I����g?�a����W�;��ζn�h𛫑%�9$�g|�}w�l|ދ޴��*mp�      s      x������ � �      }   3   x����  ���0�A��Kt���H��E8��H���%�V_�C;�g��>�      u   '   x�3�4�4�L�,I�2�4���rSS2��b���� �a      y      x�u��
� E��=L�?��ҭ�<��$�X��	|�_� t�r�r$�F��ˎ�a��������x}E�ð�!U�$i�>����'��	������c��,I`[���*�끙�D��@V     