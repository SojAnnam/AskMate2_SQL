PGDMP         *                u           markorkenyi    9.5.7    9.5.7 :    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16398    markorkenyi    DATABASE     }   CREATE DATABASE markorkenyi WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE markorkenyi;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12395    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33155    answer    TABLE     �   CREATE TABLE answer (
    id integer NOT NULL,
    submission_time timestamp without time zone,
    vote_number integer,
    question_id integer,
    message text,
    image text,
    user_id integer
);
    DROP TABLE public.answer;
       public         markorkenyi    false    6            �            1259    33153    answer_id_seq    SEQUENCE     o   CREATE SEQUENCE answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.answer_id_seq;
       public       markorkenyi    false    187    6            �           0    0    answer_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE answer_id_seq OWNED BY answer.id;
            public       markorkenyi    false    186            �            1259    33098    applicants_id_seq    SEQUENCE     s   CREATE SEQUENCE applicants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.applicants_id_seq;
       public       markorkenyi    false    6            �            1259    33164    comment    TABLE     �   CREATE TABLE comment (
    id integer NOT NULL,
    question_id integer,
    answer_id integer,
    message text,
    submission_time timestamp without time zone,
    edited_count integer,
    user_id integer
);
    DROP TABLE public.comment;
       public         markorkenyi    false    6            �            1259    33162    comment_id_seq    SEQUENCE     p   CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.comment_id_seq;
       public       markorkenyi    false    189    6            �           0    0    comment_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE comment_id_seq OWNED BY comment.id;
            public       markorkenyi    false    188            �            1259    33106    mentors_id_seq    SEQUENCE     p   CREATE SEQUENCE mentors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.mentors_id_seq;
       public       markorkenyi    false    6            �            1259    33146    question    TABLE     �   CREATE TABLE question (
    id integer NOT NULL,
    submission_time timestamp without time zone,
    view_number integer,
    vote_number integer,
    title text,
    message text,
    image text,
    user_id integer
);
    DROP TABLE public.question;
       public         markorkenyi    false    6            �            1259    33144    question_id_seq    SEQUENCE     q   CREATE SEQUENCE question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.question_id_seq;
       public       markorkenyi    false    185    6            �           0    0    question_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE question_id_seq OWNED BY question.id;
            public       markorkenyi    false    184            �            1259    33171    question_tag    TABLE     ]   CREATE TABLE question_tag (
    question_id integer NOT NULL,
    tag_id integer NOT NULL
);
     DROP TABLE public.question_tag;
       public         markorkenyi    false    6            �            1259    33114    schools_id_seq    SEQUENCE     p   CREATE SEQUENCE schools_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.schools_id_seq;
       public       markorkenyi    false    6            �            1259    33176    tag    TABLE     =   CREATE TABLE tag (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.tag;
       public         markorkenyi    false    6            �            1259    33174 
   tag_id_seq    SEQUENCE     l   CREATE SEQUENCE tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public       markorkenyi    false    192    6            �           0    0 
   tag_id_seq    SEQUENCE OWNED BY     +   ALTER SEQUENCE tag_id_seq OWNED BY tag.id;
            public       markorkenyi    false    191            �            1259    33247    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       markorkenyi    false    6            �            1259    33218    users    TABLE     �   CREATE TABLE users (
    id integer DEFAULT nextval('users_id_seq'::regclass) NOT NULL,
    username character varying(128) NOT NULL,
    date date NOT NULL
);
    DROP TABLE public.users;
       public         markorkenyi    false    194    6            
           2604    33158    id    DEFAULT     X   ALTER TABLE ONLY answer ALTER COLUMN id SET DEFAULT nextval('answer_id_seq'::regclass);
 8   ALTER TABLE public.answer ALTER COLUMN id DROP DEFAULT;
       public       markorkenyi    false    186    187    187                       2604    33167    id    DEFAULT     Z   ALTER TABLE ONLY comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public       markorkenyi    false    188    189    189            	           2604    33149    id    DEFAULT     \   ALTER TABLE ONLY question ALTER COLUMN id SET DEFAULT nextval('question_id_seq'::regclass);
 :   ALTER TABLE public.question ALTER COLUMN id DROP DEFAULT;
       public       markorkenyi    false    184    185    185                       2604    33179    id    DEFAULT     R   ALTER TABLE ONLY tag ALTER COLUMN id SET DEFAULT nextval('tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public       markorkenyi    false    191    192    192            �          0    33155    answer 
   TABLE DATA               a   COPY answer (id, submission_time, vote_number, question_id, message, image, user_id) FROM stdin;
    public       markorkenyi    false    187   �:       �           0    0    answer_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('answer_id_seq', 2, true);
            public       markorkenyi    false    186            �           0    0    applicants_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('applicants_id_seq', 10, true);
            public       markorkenyi    false    181            �          0    33164    comment 
   TABLE DATA               g   COPY comment (id, question_id, answer_id, message, submission_time, edited_count, user_id) FROM stdin;
    public       markorkenyi    false    189   w;       �           0    0    comment_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('comment_id_seq', 2, true);
            public       markorkenyi    false    188            �           0    0    mentors_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('mentors_id_seq', 22, true);
            public       markorkenyi    false    182            �          0    33146    question 
   TABLE DATA               j   COPY question (id, submission_time, view_number, vote_number, title, message, image, user_id) FROM stdin;
    public       markorkenyi    false    185   <       �           0    0    question_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('question_id_seq', 2, true);
            public       markorkenyi    false    184            �          0    33171    question_tag 
   TABLE DATA               4   COPY question_tag (question_id, tag_id) FROM stdin;
    public       markorkenyi    false    190   �>       �           0    0    schools_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('schools_id_seq', 4, true);
            public       markorkenyi    false    183            �          0    33176    tag 
   TABLE DATA                   COPY tag (id, name) FROM stdin;
    public       markorkenyi    false    192   �>       �           0    0 
   tag_id_seq    SEQUENCE SET     1   SELECT pg_catalog.setval('tag_id_seq', 3, true);
            public       markorkenyi    false    191            �          0    33218    users 
   TABLE DATA               ,   COPY users (id, username, date) FROM stdin;
    public       markorkenyi    false    193   �>       �           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 8, true);
            public       markorkenyi    false    194                       2606    33222    id 
   CONSTRAINT     ?   ALTER TABLE ONLY users
    ADD CONSTRAINT id PRIMARY KEY (id);
 2   ALTER TABLE ONLY public.users DROP CONSTRAINT id;
       public         markorkenyi    false    193    193                       2606    33184    pk_answer_id 
   CONSTRAINT     J   ALTER TABLE ONLY answer
    ADD CONSTRAINT pk_answer_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.answer DROP CONSTRAINT pk_answer_id;
       public         markorkenyi    false    187    187                       2606    33186    pk_comment_id 
   CONSTRAINT     L   ALTER TABLE ONLY comment
    ADD CONSTRAINT pk_comment_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.comment DROP CONSTRAINT pk_comment_id;
       public         markorkenyi    false    189    189                       2606    33188    pk_question_id 
   CONSTRAINT     N   ALTER TABLE ONLY question
    ADD CONSTRAINT pk_question_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.question DROP CONSTRAINT pk_question_id;
       public         markorkenyi    false    185    185                       2606    33190    pk_question_tag_id 
   CONSTRAINT     g   ALTER TABLE ONLY question_tag
    ADD CONSTRAINT pk_question_tag_id PRIMARY KEY (question_id, tag_id);
 I   ALTER TABLE ONLY public.question_tag DROP CONSTRAINT pk_question_tag_id;
       public         markorkenyi    false    190    190    190                       2606    33192 	   pk_tag_id 
   CONSTRAINT     D   ALTER TABLE ONLY tag
    ADD CONSTRAINT pk_tag_id PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.tag DROP CONSTRAINT pk_tag_id;
       public         markorkenyi    false    192    192                       2606    33193    fk_answer_id    FK CONSTRAINT     h   ALTER TABLE ONLY comment
    ADD CONSTRAINT fk_answer_id FOREIGN KEY (answer_id) REFERENCES answer(id);
 >   ALTER TABLE ONLY public.comment DROP CONSTRAINT fk_answer_id;
       public       markorkenyi    false    189    187    2065                       2606    33198    fk_question_id    FK CONSTRAINT     m   ALTER TABLE ONLY answer
    ADD CONSTRAINT fk_question_id FOREIGN KEY (question_id) REFERENCES question(id);
 ?   ALTER TABLE ONLY public.answer DROP CONSTRAINT fk_question_id;
       public       markorkenyi    false    187    2063    185                        2606    33203    fk_question_id    FK CONSTRAINT     s   ALTER TABLE ONLY question_tag
    ADD CONSTRAINT fk_question_id FOREIGN KEY (question_id) REFERENCES question(id);
 E   ALTER TABLE ONLY public.question_tag DROP CONSTRAINT fk_question_id;
       public       markorkenyi    false    2063    185    190                       2606    33208    fk_question_id    FK CONSTRAINT     n   ALTER TABLE ONLY comment
    ADD CONSTRAINT fk_question_id FOREIGN KEY (question_id) REFERENCES question(id);
 @   ALTER TABLE ONLY public.comment DROP CONSTRAINT fk_question_id;
       public       markorkenyi    false    185    2063    189            !           2606    33213 	   fk_tag_id    FK CONSTRAINT     d   ALTER TABLE ONLY question_tag
    ADD CONSTRAINT fk_tag_id FOREIGN KEY (tag_id) REFERENCES tag(id);
 @   ALTER TABLE ONLY public.question_tag DROP CONSTRAINT fk_tag_id;
       public       markorkenyi    false    190    2071    192                       2606    33253    user_id    FK CONSTRAINT     a   ALTER TABLE ONLY question
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id);
 :   ALTER TABLE ONLY public.question DROP CONSTRAINT user_id;
       public       markorkenyi    false    2073    185    193                       2606    33258    user_id    FK CONSTRAINT     _   ALTER TABLE ONLY answer
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id);
 8   ALTER TABLE ONLY public.answer DROP CONSTRAINT user_id;
       public       markorkenyi    false    187    193    2073                       2606    33263    user_id    FK CONSTRAINT     `   ALTER TABLE ONLY comment
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES users(id);
 9   ALTER TABLE ONLY public.comment DROP CONSTRAINT user_id;
       public       markorkenyi    false    193    189    2073            �   �   x�E�A�0E���*����&���F�Ah�"-���NLnrgG��b�q���N�RsN�]}�3�E�H������Ġ1Ώ�G��T����3��J�̶X���lD�`bop�c�Z��cݙ��M毩[�*g�}(�)�      �   �   x�E�1� �N����h$� .� 1���)�(���-.���$�v��K}po�M��W�)S�(�r���{�+���7B7BBh�=�ol�UU��|�8`�},�2���(eQYo���!�K� wF�%�-��D^.�      �   _  x�eS�n�@]���J#$06!%�E$�Eɢ�J�h��0�����3�$���ct�y�{&O&Y>e��dN�|��Y���<��mi,w��f�P{����HN/�����	�\�����Ԇ���Ȱ���y
�;|��w۲��(����ޛ�x�B�mS)�BW�l�n<@�p���P��.����kr�VT0�𐒮�Wi�,q5H;����Fm�t�%q���b��+�x�in��@�y�
�v��G���΃.�_L�_]�.Q����
;�x5,|'X�ھ�� &Q\,�O�Qͷ�ǈ��@ *]�NK�k/"�y�:ŌI_��A���	,���>��B��z�������<5j�l��&]NnGYNy���mNn>L��Y�ɲ("���ܙ�)j!Ȉ����������e�n����W���G�׶��U��(8K*;�y����Z������S��QAj�ǹ �217`|eKi���b���'�c�V׎��4.p樰�B[C)�|��s�#��M���(��:b_
����皽ݿ;������d�,����bG,_8�bj��V��q,��_C����A�2��}G�I{��_
�S�      �      x�3�4�2�4�2�=... %      �   "   x�3�,�,����2�,.��2�L..����� e��      �       x�3�tL����4204�50�50����� E��     