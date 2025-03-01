SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "fullname", "email", "is_email_verified", "password", "userole", "age", "gender", "profile_pic", "disabled", "created_at", "google_id", "update_registry") FROM stdin;
81aee39e-2723-436b-bf84-bf2a2a0c6c60	Orenge Aroisa	aroisagetrude@gmail.com	t	$2b$15$O/sLqwNVBli/3gtwxVB5lOr8cTw7xOtrafnnYPBLLvvfnbc5717Qe	AGENT	27	Female	\N	f	2024-12-12 04:25:56.095471+00	\N	f
6b4ea9af-2dc2-4c90-bce7-8091b34de6d9	Augustine  mutua	augustinemutua5@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	29	Male	\N	f	2025-01-10 03:38:20.02361+00	\N	f
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	Austine Mailu Kalovwe	austinmailu9@gmail.com	t	$2b$15$aSNogfkay4vtJjuCALCYneTOfe1MpvOOydOh/aQOgPpxyGwlek/BK	AGENT	32	Male	\N	f	2024-11-06 11:14:10.643231+00	\N	f
182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	Luther	avisaluther84@gmail.com	t	$2b$15$NNDhTqkyDSma1k19rxbwkOCqW7ubI7X5HE0eFnqBSFUneechwUTs6	AGENT	20	Male	\N	f	2024-11-06 22:44:58.01396+00	\N	f
68427b34-46ba-40e0-b01c-6336ab006d94	Dorcas Awesit	awesitdorcas00@gmail.com	t	$2b$15$HW0HCKTMMX1V5ThPj6H9qOAz2Yr.j5zxxIzjumJZCzuc79kReuZhW	AGENT	26	Female	\N	f	2024-11-09 18:05:35.69928+00	\N	f
e6dd5228-a780-4b6e-94da-626d32fb8190	Christine  Awuor	awuorchristine392@gmail.com	t	$2b$15$3m6.oBmgYv1Bb7VuGD4ho.hH3ZofKOe83jn7Y9xqZ6HQjbq5DdwPG	AGENT	28	Female	\N	f	2024-11-08 06:14:33.771457+00	\N	f
b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	Rebecca kinuthia	beckykinuthia4@gmail.com	t	$2b$15$xCjJQbmJpJYLDAkZR.qpAuvgk6frpzGJy9RDNqCTg4miJQsxNfhuq	AGENT	40	Female	\N	f	2024-11-09 04:06:57.748974+00	\N	f
8fb2b20c-5971-4f87-97f6-ae839c4d7804	Benson	bensonkiplagat98@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	22	Male	\N	f	2025-01-09 19:11:07.672642+00	\N	f
70080823-9509-4792-b3d3-767df62de09a	Seline Adhiambo	Adhiamboseline97@97gmail.com	t	$2b$15$ziDBJPmBceZFpYPzIMi7lerGYGXBuvCdKi6PHeuZU2uEvZrokijuG	AGENT	22	Female	\N	f	2024-11-07 11:53:02.867665+00	\N	f
58d3c3cb-0914-4516-bf95-ceef24429241	Seline Ochieng	Adhiamboseline97@gmail.com	t	$2b$15$8.juD88T0MgElvV.2U18Q.CLQF67O0YG8U5KX68Zm4WVNmI.1UVM2	AGENT	22	Female	\N	f	2024-11-07 12:12:49.859487+00	\N	f
ed030e9b-3f7e-4988-a86b-04a8f075cee6	Grace Mbuti	neemambuti@gmail.com	t	$2b$15$tOkuhRktSz6hkORoMniWxuJLXG8p8OGfoMM57CBgwo2ZQI1UpfQzi	AGENT	35	Female	\N	f	2025-01-21 18:30:46.170476+00	\N	f
01055346-f4e3-4282-a2ca-e87deedfd078	Gaudencia tsimanji	tsimanjig123@gmail.com	t	$2b$15$Jegvzu.Lmeohn7DopGDJeev0gk9r9uVHvyMh2y0938DERIdUmHecy	CLIENT	\N	\N	\N	f	2025-01-22 10:18:58.073015+00	\N	f
b07bc8aa-8ffc-4f57-9c69-1d66e54b663f	Hannah wambui kamau	hannahkamau9137@gmail.com	t	$2b$15$Z7o2vWZKXhx3/NonHKdgvurlWfuyM6UFcmpBRtRGZhUZuu.uYsEmK	AGENT	24	Female	\N	f	2025-01-21 07:52:30.9226+00	\N	f
d9b1d991-6de3-4149-bad3-fe8afd539f67	BONIFACE WAMBUA	bkilisa25@gmail.com	t	$2b$15$n6EzEe005jIqjKhabB/RUuhcLJmiIszECy2KwGv2dTki84lzqrhJe	AGENT	29	Male	\N	f	2025-01-21 18:50:12.494244+00	\N	f
93325eb3-6c9e-4bd0-854a-88abf48f9887	Alicia Mwisangwe	aliciamwisangwe@gmail.com	t	$2b$15$yVn4mpkdrYAFZ8aB.cmtkuBaOnvvumBubB6ZDUwl0IyOL4xZwMK.W	AGENT	24	Female	\N	f	2024-11-11 09:03:53.553715+00	\N	f
85536ca4-ab4f-4eff-a4cc-a81486346505	Thomas wambua Kamau	Twambua2030@gmail.com	t	$2b$15$NKUYlE0x0lkt0qFgydyrj.P8FybRqonI/HZRUibDqcS4GOcAtcQu2	AGENT	25	Male	\N	f	2025-01-22 13:42:56.435374+00	\N	f
0193625d-3a30-74a5-a759-1c7d5f69e14c	Super User	info@int-insights.com	t	$2a$15$2MhzJvJZ5MA1kGGXddicveVCH6D8mXBiP3G4gphh/8hbLZHmLvO.i	ADMIN	23	\N	\N	f	2024-11-25 08:12:03+00	\N	f
c1bde176-582a-4028-888e-a70875a11f51	Christine Staicy	christinestaicy@gmail.com	t	$2a$15$2MhzJvJZ5MA1kGGXddicveVCH6D8mXBiP3G4gphh/8hbLZHmLvO.i	CLIENT	23	\N	\N	f	2024-11-11 13:06:37.486145+00	\N	f
36bdfd9c-73b6-448d-9a4b-5ffff35a8b43	Kentrell Williams	kentrellnamaswa@yahoo.com	t	$2b$15$EPae5dM3N8WjayuJ6Rh1lObIVgOTRTJeeT4l15xuRNPdc0YZ.8Tne	AGENT	35	Female	\N	f	2025-01-21 10:56:09.017717+00	\N	f
6ea5e5a3-d51b-41ad-8f60-806f7a4cbcbd	JOSEPH THANGARANI	thangaranijoseph@gmail.com	t	$2b$15$g4fbYTq2c6DEVmRnUJOnhOaEGMCB0fprs5N6ebWDKBlTJANia2CXm	AGENT	30	Male	\N	f	2025-01-21 20:12:10.625092+00	\N	f
0dc55b78-1b38-4b00-972f-82db326c93b4	Darvin Omuse	darvinkilui@gmail.com	t	$2b$15$RlBZSKiahleSjIYJHfAnbOi9cAUdmhCmo.UJK63ejnbFugjD2ZCja	AGENT	25	Male	\N	f	2025-01-21 20:39:21.750203+00	\N	f
edfb1b6c-3230-4a79-a6e0-004ded923356	Josephine K	alinamutua4@gmail.com	t	$2b$15$gdPOKrjqgI7ifyPXyS6HBeiGpxHno.5jVTXR6pHPeMftvhcToNJdK	AGENT	46	Female	\N	f	2024-11-07 06:59:10.840789+00	\N	f
fd8cf7cc-32cb-4b2c-b8c7-25f648edbf16	Rebecca Amakobe	amakobebecky@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	32	Female	\N	f	2025-01-10 03:56:36.340381+00	\N	f
ec4b09e2-a645-425c-b43b-b59f19525056	Belinda Amondi	amondibelinda0@gmail.com	t	$2b$15$ezsfEnpvRUAqOqbqUVO6XubU86szxoAL4TdbTENiUeVOIoCJZZcwe	AGENT	26	Female	\N	f	2024-11-07 06:21:09.391527+00	\N	f
b4d3f648-ee61-4857-8202-98bba2e42360	Ganet Mwaura	mwauraganet6@gmail.com	t	$2b$15$0SYcNPZulwRs/SRBE74JS.sdNxamZx6kH0cboT3CsbsrzCdMxRt6y	AGENT	20	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
2e00b4ab-d73c-4e24-aac8-1bc0095f15c6	Christine Ndolo	christinembithendolo@gmail.com	t	$2b$15$M8YEe4.xw0etC35fm0Lrpe0cGx4fGvupt7Q8vkR7qdtEHFGe/9tdq	AGENT	28	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
1adae48f-088a-46f5-af29-7a551e7f2aa2	Hussein Sadick	sadickhussein24@gmail.com	t	$2b$15$bH.XM80f6lJjJb0uuMC3XOqkH3zqRKLSgeCZN6cR8b4.3liOMAxkS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
39671909-2af2-4edf-b653-166689c525a1	Gabriel Njeru	mjmurithi@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-13 08:43:25.899503+00	\N	f
365ae29d-cbaf-442f-8005-c81db0d5f52c	Faith ñduku mulei	fayyfayy20@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-13 10:08:16.26229+00	\N	f
c5a7fdce-2475-49d5-a93c-cc788fb2fa58	Kofi Anan ogaga	kofiananogaga67@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-13 10:16:15.412893+00	\N	f
907de806-eb5d-4ab2-94e3-b25f2732c69c	Agnes Atieno Metho	agnesmetho3@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-13 12:15:38.448843+00	\N	f
d78b692b-4327-4bb6-bd50-74270fa66ee6	Victor ochieng odoyo	victorodoyo78@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-13 17:10:35.521938+00	\N	f
952c8806-c89a-444c-98a2-dfdfd9a736e3	Ibrahim Odhiambo Ogweno	ogwenoibrahim005@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-13 17:16:12.705826+00	\N	f
e7cb31c6-ec86-48e1-a3d3-3cafc1e630ea	Stephen Njoroge	stephennjoroge480@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
9d8840fb-f3a3-43af-b9b0-53ca8d5b5694	Blaise Manirampa	jospinmike7@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
e9399ea6-19a3-4e71-872c-f965a846097f	Samuel Njenga	kiriganjeri@gmail.com	t	$2b$15$DtKlQZpKckFPTy9ShOhFd.1q09NOqMMrrYI1o6eSynT4HZ1U0eZ5y	AGENT	34	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
423e2fa3-d41c-4009-8417-886d87ceac32	Serah Thuku	thukuserah@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
730995b6-9753-4dcf-a65d-fb0cbc0c4526	Ian Githuba	iangithuba@gmail.com	t	$2b$15$RgrNveVYNiQfys2v4lkOBujySmnYy/ioqBPFwDK.2i4cjLJzFes5G	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
158107f8-76a4-4a22-b86e-e1a3819e4513	Elizabeth Mwangi	elizabethmiruri08@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
6ed14e45-6595-4114-a6f4-aa4c623f41de	Jeff Karanja	Lchussy@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
edaccdba-c344-447f-8bb2-a5f98aa94aae	Sharifah Abdallah	sherriedullax@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
e31080e9-038f-41e1-b3bd-5c214f5c4983	Judith Mkimbo	etheljudith3@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
912a32c1-dc82-4ce5-825a-0e0c7c2594c1	Gorreti Muthama	gorretimwikali18@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
1c7647e3-8268-4b4d-bda7-6ce5977ac446	Rashid Kale	rashidkale77@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
49362377-0576-472c-9e69-ea55e88519ef	Sharaf Mohamed	sharafhaidar444@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
c1fca44d-dbaf-403c-aceb-d9aa39c41131	James kalu	jkalu3636@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
506e9a67-9311-4336-88c3-94a41e758c7c	Marlyn Ameyo	marylynkayla@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-16 12:21:22.366534+00	\N	f
4877e8c6-8b96-4b75-ac74-406d8fd64144	Veronicah Nyambura	veronicahmanyeki24@gmailcom	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
ef54b94e-b3b6-4fa8-97f3-dcbbcd73f634	Kibet Prestone	presytbett@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 11:09:40.885398+00	\N	f
bbb78bf4-70e2-4c5a-b352-4cf67df0261e	Janet Muthoni Nginyi	muthoninginyi@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-16 13:07:36.83146+00	\N	f
12286b2e-cc87-4cb9-970b-5f0fbd0703c8	Elizabeth barasa	barasaelizabeth965@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-16 16:19:09.521599+00	\N	f
6869f962-56a5-4e73-9137-a638d4f9ba03	Junior Mutisya	juniormutisya3@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 17:54:24.564845+00	\N	f
8d8d7a45-6d50-495f-86cd-42a6bb6adf51	Allan Thiong'o Kimani	allalokeym@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 18:06:41.364475+00	\N	f
895336e0-3158-4f0d-95c0-2f1a986d60a0	Peris Wairimu	wairimuperis054@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-16 18:24:50.402249+00	\N	f
d218da17-6eb3-481f-907b-9c3046a5fb6f	Moses Sikuku Akola	Mosesakola22@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 18:45:43.22585+00	\N	f
32bd7728-8edb-46ee-86cd-1efa8f7b4070	Okore Samuel	samokore@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 20:02:50.190549+00	\N	f
4815e34c-6994-4384-9277-c23f124eedd7	Lucy M	mumolucy3@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-16 20:16:07.809855+00	\N	f
a0f9e01c-f3cf-44cf-916b-7bde7e115adb	Elijah Nzomo	mutuanzomoeli@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-16 21:57:35.945886+00	\N	f
a66345f5-6cc3-402d-a7a2-0db21b9869a3	Ibrahim Hamadi	ibralito39@gmail.com	t	$2b$15$WiqHxOMKMyFmIoZq8Am6/uXDKkWiit2WRf7y/oh0aoyJiW7.8xs0C	AGENT	22	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
fb293319-b39f-4132-8284-22f66da56937	Andrew Ombaka	andrewelly787@gmail.com	t	$2b$15$UpGpSz2rw/rij2dTlyiLcupuPmRCJ03C/F.KpP.6JyxzDjAv3YbuO	AGENT	24	Male	\N	f	2024-11-07 06:21:45.227945+00	\N	f
ffce55fe-67cf-479b-93cc-a7eae65375c5	Anne Odhiambo	annaodhiambo703@gmail.com	t	$2b$15$mBepPQiuEg0LxzjZgccNtOx.ZTEZnxEW3tWbuBZoizIY9WWzN/iOK	AGENT	26	Female	\N	f	2024-11-06 11:33:43.638691+00	\N	f
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	Annastacia mbula kiio	annastaciambula43@gmail.com	t	$2b$15$ek4mWkK.o/HA.TxIWDQubeBzjtPyzSQuWkXwV/8tx33uy87w5Zkhm	AGENT	26	Female	\N	f	2024-11-07 05:12:59.854167+00	\N	f
823b3f7f-83da-4cdc-a94e-92979e443bb5	Harriet mmboga	harrietmmboga456@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 11:46:29.210233+00	\N	f
2a164b3c-581a-401f-80d3-e498997796ff	Peter Musambai	petermusambai60@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-17 12:01:05.272846+00	\N	f
fffd2637-1493-41f9-a140-08ba67621b10	Dennis Muchangi	dennismuchangi46@gmail.com	t	$2b$15$XvIGb5YVKJPENxPOWRpCF.1wa.00nG5yoMd5/zJKLjlh23U8bqoVG	AGENT	34	Male	\N	f	2025-01-21 11:34:28.100039+00	\N	f
d91dee2c-782d-4f5d-96a5-79287b8a8daf	Anthony Njoroge	antonykarangi17@gmail.com	t	$2b$15$p3u56cNQcGLieot1mEaVkuiZnQVjMAjiANj9P7r9hP1fqc1IbbaWq	AGENT	26	Male	\N	f	2024-11-06 17:32:27.580024+00	\N	f
14713925-327a-4233-8a54-c0f61d673205	Anungo	anungopamphil@gmail.com	t	$2b$15$SoWFApX7TTMwLH76r2pbNulEZ7pjKwEgFQ13eOsxrNxg3yJSAs2Ie	AGENT	28	Male	\N	f	2024-11-07 19:54:43.466003+00	\N	f
70eff330-56a7-498d-b658-6dd3c8c0a254	Anna Kigunda	annakigunda@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 00:45:03.0034+00	\N	f
dc4e4f16-92e6-4200-8f02-2bb00ffd6ee2	Joan Anne Wanjiku Karima	karimajoan08@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 04:32:08.208366+00	\N	f
12019715-0870-4fe8-acf9-9b437ebf891c	Carol Mugasia	lenacarol215@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 05:46:54.501729+00	\N	f
93ea3232-3b94-42a3-ab5a-5f20e144842e	Sylvia Matisi	slymatisi7@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 06:11:20.517356+00	\N	f
578faed5-dc33-486c-bf0e-9568ce03ec99	Briver wasilwa	bwasilwa0@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-17 06:53:58.253326+00	\N	f
7e544bfc-cbad-4bf4-b59a-7b24e7519474	Jonner Kithinji	jonnerkits@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-17 07:25:42.915051+00	\N	f
7c34897f-92ec-4166-a363-b54316d95438	Eugene Gadson	eugenegadson788@gmail.com	t	$2b$15$lWQjZ3ggIetMz3jHCzkW6OviXCEykm0iFUNqatOjEYXu0qm9hDKUS	AGENT	21	Male	\N	f	2025-01-17 02:58:53.088397+00	\N	f
c70c4444-cd96-445d-ac7d-78488334faf5	Juliet daliza	julietdaliza333@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-17 12:45:58.443125+00	\N	f
c893fe46-c3d7-40c0-8035-b20c940b9d90	Darius Masenge	darius.masenge@gmail.com	t	$2b$15$12UsJKwlRsW6Q9eDqu14jePjftbJwqwai/8cR.oANYcN020ROfSra	AGENT	36	Male	\N	f	2025-02-24 10:26:12.525569+00	\N	f
195701c9-eed6-453f-9bf9-fa54dab68d57	Martha kwamboka Biginga	kwambokabiginga@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:35:06.872359+00	\N	f
fa91e9e8-c7cb-42da-a152-a99df912a383	Rophine akoth opwapo	rophineopwapo4@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:42:12.457214+00	\N	f
98c15a99-b1f9-4853-b497-9b80663fe60e	Sarah njeri	njerisarah904@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:43:22.692631+00	\N	f
67f9ea8d-953e-4d56-ac9b-dacd04a7ab15	Mary	mbuthiamary40@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:44:12.623836+00	\N	f
002960a2-cf21-4b33-8a88-5b3b90b5bfcd	Linet Kagasa	linetkagasa@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:51:33.568365+00	\N	f
a8327a88-6261-4dc5-a9aa-e066d3abfc14	Joyce Wahinya wambui	jas981611@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 08:58:52.281341+00	\N	f
2bf87d93-8904-4d8f-877e-f6db2996f760	Elvin kamau	elvinkim16@gmail.com	t	$2b$15$q8GI/Wzzz41Qw8wEQs709e339/tnLFmVRsTQqROvcpiF6DXqAVAbC	AGENT	27	Male	\N	f	2025-01-18 07:53:39.224629+00	\N	f
eeb7b38e-54f3-44d1-8e51-9dd06c90b200	Eddy Ochango	eddyochango93@gmail.com	t	$2b$15$9snUi90Qnya4hOE2H2Yuoef2Aix9jY1RoHbhTh1masLK8X1J5.INW	AGENT	31	Male	\N	f	2025-01-22 04:41:17.789151+00	\N	f
06e63731-8535-4949-8386-e1f531cc7538	bradon kiiza ngo'ng'olo	brandonkiiza18@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	24	Male	\N	f	2025-01-11 06:01:30.828026+00	\N	f
139cdc9b-82b0-4db2-ae12-9da4c3dbb18f	Brenda Atieno	brendahzam@gmail.com	t	$2b$15$AiFuut3tL1JEtdRBOsxQkOi/Jg6gjhkpiCCVnYIfQULED6pRVEIGW	AGENT	33	Female	\N	f	2024-11-06 12:18:54.075553+00	\N	f
10d805ed-704a-493f-93de-9c0bd809121b	Benny mumbua	b7162796@gmail.com	t	$2b$15$Kc77tZ1xNDZppcJyU2Vij.503Ja6kaiUjuFxh476V39ktlkAj4CDK	AGENT	25	Female	\N	f	2025-01-21 12:00:26.861249+00	\N	f
2865a5fb-dde2-4301-b776-cdbb955841ca	Lorine Amakobe Sakwa	sakwalorine98@gmail.com	t	$2b$15$QYo/gFXZ03DpYYsGdIe.G.HSDhMOiv5wXmMzp9H7vgvg3fL0/WNXS	AGENT	26	Female	\N	f	2025-01-22 05:05:30.720876+00	\N	f
4f1afdc2-ad42-48f2-9031-3e9de92d1b3f	BRIAN MUTINDA MAKETI	brianmutinda407@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	18	Male	\N	f	2025-01-10 05:25:57.610369+00	\N	f
3fcdaf3b-1016-4d3a-b114-f1991e06eab9	BRIAN OUMA OTIENO	briotienoo@gmail.com	t	$2b$15$iQHXs9.FEK92XCRxSBNlsOB8tsd/.mcNhj/VF6FgYaI9ucBBxzqmO	AGENT	27	Male	\N	f	2024-11-06 19:27:48.028075+00	\N	f
dca92a17-18d7-49e2-9019-71c897ac13ec	Brian Onyango	bshmigs18@gmail.com	t	$2b$15$TANu6fcM5QQMTz8ktYNgHeAF0nGl62iOPSQL0G2RPCCc17v1ALWzW	AGENT	25	Male	\N	f	2024-11-06 16:57:22.063476+00	\N	f
667a67bf-51fe-4df3-b523-00ae295a68ce	Charity Moraa	charitymoraa780@gmail.com	t	$2b$15$Mgw5A1E95VsN9JES/A9QZOfGDX0fC/83FEq1qsiG4FnApN48iAhya	AGENT	24	Female	\N	f	2024-11-06 11:01:44.095525+00	\N	f
d0f1b707-51f2-4e1c-a9b6-a2e53be83141	Charity Munanie Nzomo	charitynzomo227@gmail.com	t	$2b$15$CyzLHUeH3342BU5fi0AU6eCqYSq1JqvnWpk7JCKzE9dL8no4YFnhi	AGENT	27	Female	\N	f	2024-11-06 12:03:22.445972+00	\N	f
f71951ad-c751-4e1c-9a01-bea44b935e86	Cherish Walker	cherishwalker254@gmail.com	t	$2b$15$/mZHEDUsb4diZlIZp17Sl.LNMeXSU23k3OtnJSKVHc50kkXifWmMS	AGENT	20	Female	\N	f	2024-11-06 11:05:25.919156+00	\N	f
999c84a7-dd44-4f2b-9a86-134ef97f90be	Christine Okore	Christineshanil@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	18	Female	\N	f	2025-01-10 18:30:03.152375+00	\N	f
285f2f2e-64ab-4270-92be-c481dffa0647	Caroline wanza Jeremiah	cjeremiah44@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	40	Female	\N	f	2025-01-10 06:13:57.147739+00	\N	f
24a31c60-e722-46e4-b5c9-4f514987267c	Emily Claire Nyamolo	clairenyamolo@gmail.com	t	$2b$15$ehw4xnFqusdgNkQXNnmcU.rVsKSnbFQoXS/.00IQm7kS8oe0HSrPC	AGENT	43	Female	\N	f	2024-11-08 06:31:19.069845+00	\N	f
097ffa61-c4da-47cd-a0e4-e3375e20a387	Clare	clareyakhama@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	33	Female	\N	f	2025-01-10 02:31:31.169923+00	\N	f
77c64b4f-76b5-4fb6-81da-677ab1b3163c	Clinton Obingo Onyango	clintbakhresa@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	25	Male	\N	f	2025-01-10 05:22:50.510313+00	\N	f
5a980e05-778c-40b9-a623-31035b5b7f1f	Damaris wanza Mutinda	damamutinda1@gmail.com	t	$2b$15$WOHTUxXB3/iz4zeEZU6leuBkJWCCnU5nqxXXu/e9N.NzbDW9cMO/K	AGENT	29	Female	\N	f	2024-11-06 13:48:17.602992+00	\N	f
8f48fc15-6112-4dd3-893e-1e50805d37c6	Daniel Ogamba Monyoncho	danogamba@gmail.com	t	$2b$15$d0.AWkH4y3jb.GG/G70Vxusoxg2mYNtmDWiN.Sqx.lciV4k7z8KPa	AGENT	42	Male	\N	f	2024-12-02 22:08:49.063969+00	\N	f
1cdb9264-020b-43bf-bc50-5d340d8516f7	Brian oburu	darlingtonongera@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	22	Male	\N	f	2025-01-10 09:30:08.867511+00	\N	f
3325f09e-46ad-416f-a828-5c087a3929c4	Evan David	davidevan289@gmail.com	t	$2b$15$aOMPlVpD2EUGQnj7zERGZOJ6tI0hg30qE8YJNqypodOu0iUuwPece	AGENT	31	Male	\N	f	2024-11-11 06:19:35.996937+00	\N	f
b6f08194-a214-48f0-858c-435a84c1eb2e	David Mutinda Musyoka	davidhobbes254@gmail.com	t	$2b$15$x3xDeu3Xa4m7EWJAr5nC3.lpJGAUXPu6rDPYhjdAaN7adBFvva3jq	AGENT	23	Male	\N	f	2024-11-08 09:26:59.536091+00	\N	f
f9bd0d46-0c09-4694-91fb-f83e900af5e2	Dianah Naliaka Wabomba	dianahnaliaka046@gmail.com	t	$2b$15$xJmd3fiNWEComkLDZ9YnOud0xNHlo0E6zX/8f9wACuY3TwEYGa9XK	AGENT	21	Female	\N	f	2024-11-11 07:15:28.498056+00	\N	f
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	Elizabeth Wanjiku Gakuru	elizagakuru54@gmail.com	t	$2b$15$AsQJzWogqLffgQL.9oagwO1WsIf3fBRGZtDZQPRJ7Ini3ylc2s8tm	AGENT	54	Female	\N	f	2024-11-06 12:55:06.092266+00	\N	f
5624a568-b393-4e62-a56c-1673b0482c1c	Anne Musyoka	elsieannembithe@gmail.com	t	$2b$15$3hbMewZtNATXzoQNo10FguC0wpxdix4e/gHSjKfAfLuol5EYv/v4C	AGENT	30	Female	\N	f	2024-11-08 06:38:50.180429+00	\N	f
23a17622-a50f-47b2-8d10-6769e4acf30a	Esther Nzioka	emuute@gmail.com	t	$2b$15$QcRoEg1I/UUdwq6J5a2ymOnbLvmdmx26ZDpTNDqeTbWRMyTczBFhe	AGENT	38	Female	\N	f	2024-11-11 06:20:24.002367+00	\N	f
06ebad48-e594-4137-bf33-4974e1102917	Faberson kyalo Simon	fabersonkyalosimon254@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	25	Male	\N	f	2025-01-09 11:03:23.22205+00	\N	f
17e70ae6-12fe-46a7-9d6f-472e8297cb12	Faith cherono	faithcheronotwo@gmail.com	t	$2b$15$yVn4mpkdrYAFZ8aB.cmtkuBaOnvvumBubB6ZDUwl0IyOL4xZwMK.W	AGENT	24	Female	\N	f	2024-11-11 08:56:42.754961+00	\N	f
7ca7d821-22be-4834-84b2-c80e5a5361cf	Daina Fransisca	fransdaina@gmail.com	t	$2b$15$QjWUhPy0W22cMXibM5b8sOkAI9ZmCJgvJ8Vr1lqkDfXgKs0kBz5bi	AGENT	21	Female	\N	f	2024-11-06 13:07:11.661246+00	\N	f
b13cb7aa-f6a3-4eeb-9124-84c4590ff148	Gladys Mavisi	gimweka50@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	55	Female	\N	f	2025-01-10 15:51:51.199006+00	\N	f
b2715e1a-0cc2-4e7a-9128-045c0c688611	Gloria Kasaya	gloadira@gmail.com	t	$2b$15$rVX4ncqyCGxpaKdCaxu9RuxKEnXdch4YuVKIV6hPZnhBY8WhFfzoW	AGENT	40	Female	\N	f	2024-11-11 09:07:36.333429+00	\N	f
51d92d75-a817-476c-9477-7327d748bb91	Gregory isaac	gregoryisaa005@gmail.com	t	$2b$15$PsqS5a4xx.A9pPLpZLkQMedwmpSJisw5su8zXazqozKijZ7S6FvMu	AGENT	23	Male	\N	f	2024-11-07 06:56:26.251132+00	\N	f
e27db88b-2061-4cfb-91b5-d83904320202	Monicah waithera Kamau	hacinomceerah@gmail.com	t	$2b$15$6kf2j/IdzUTxMZmU6sIFd.nwypAskFDE/GQS5ii4BekhJYZAywXr.	AGENT	27	Female	\N	f	2024-11-06 11:38:39.599886+00	\N	f
cde22970-f53d-47fa-97ed-db016c009f98	Haron Kencie	haronkencie@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	38	Male	\N	f	2025-01-09 09:09:07.674027+00	\N	f
4615f82c-0260-4aa4-ae6b-999dcce70f3d	Halima Nyamizi	herlymah099@gmail.com	t	$2b$15$.8vtM.rp0x7ECfCf25jaBOBqoYdB1bJxm9m8tcjmgEnWC9pe/0hNO	AGENT	25	Female	\N	f	2024-11-06 08:23:14.960112+00	\N	f
4398d0a9-933e-4efd-9906-b920e390c872	Hannah Wanjiru Gichuhi	hgichuhi646@gmail.com	t	$2b$15$xf7HYidxfA2vk4KYagacCOxopeUr0BP7/O3MO2KMyqHJ5y.RUepaC	AGENT	31	Female	\N	f	2024-11-11 07:07:20.983135+00	\N	f
41dc1b6b-00f4-48d1-b083-d1d6ad62bd1f	Tomi Igan	Igantomi@gmail.com	t	$2b$15$0FHCAcUxOyaJiDhQCGAOxeEXnDr8J6GnMXKDmYqwFno3HMH/2YXAi	AGENT	32	Male	\N	f	2024-11-07 08:12:59.478524+00	\N	f
1280a7c8-3af8-4fa7-bb97-5bb989dccf56	Irene Akoth chanzu	Irenechanzu@gmail.com	t	$2b$15$JhHKX0kcGLigTRKPLORy0exqi6E2sMMs97k7xe8MRhYGeqS5gMGxO	AGENT	27	Female	\N	f	2024-11-06 11:42:39.120131+00	\N	f
a2d5b801-5a09-415e-afc7-e4e16400eca2	Awino	itzayanaamariah@gmail.com	t	$2b$15$RNv2ExAIegIFsFC9qWrX6.0jBVaIG6vav4mQk7r9XIMUbKYBuYDmi	AGENT	35	Female	\N	f	2024-11-09 22:54:04.713577+00	\N	f
e3fc0be9-1068-4a67-a933-b13d4e13daa9	Jack Alaii	jackdavid69558@gmail.com	t	$2b$15$v9Q523mdGLZzvXvw46DaROMmJ.IMB5f6FfNo5oHz0glEw0IFplbfy	AGENT	23	Male	\N	f	2024-11-11 10:08:31.147422+00	\N	f
edcf5863-e044-48b3-a6b7-69ffa7f265c2	Jamal Said Tendwa	jamaltendwa18@gmail.com	t	$2b$15$LiGgBfEbciWdX6jS/8RkZO.n73pN.wPufwy8OKfksvHqbs2Og5tvq	AGENT	23	Male	\N	f	2024-11-09 17:25:47.995181+00	\N	f
3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	Mary wamaitha	jaymohhazi@gmail.com	t	$2b$15$sqkF1dq4b2OintRvxxz3VOO7vy8FZUuOSnI3/tM4OL3vMJwganjrG	AGENT	32	Female	\N	f	2024-11-10 17:24:31.457546+00	\N	f
d0b05df9-2e8f-43ab-a16e-247efb7b6fa0	Neema akinyi	jennifermaaga@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-10 06:15:32.809806+00	\N	f
11f24999-5b2c-4b15-a0d0-3554121bf9ed	Christine Gesare	christinegrsare@gmail.com	t	$2b$15$WCqZAczDIZkDwVg0bqD/3O1qFnpEyCM1xZpdaLV4rLhGtPW7G2wfW	AGENT	23	Female	\N	f	2025-01-21 13:45:41.702548+00	\N	f
415f0130-2e4b-4513-8b74-d21445461a79	Donald Misati	donaldosoro96@gmail.com	t	$2b$15$aA/Ei/xZvm9nXYsSuFSnJOPlv2ioQMhPuM5tBNoJXYCryeLu2R86.	AGENT	21	Male	\N	f	2025-01-22 06:32:04.965742+00	\N	f
4dcd4071-5314-4bea-874c-e4c072f25f3c	Jotham	jothamwekesa9@gmail.com	t	$2b$15$W7ZPanXwqqdpMOBV3o3KqOdJ0bvGQQtjOArUulxGe/2aFAvu9tWle	AGENT	30	Male	\N	f	2024-11-11 07:21:53.770501+00	\N	f
1e91527b-44e5-4939-9eb0-3dd0d61499d0	Judith Kagwiria	judykagwiria38@gmail.com	t	$2b$15$jje9BkYr7zPwXu3t082s5eYdN1g9xV3OPdEybN0F/BTwniP0ePNm2	AGENT	28	Female	\N	f	2024-11-06 12:34:04.32544+00	\N	f
e6e98e27-ea8c-4b26-b53c-bd63dc0917ce	Winnie Kagendo Rutere	kagendowinnie@gmail.com	t	$2b$15$CjG3fI2Y6EWbwXNUxOL1Ce3CPixpunn0JCtOGb1Gb0yTGqnL8eGYe	AGENT	30	Female	\N	f	2024-12-12 07:44:16.208016+00	\N	f
25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	Magdalene Kalekye	kalekyemagdalene9@gmail.com	t	$2b$15$M.lw5N9As0MasSPfkFqz2e/OPnowPQBzTBmT/Avw8QYtXZKSHidl2	AGENT	22	Female	\N	f	2024-11-11 09:38:05.846672+00	\N	f
0c69b211-08bf-49e2-80b9-d345b34a1539	Daniel kamau nyambura	kamaudaniel975@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	28	Male	\N	f	2025-01-09 17:58:16.701053+00	\N	f
cedcb55f-d753-485b-ac19-72225d399bc9	KAREN NDANU MWENDWA	karenndanu1983@gmail.com	t	$2b$15$u5NLZQNUqfu/QPTKhlOjE.jF.1bc8jjORH575/RcrykiZ0rPcgObi	AGENT	41	Female	\N	f	2024-11-09 17:05:39.819834+00	\N	f
d5864654-8e03-459f-9641-67cc53e0a1d6	Naima Kariuki	kariukinaima@gmail.com	t	$2b$15$bYXgCMwR68edzA8tGz8j.O/YQrNgHzEcMKB59GYub3JcMvqg3S9zq	AGENT	20	Female	\N	f	2024-11-11 10:28:47.495728+00	\N	f
d420e7c7-3fca-4984-9a7a-e254039ed9c9	Karl Erick Mohami	karlerick678@gmail.com	t	$2b$15$MRe6Q3wJIu2ClyxFzsQYZuOKydY2KDobb.0o.DD4N./Rn3PfG3m76	AGENT	20	Male	\N	f	2024-11-09 18:10:43.765289+00	\N	f
52432a7c-8874-41c9-8e22-23fb1c7823d0	Jesse kimani macharia	keemkimani7@gmail.com	t	$2b$15$9aIRlbk/7jNbF5MKgkzrp.IP7JLmQT9L16afPVHL9ejYRUcCTiEJa	AGENT	22	Male	\N	f	2024-11-11 09:54:21.38517+00	\N	f
97f03cbb-2462-44e3-bee4-ea20c5f5ff33	Kibibi Mohammed Athman	kibibiathman3@gmail.com	t	$2b$15$Z8WosITwaUCHfCy3gCPtVe/diPCebZUXkF/Fy3LZLMUR0xVbz6nXC	AGENT	34	Female	\N	f	2024-11-11 06:38:02.923829+00	\N	f
580ecee2-43ff-4af2-b3b6-e8fc2e35d577	Faith Mumbia	kingoofaith17@gmail.com	t	$2b$15$ljYmFK/yFQmVm8Bey/5YOO6r95xBP1mOCOQyX8m4An4RSO0UXYaRO	AGENT	27	Female	\N	f	2024-11-11 09:20:24.073778+00	\N	f
ebacacd0-20dd-433e-8cec-2e072453705e	Cornelius Kipyego	kipcor3@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	36	Male	\N	f	2025-01-10 08:16:03.722673+00	\N	f
6232ba3f-45c7-4e21-ac60-e5e11b550211	David Livaha Kitisia	kitisiad@gmail.com	t	$2b$15$O.QTYB.mKioAbH8no5ZQB.mZAa3gMbjdbRDoNmfdfoKmx7m/efCjC	AGENT	52	Male	\N	f	2024-12-02 11:25:28.427567+00	\N	f
69bee2d7-0255-44e7-bd56-24a4f137827e	Harry Kitonga	kitongah1@gmail.com	t	$2b$15$a6JkgX.KZLO19ka14Tb5vOoGlYRSiVIueM1N8K7rnbWT6jiLK4/KS	AGENT	32	Male	\N	f	2024-11-07 11:36:38.014133+00	\N	f
2c588913-9361-4dae-8f33-e4973ec44dc5	Philip Kitoto	kitotophilip@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	34	Male	\N	f	2025-01-11 10:26:52.841189+00	\N	f
f47f2950-4c39-4fe3-9c63-78042db0f6bf	LEMISO PATRICK	lemisopatrick1@gmail.com	t	$2b$15$eQP/pZPblaoviSxkLKCRD.QewyiqL4pAiSPI0x9/2TIkRsRyv85.6	AGENT	27	Male	\N	f	2024-11-07 09:41:54.53711+00	\N	f
f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	Tristan Mwendwa	lewisboom321@gmail.com	t	$2b$15$iJqxU7ZoYA62wvndc6IfauLominFYeDryKU9JiBEW0TCXICon2816	AGENT	29	Male	\N	f	2024-11-11 08:21:34.989632+00	\N	f
b679f41d-3873-4109-9d1b-aa124af12b6b	Lewis Muia Machowe	lewismachowe@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	30	Male	\N	f	2025-01-10 05:16:18.429287+00	\N	f
66227dae-7448-424d-8eba-026c3ebd99d9	Lilian.  Andisi	lilianandisi367@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	37	Female	\N	f	2025-01-11 11:48:34.355843+00	\N	f
3f5d3c7f-4993-48c1-8499-fba142eb8b49	Loise Njoki Wanjira	lnjoki1880@gmail.com	t	$2b$15$CmslQGQPLRErtt4ywtiJh.ItP8OU7H9rNTXtFCJXX7mzBbj7PWFiC	AGENT	21	Female	\N	f	2024-11-06 12:21:43.683938+00	\N	f
db118a6c-ee11-42b1-8746-d2b43890f3b5	Lauren mwanga	lomwanga1@gmail.com	t	$2b$15$jaJbaDixT2Yenos/PHx.g.IQbagOh8GjxBHtRE43vl9CT/SXQDPaa	AGENT	23	Female	\N	f	2024-11-11 10:27:34.262572+00	\N	f
41b23501-8877-4a01-8152-f67094581304	Loret Atieno	loretatieno@gmail.com	t	$2b$15$Ah/A1c.UgLok341n3QitkufoSFBKzVRtfRLgCZvq3ho1AZRnZpO1a	AGENT	34	Female	\N	f	2024-11-09 15:18:49.57842+00	\N	f
eeb4e81c-81f8-4d90-a39c-d4ea906e3337	Lunayo Yvonne M'mbone	lunayoyvonne@gmail.com	t	$2b$15$N.IsBSCOLtuJtBq9SoQxHOb19hNIyfhnnTG5FhJEvEiKg3nnsDmj.	AGENT	28	Female	\N	f	2024-11-06 11:23:50.380818+00	\N	f
f0e6fa0a-21d3-4a14-98de-f9105b5f569a	Esmily makio mwawasi	makiomwawasi@gmail.com	t	$2b$15$yF31gDHDPVI/gqCJXKYh5eFgu6eA9mN24K8GlVwjcZgFKjtloYcqC	AGENT	57	Female	\N	f	2024-11-06 12:17:35.707939+00	\N	f
bf12e948-da47-4690-8772-efb6ce2e7fe5	vanessa  malesi	Malesivanessa5@gmail.com	t	$2b$15$8tKA.7BqbgbQrMV1mzET2OYVsuMtfevKotusyoQxEjSTLbhAFKwyC	AGENT	27	Female	\N	f	2024-11-06 12:18:23.327639+00	\N	f
5ce766ba-9c10-4515-8510-12b2c32e44d2	Maryanne  Wambu	maryannewambu2@gmail.com	t	$2b$15$W0Ll4s3B9TLwiqZAcYGoBOPEn05mRa0bPgfbEk6HZHNRs0/NNq5sW	AGENT	22	Female	\N	f	2024-11-11 10:08:18.847294+00	\N	f
6203c286-76b3-4684-a33e-6344cf5cb905	Climson Matasyo	matasyoclimson813@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	26	Male	\N	f	2025-01-10 20:36:13.205413+00	\N	f
3faf9701-6499-4e1d-9fd7-0b7d04fcfa7b	Mercy mutiso	mercymutiso57@gmail.com	t	$2b$15$sgQtLPTHJBoEu4O5wf2pAumC1kewlixGtXkX8Vpj5wfdPkEhPuJoW	AGENT	21	Female	\N	f	2024-11-06 12:33:24.943596+00	\N	f
f5b72654-37e1-4fbe-8ec8-5f82fec41fc1	Mercy Mwende Mwiti	mercymwende812@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	20	Female	\N	f	2025-01-10 13:32:52.061964+00	\N	f
f522d6fc-340d-4878-871a-a39aff2431a1	Nicholas Mhandoh Opadoh	mhandohnicholas@gmail.com	t	$2b$15$0YPgy5HxLZhzRpIGJNhXUO2G5ACNwoGXfiqMtiuhPEEYls8M4drbW	AGENT	25	Male	\N	f	2024-11-06 13:15:56.391123+00	\N	f
10838292-3331-4e99-9482-f345c60eda58	Michael Kamau	michaelkamau2276@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	28	Male	\N	f	2025-01-10 05:28:43.603574+00	\N	f
32b3005d-61e7-4b06-b4e5-742b070968e3	Michael Ochieng	mikeogwe@gmail.com	t	$2b$15$ybEOxJjCeUEB126hYTHCguA8aouCp/ezzpy4dQTVMsD.0z0b.fRZ2	AGENT	25	Male	\N	f	2024-11-07 11:25:44.94497+00	\N	f
a1b48c81-a072-4c55-ac64-b8027b889b7a	Philegonah Mitchelle Atieno	mitchellephilegonah@gmail.com	t	$2b$15$m85shm8eSIBtVHymt3rIHenMmvajGC9zNeIYlIXMtAB6iw9Bjt/KC	AGENT	24	Female	\N	f	2024-11-06 11:51:06.686585+00	\N	f
af1e06f0-6143-4474-804a-35d8ac3cd650	Mustafa Mamadi	mustafamamadi12@gmail.com	t	$2b$15$zZ9mx8SzJLudaKL5yNTo.ekXH5xRIUCftyQbmPCiirHtTLsLWPbPm	AGENT	25	Male	\N	f	2024-11-11 11:37:57.507331+00	\N	f
b73c1522-4204-426a-82e8-6d201d06f1eb	Daniel Muuo	mutukudaniel009@gmail.com	t	$2b$15$uvQ.qk4V948FvZ.3MirUuOo5FBC8BbE4OAmg9A1KiZIKNDlqUPtBy	AGENT	25	Male	\N	f	2024-11-08 09:08:34.200564+00	\N	f
900b7a11-44eb-43ee-a255-a44db0c51e52	Samuel Mwangi Njoroge	mwasein99@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	35	Male	\N	f	2025-01-12 06:22:43.940373+00	\N	f
a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	Caroline Mwende kioko	mwendecaro96@gmail.com	t	$2b$15$r0or0Ex/Yzw3G0JsI0ibDOiM9PLoll9SkAdUPjLM8doUIjy.MMPwK	AGENT	34	Female	\N	f	2024-11-07 10:12:33.45006+00	\N	f
01939367-739e-4fac-b0a6-cb01a8067a79	Genedy Tartavosky	genedy@gmail.com	t	$2b$15$RnucoFaDJfPugyr9igv7W.LeYfIt05182hJQHSQ/KVsgQvZT3QtX6	AGENT	40	Male	\N	f	2024-11-06 11:56:46.244318+00	\N	f
42ab60ec-e810-4143-bf8a-9d336e5de4a0	Sharon Wairimu Muthoni	sharonwairimu37@gmail.com	t	$2b$15$wrbQeBr.uUAHEoG/gNZPkOdCb/Qaw/xnkXoZQF6uDJ2uTq0nOvWZW	AGENT	23	Female	\N	f	2025-01-21 14:29:37.832261+00	\N	f
3869797e-34e2-45ff-af1e-1bb41c484c1b	Annitah kyuma	mwendekyuma22@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	24	Female	\N	f	2025-01-12 10:53:08.752291+00	\N	f
49c5437e-d309-4abe-96e9-23fa7398d776	emily waeni king'oo	mwendwacaleb90@gmail.com	t	$2b$15$xz9BLLo0yJTjWOzlpob8qO8HDS/8Bi7FNX4Qee5YSjP8w95fBbK5W	AGENT	26	Female	\N	f	2024-11-06 18:18:21.025249+00	\N	f
818831a5-b451-4c20-bbf0-024669cf7577	Reginalda Nasambu	nasambureginald.nr@gmail.com	t	$2b$15$TFQ8Tk7/U7Wo4GXG4zd7e.ZXyIbJBBPcHupISaqAD6G0lTonp5IvC	AGENT	24	Female	\N	f	2024-11-08 07:14:23.331126+00	\N	f
a429cc4f-2511-42a9-b375-07b9cd47cacb	judith malinda	ndulujudith@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	40	Female	\N	f	2025-01-10 04:22:20.074196+00	\N	f
212a1408-70b6-4592-be49-d4ba81008add	Nellius Irungu	nelliusirungu97@gmail.com	t	$2b$15$IXqxa8440kGOpTNz4V.TF.XrdRHw8E6Tw3Jk3Jvj2eMCYqPQIRyJO	AGENT	27	Female	\N	f	2024-11-11 07:08:58.741565+00	\N	f
75fcfe69-fa3e-4462-a4be-ea438612cb6b	Nguiyu Mutungi  Nicholas	nicholasmutungi2@gmail.com	t	$2b$15$pOINgpvUdlEbagm3c9I4t..fm51HcZ9fj9Puq2FO2nb1yHzlSAule	AGENT	49	Male	\N	f	2024-11-07 07:15:10.732544+00	\N	f
af2caf3e-5a28-491a-bc5f-f869ccc09f38	Stella njagi	njagiwawira18@gmail.com	t	$2b$15$YwIWxSKeSpyFEBkbf3LgEeadtIBS23e6K.SVEhGYtbxGDe0o/5hm2	AGENT	25	Female	\N	f	2024-11-11 06:50:07.47159+00	\N	f
431841a4-269e-4fa9-a265-476836e7369f	Grace Nyambura	nyamburagrace380@gmail.com	t	$2b$15$dSZlsixuT52otmhEFsfmH.QleG5MRJSEDhwgRFdiscizlJdyL382q	AGENT	23	Female	\N	f	2024-11-09 19:39:12.091415+00	\N	f
3bca75f1-bba8-4e61-8a2c-60e9c96863cb	Maxwel Odol	ochiengmaxwel@gmail.com	t	$2b$15$QkxXOsri1MO/lR.Bk5zxFunYYmFBKnBS74pZLV8zUXVhSEJZIBFwK	AGENT	25	Male	\N	f	2024-11-06 13:23:07.97707+00	\N	f
5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	Cecil Oduor	oduorcecil731@gmail.com	t	$2b$15$esHWl51/C/G0EZuNom4L2uASPTyvHn2ECl0JDICrKfyDUgeR6rENG	AGENT	22	Male	\N	f	2024-11-11 11:02:08.286174+00	\N	f
fbe0dd97-1226-4e2b-9587-8ad93339c11a	CHARITY ATIENO OKEYO	okeyocharity93@gmail.com	t	$2b$15$Gm2IwwpHgku4aI6tv4LmFusp7DaSxpZFoLZ0dl3/eQoyqb3Ae4nU6	AGENT	25	Female	\N	f	2024-11-07 10:31:01.949898+00	\N	f
739e8b3b-fb8b-41b6-97f0-f06d4a2ae9dc	Olivia Atieno Okoko	oliviaokoko01@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	32	Female	\N	f	2025-01-10 04:03:34.74316+00	\N	f
fe77139a-17e2-4d68-b0e5-29b401ee03cb	Trevor Omondi Onyango	omonditrevorr@gmail.com	t	$2b$15$GI.pUUbG28lFmzxCvhOzN.DaUH1oO8xxyDpPKaMWLZSgt7CarSA52	AGENT	26	Male	\N	f	2024-11-07 05:18:55.17981+00	\N	f
44663c0d-e051-4cfc-9803-211def0c67cc	NELLY OMUTOKO KAGAI	onekaholdings@gmail.com	t	$2b$15$cXfWiZWxN4E6cRz.nseYqee0el26RevXHfdzBhb//CbF1D.5B4mk2	AGENT	39	Female	\N	f	2024-11-11 10:55:01.034436+00	\N	f
0b29de00-c97e-444c-8640-87fee3330781	Christine Opadoh	opadohchristineawino@gmail.com	t	$2b$15$eoABmTrFQ8L1GSqyIbScJOxEYUqQYxCtN9leLn9Ct5vKowG1kO.8q	AGENT	27	Female	\N	f	2024-11-06 12:15:20.26456+00	\N	f
2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	PATIENCE JANE KIMANZI	patiencejane1996@gmail.com	t	$2b$15$1rvMmRBnJh8CXA3Xe/u.a.eOMg/5BILR5c4AmiCl6Y40xYgTHb./2	AGENT	28	Female	\N	f	2024-11-11 11:42:12.490536+00	\N	f
4581c5c1-996b-46bc-a4bb-c63f5a0ff232	Patricia wanjiru	patricia.ndungu@gmail.com	t	$2b$15$vGCzddgerPZPW7Ep3p6csOkPway73ZmNXGoVIgO9IwbiPxAcMKT.C	AGENT	42	Female	\N	f	2024-11-11 06:37:53.860889+00	\N	f
199cdab2-6af3-457d-8590-4069f4b5ab27	Peter chemos kimachas	peterchemos82@gmail.com	t	$2b$15$hLjP6xrL/NffTDMKGqbjWuhejZedSUX49cd/s76mBdjpgkzQkObWq	AGENT	21	Male	\N	f	2024-11-11 08:56:08.075466+00	\N	f
ffd9df51-64f1-42c0-a732-bd73e2fc2666	Peter Gathii Mungai	petergathii.pg@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	27	Male	\N	f	2025-01-09 17:39:20.074652+00	\N	f
d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	peter kilimbui mutuku	peterkilimbuimutuku@gmail.com	t	$2b$15$51q6Rhooaw1aC/DBnexdE..x3pCbCNIxXMYlg3KyGQFu78QxlQjsq	AGENT	36	Male	\N	f	2024-11-11 09:09:49.398795+00	\N	f
c5e824ad-5c95-471c-8889-a2d0faba20e4	Peter mwangi wanjiku	petermwa213@gmail.com	t	$2b$15$VUWrwkY6C8jen0OrQr.QhO2OnS/vNas4NbOk36VkwR6R0WPzKrxW.	AGENT	29	Male	\N	f	2024-12-12 10:39:16.888495+00	\N	f
fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	Reginah	reginakemunto95@gmail.com	t	$2b$15$O0AhUUGH/ieuTPqlr.r/2eethilJvun.PVhXVRIa305VSSOZs3jfi	AGENT	29	Female	\N	f	2024-11-10 05:35:18.301193+00	\N	f
5dcc831e-1718-4f56-9c44-250814c45d40	Rennice Tamara	rennicetamara@gmail.com	t	$2b$15$t/ddOUVzbrJphqk1g9cvd.saaUq6PoW/73V4KL3rmFHL4i70JZZD.	AGENT	18	Female	\N	f	2024-12-01 00:23:58.042301+00	\N	f
aac7a99a-ddef-4493-badc-63487c667327	Rhyan Ochieng Otieno	rhyanochieng@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	26	Male	\N	f	2025-01-10 04:40:52.560929+00	\N	f
f4cd1ed0-e7c5-4664-9d8f-179db40cb245	Ricardo Omondi Ng'ani	ricardoomondingani@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	20	Male	\N	f	2025-01-13 06:40:46.441288+00	\N	f
a6c2e31a-9cba-485e-9944-78e15d5872c2	Rosemary muchene	rmuchene13@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	32	Female	\N	f	2025-01-13 06:23:50.254653+00	\N	f
84a74d7e-c01e-463b-9a0f-6b7c38531c00	Evelyn Runo	runoevelyn@gmail.com	t	$2b$15$wcawoChf9w5D7/FYQWOPfuGd0hsUn.v9yJIZ3dh0baOzirvSzcoUe	AGENT	37	Female	\N	f	2024-11-11 10:56:39.834057+00	\N	f
1dc74f31-a53e-461a-aef1-fb2488b86736	Cess wambui	samkiki088@gmail.com	t	$2b$15$c6/52bJ4NSawRQUKZdM0ZOqP3NQF6jtVFUn5Ubi8x0YRNLP79q9Uu	AGENT	24	Female	\N	f	2024-11-06 12:36:25.194348+00	\N	f
cd81dc40-36f1-4399-b5dd-65a0b43b0fec	Samson Odoyo Oliech	samsonodoyo1234@gmail.com	t	$2b$15$RzMvxTQeLyf1rsxFCgRxHOpFyKDAAQmTBUAiQrL/b49QnmuCzUu9K	AGENT	50	Male	\N	f	2024-11-11 10:58:32.736025+00	\N	f
f8b3c5d2-d56a-4425-8736-53d5463ecf12	Sharon akinyi onyango	shaakionyi@gmail.com	t	$2b$15$MmlNzSsHULZFLeB0JTdve.xKHNBMIHwYkJ0Jsgk7hI3h25uwm.tYm	AGENT	35	Female	\N	f	2024-11-07 10:03:17.020052+00	\N	f
4de64e92-dc71-4005-a0de-f46e4df56f27	Ann Onsongo	shoppzone19@gmail.com	t	$2b$15$fDttiNQGdnUu.q2TVljigO267NWSCLl4uHYg1zvNhZEBtMb66Q2AG	AGENT	29	Female	\N	f	2024-11-09 11:34:55.175186+00	\N	f
c087535c-2607-4622-902a-51b6e1dae5f3	Salma Sika	sikasalma2017@gmail.com	t	$2b$15$s7iedBIWrtU4MFOsbrzL9ur4.dDteq3HQc2D6cosWtwESyLllaRca	AGENT	26	Female	\N	f	2024-11-06 12:22:02.685373+00	\N	f
3ca33325-2cac-4895-a875-71e4e3a6e931	STANLEY THIONG'O	stanleythiongo32@gmail.com	t	$2b$15$ZEzKQo1uVdO2He336PPUKeIdaG1HAjaiPgN327FSQYVLL5qRYqBj6	AGENT	25	Male	\N	f	2024-11-08 06:45:59.158497+00	\N	f
c5b2084c-de9b-4b57-9019-19374c439cc8	Stacy Stefani Njuguna	stefaninjuguna8@yahoo.com	t	$2b$15$Ugvnj4SjhdSJIEjQF2qxZ.leFM6VKwSSosoOoXnPcNQQ7VxDxLIMS	AGENT	24	Female	\N	f	2024-12-12 08:51:03.506298+00	\N	f
3e8bcfdf-7d25-4213-8401-43f25abe93ed	Alphonce Odhiambo	odhiamboalphonce23@gmail.com	t	$2b$15$G6wAebQI2pksrQ6fWQ9ElekQ4AInZzSCwaIbTO7g7b/b7yT.gKYkC	AGENT	23	Male	\N	f	2024-11-10 15:42:42.895929+00	\N	f
75b87d71-3545-4032-adcb-64700e7456f7	UnbedeKt DT	ubermatchvlaad212@gmail.com	f	\N	CLIENT	\N	\N	https://lh3.googleusercontent.com/a/ACg8ocKwcBbs4yppXjp2NQxGnPfHXIonKyrNfK5yGzq1YzLcm-yhAVKC=s96-c	f	2025-02-28 17:35:39.480371+00	116706907497027608100	f
fdb9f1a0-35c2-49e0-8667-42afcd5d91cf	Fredrick Odhiambo matete	dyfredash@gmail.com	t	$2b$15$g5B9aiYGRf1Hmdg9kFcqXea3Vud4xllpbUYiYGdit5nqWCE3w67BS	AGENT	38	Male	\N	f	2025-01-21 14:30:36.675255+00	\N	f
97cdba61-a19b-4dd5-8a68-34fbe21d9a36	stellandanuMusembi	stellandanu57@gmail.com	t	$2b$15$35Z3W6465VHxIubJ1xX5NeZwCzkhG06YPxRQVZrwgUfE8NpyqUvlq	AGENT	19	Female	\N	f	2024-11-11 09:50:48.435472+00	\N	f
1a749cf5-8652-4318-b1c0-a9b67b7fd4ee	Sylvia Jepkoech	sylviachepm@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	24	Female	\N	f	2025-01-10 08:20:39.76417+00	\N	f
220c3547-0541-45e1-b769-e4a02cee8945	Stella Syomiti	syomitistella11@gmail.com	t	$2b$15$A93MnVy0AUIF9lL9ixj7wugYAl76v7andDQWfznfnYdB/HELcIK.O	AGENT	26	Female	\N	f	2024-11-07 11:46:37.470836+00	\N	f
8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	Richmond Taari	taaririchmond9@gmail.com	t	$2b$15$6xjTvSJ57WqqqOav./luweR5X1voI.xihkLAN9XYGU65mCCb9ixVi	AGENT	23	Male	\N	f	2024-11-11 09:44:38.871008+00	\N	f
f1bf08a4-085f-4b82-b296-639d636fb2f0	Taati Eric Nteere	taati.nteere@gmail.com	t	$2b$15$iNEMfU3z1nIeMctlVZ8xKeJoqIt3c2IvdZiv5rD90XZ3rRcQsGxNK	AGENT	21	Male	\N	f	2024-11-08 07:05:26.015633+00	\N	f
4b937413-4084-48a1-b6b2-8f856442f7ae	Claire Wanjiku Chege	tatecla@gmail.com	t	$2b$15$WePZD/X8dv/ALqvEBwn3t..OtguluzeJNoYjzYvpvyBBtJ9ZuO24S	AGENT	34	Female	\N	f	2024-11-07 12:05:56.515278+00	\N	f
6d7b25aa-a203-4980-b14c-e41c92ab0c87	Taunas Otieno	taunasotieno@gmail.com	t	$2b$15$822724Hy4bK6wbrw7RXXQeGm1e4cxDz0U2hzNm6GIVXpOKpCXlwHW	AGENT	30	Male	\N	f	2024-11-07 07:26:21.899166+00	\N	f
4b07c44e-a189-4fb7-bf08-18414c44f187	Tracie Khasiala Sakwa	tracysakwa@gmail.com	t	$2b$15$wwM6G.ET/WJ9o..LyRwJue4P1SYk92ILvH2CtyzwX66FEW.8cP4Qe	AGENT	27	Female	\N	f	2024-11-11 12:18:28.781656+00	\N	f
9752158e-7e1f-498a-b058-d9bb38a2ce30	Vera Osodo	veranicks59@gmail.com	t	$2b$15$cruEzNbrssyxIAxh5sGDYeOtXDPaxWjn/YDruHJI5uNATDhXCActS	AGENT	37	Female	\N	f	2024-11-06 12:23:46.057162+00	\N	f
7fab95dc-bf02-4489-b176-22388372351f	Victor Afwande Ojiambo	victorafwande@gmail.com	t	$2b$15$5NqqpIkdBNNQpczViZV4xuARLf9.hKJnnb/Va75hl1jdsOLKCgdzu	AGENT	35	Male	\N	f	2025-01-09 01:44:52.363212+00	\N	f
e83a0142-c342-40de-aad2-835e5d614ccc	Victoria	victoriaotieno@yahoo.co.uk	t	$2b$15$MfdqkFutyO/2sK9SUY.29Oop1aj6FFyVfMXKGGk/1SHEvXYGXOF3u	AGENT	51	Female	\N	f	2024-11-11 08:48:11.898592+00	\N	f
efa4772a-cf28-4f3c-b2af-96ca2e50f4a0	Victor Kilesi	victorkilesi99@gmail.com	t	$2b$15$iSmMDInVvI/YdQGr1sx9E.tXgMrqkX68iOmg89OLd2ZYzTma368Ry	AGENT	28	Male	\N	f	2024-11-10 13:38:34.632716+00	\N	f
815533a5-6869-4118-9d2b-8d094faa6f90	Victor Musyoka	victormusyoka101@gmail.com	t	$2b$15$scWZytkmg/Sz.S8iwDjypu68ZFdMEPfKp2sEt6HL.BE1SderJQei.	AGENT	23	Male	\N	f	2024-11-06 12:17:26.315133+00	\N	f
d618da68-10ac-4822-a536-ec15839c3c77	Victor Mwangi Njuguna	victornjuguna26@gmail.com	t	$2b$15$Ui1YYRygcWPgGUy7qiinEuTKEc4Ji432/T/7twAiUy.kMAc5Qpmhm	AGENT	31	Male	\N	f	2024-11-09 18:31:08.693346+00	\N	f
779c8b25-8d69-496b-8fde-b8f1748b385e	Victor Omari Ondara	victorondara8@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	30	Male	\N	f	2025-01-10 09:28:32.085668+00	\N	f
121f945d-4974-4a74-97e0-2bb9cdadb25b	vitalis wafula	vitaliswangila57@gmail.com	t	$2b$15$Eiko/LdY/r3E0iQw7amnSulfJ6M59ETr/p6ELCGPSpPyOTLcHtnIa	AGENT	29	Male	\N	f	2024-11-06 12:27:52.606323+00	\N	f
72c9a021-91fb-4319-8858-789ee9f83d6f	Mayliza wanjiku	Wanjikumayliza9@gmail.com	t	$2b$15$b19QvavFmDMFMzVdMzlyz.69mSeKFSep3LtP3o4El6U2fpR3R7D8i	AGENT	27	Female	\N	f	2024-12-02 19:25:30.782928+00	\N	f
f20f511a-1581-48b9-976a-3574c7dac6cb	Devis Wanyama	wanyamadevis077@gmail.com	t	$2b$15$nhfi3epDVcffZ0cI33SiNeHZqR0qYzgRZiVWFZ4iBcaoVVDevOg7y	AGENT	28	Male	\N	f	2024-11-06 13:23:42.315758+00	\N	f
79e0b32b-5650-4c8c-8d73-71f3e1302ba5	Racheal Nafula	wasike.rakels.racheal1@gmail.com	t	$2b$15$68tywPMsZ.muRkb4cLucdef3GqC7sVoc56as9tOv5L9s/Cz5KF.7e	AGENT	30	Female	\N	f	2024-11-06 11:10:18.26752+00	\N	f
eeeae060-fa85-48a8-8b91-6a952d6f158e	Don Odhiambo	webmastadon@gmail.com	t	$2b$15$Tq6KLQz9W//haYNEykbece387ZwqRp1xoV8BtXabZdkzxh9ae9rjW	AGENT	42	Male	\N	f	2024-11-07 12:55:32.124502+00	\N	f
d5493931-5cd9-4913-a2a1-f8a96874332b	Williiam owade	willyhill384@gmail.com	t	$2b$15$P8QOOhNUX7UJQh2JJF8WZ.czMcwStTvUEWtRK/QnbBt8xgA9YhT..	AGENT	24	Male	\N	f	2024-12-12 09:44:41.05047+00	\N	f
1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	Gekonge Nyabando Wilson	wilsonnyaband73@gmail.com	t	$2b$15$p52iRpV/JmtdlSalFIzDceLoU5vvrSyIbj2EpQiQHAmGMLtC/ijRi	AGENT	26	Male	\N	f	2024-11-08 09:26:56.21665+00	\N	f
500ca188-07bf-474d-89fc-bfadd41cd7d3	Nazarene Nyambura Njuguna	zonahnyambura@gmail.com	t	$2b$15$QTRooPC0Rl9r.8Ra5fR03.uuPhmE7zvqxl68QItcSCNSRhjcZOhfy	AGENT	26	Female	\N	f	2024-11-06 13:54:35.78191+00	\N	f
e23b4ca0-5104-4061-ba8e-118a9f3f562d	Charity Njoroge	charitynjoroge644@gmail.com	t	$2b$15$SU26HaI9HKqUgccziI7RAum05xGWHF9jNh7mBvNQ.aGDtNvC72rKC	AGENT	54	Female	\N	f	2025-01-15 11:56:46.244318+00	\N	f
12059b01-c2cd-4ec0-a640-c4f80728ab8e	WAYNE EASTER	wayneeaster95@gmail.com	t	$2b$15$d82pzyTwp0MOY/RwoXOdDuN7S2nNQGdIsi3erOGg4TbpjYG0SExuq	AGENT	22	Male	\N	f	2024-11-10 18:54:12.169293+00	\N	f
f2821b0b-96e9-4b5c-92e8-8a9c0fba3116	Ery	foxdrive.rycoh@gmail.com	t	$2b$15$mYRf1dS0DyRQZTOBwsdCbeAK/15bTHv3.jmuVCHeHqO22QnqqXzkO	CLIENT	\N	\N	\N	f	2025-01-21 15:53:08.650564+00	\N	f
55c8bb46-93a8-4fa8-91f8-c9630eaac44a	Mitchel Oyugi Onyango	pharellesmith@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	28	Male	\N	f	2025-01-11 04:06:21.600006+00	\N	f
9c159f1c-6589-41e7-84c7-3da9eb15809c	Edith Nakabuye Joyce	edithnakabuye@gmail.com	t	$2b$15$zuti.7KDiHLbtj8sgvWu3OFwhnYQSyfc5vqGRXtsrAaLr9Lb8nP3q	AGENT	23	Female	\N	f	2025-01-18 11:51:08.908325+00	\N	f
1b9357a0-e19f-4bcc-b9ac-7f04d17f869c	Lewis Manyeki	lewismanyekinyambura@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-15 11:56:46.244318+00	\N	f
d9e28da8-ab57-415c-b304-4faafeebb8ae	Felisia imende muhonja	felisiareginald@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 10:02:08.365802+00	\N	f
6ad97e91-3a9a-4308-b938-f98981621b1a	Richie	brianrichie745@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-18 10:34:02.556728+00	\N	f
beb327d2-537d-45c8-8863-a8cc16ac0c89	Ruth Mariatso	mariatsoamtsama@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 11:48:28.47491+00	\N	f
a58e726a-9f4a-4545-9634-c5ff1ec82dfc	Issah Mohaa	issahmohaa@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-18 15:48:03.438686+00	\N	f
a78b1ef4-41a7-41e6-ba09-592f465f28c6	kennedy	kenvilla607@gmil.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-18 17:45:29.090031+00	\N	f
031db3cd-7c5f-4135-9cf8-5678b19b9e73	Byron Orwa	byronorwa@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-18 18:29:05.484023+00	\N	f
45f7bb0f-9aeb-4cb4-bae2-56d8a92537d9	Florence  zawadi	florencemwaka23@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-19 09:35:49.20446+00	\N	f
d0d0c6b8-e2ab-46dc-b28b-5dea13cf2460	Rebecca Nyamanguye	rebeccalvin411@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Female	\N	f	2025-01-19 13:41:29.154178+00	\N	f
a3d62f48-426b-4d42-912e-0441d36f312a	CHARLES KIOKO WAMBUA	cwambua518@gmail.com	t	$2a$15$9u0L6bnksH3F/qyITjIXUep/WBpD5uyvN4nXQyAOq2nPu9st13vWS	AGENT	23	Male	\N	f	2025-01-20 08:52:59.240556+00	\N	f
de70e826-2e3e-410e-8737-a060c60b7cc3	Charles Kahuro	kahurocharles@gmail.com	t	$2b$15$GacGiRkefsu9TCRXSt.c/.zFXJoxvECetok2gndfBX2ODWuLGjmgq	AGENT	23	Male	\N	f	2025-01-18 11:23:39.743481+00	\N	f
3ded56e2-2462-4734-8201-5e738afc7b3a	Stewa kamau	kamausteve1999@gmail.com	t	$2b$15$daTZeNVP4B00Kt.zsXMhUuQ8PnunsDzxUg235DWRWrUdomUgdRhdC	AGENT	43	Male	\N	f	2025-01-21 18:26:45.895929+00	\N	f
6312d59a-3fa7-4b5c-9477-838a2a245445	Susan daggers	susanwanjira699@gmail.com	t	$2b$15$bHMurCT64PLIqvvjck3UdOW95pPOkEmnh0MjshNTC7QgLr0HhC5n2	AGENT	28	Female	\N	f	2025-01-21 18:41:36.567543+00	\N	f
5de1db58-f659-4bf3-8ff1-eaf3aaf85f31	Everlyne	oukoe32@gmail.com	t	$2b$15$i10CXsvu9gZ8Lvga5NMFYeOgA9NQpnyqgFYbsPP6632yE3V/BNA4.	AGENT	47	Female	\N	f	2025-01-21 18:44:35.587073+00	\N	f
\.


--
-- Data for Name: agent_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_data" ("agent_id", "agent_email", "phone", "dob", "county", "subcounty", "income", "employment", "education", "sector", "total_pts_earned", "total_pts_paid", "total_points_payable", "external", "reset", "referall_by") FROM stdin;
85536ca4-ab4f-4eff-a4cc-a81486346505	Twambua2030@gmail.com	0768301222	1999-09-16	Nairobi	Embakasi West	00000 - 10000	Student	Post-Graduate	Others	0	0	0	f	f	\N
3ded56e2-2462-4734-8201-5e738afc7b3a	kamausteve1999@gmail.com	0791474764	1981-05-22	Nairobi	Embakasi East	20000 - 50000	Self-Employed	High-School	Food & Beverage	0	0	0	f	f	\N
6312d59a-3fa7-4b5c-9477-838a2a245445	susanwanjira699@gmail.com	0741137873	1996-09-24	Laikipia	Laikipia East	20000 - 50000	Employed	Post-Graduate	Manufacturing	0	0	0	f	f	\N
5de1db58-f659-4bf3-8ff1-eaf3aaf85f31	oukoe32@gmail.com	0716471257	1977-05-24	Siaya	Bondo	10000 - 20000	Self-Employed	High-School	Retail	0	0	0	f	f	\N
06ebad48-e594-4137-bf33-4974e1102917	fabersonkyalosimon254@gmail.com	0742585690	3/20/1999	Nairobi	Embakasi South	20000 - 50000	Self-Employed	Post-Graduate	Fashion	0	0	0	f	t	\N
17e70ae6-12fe-46a7-9d6f-472e8297cb12	faithcheronotwo@gmail.com	0799250754	8/2/2000	Kiambu	Limuru	00000 - 10000	Self-Employed	Primary	Agriculture	0	0	0	f	t	\N
7ca7d821-22be-4834-84b2-c80e5a5361cf	fransdaina@gmail.com	0706966065	2/2/2003	Nairobi	Lang'ata	00000 - 10000	Student	Post-Graduate	Others	50	50	0	f	t	\N
01939367-739e-4fac-b0a6-cb01a8067a79	genedy@gmail.com	0744967891	9/4/1984	Nairobi	Starehe	50000 - 100000	Self-Employed	Under-Graduate	Media	25	0	25	f	t	\N
b13cb7aa-f6a3-4eeb-9124-84c4590ff148	gimweka50@gmail.com	0728553189	4/14/1969	Machakos	Mavoko	50000 - 100000	Unemployed	High-School	Others	0	0	0	f	t	\N
b2715e1a-0cc2-4e7a-9128-045c0c688611	gloadira@gmail.com	0720073452	5/3/1984	Nairobi	Embakasi North	20000 - 50000	Self-Employed	Under-Graduate	Education	50	50	0	f	t	\N
51d92d75-a817-476c-9477-7327d748bb91	gregoryisaa005@gmail.com	0759537545	11/27/2001	Nairobi	Dagoretti North	10000 - 20000	Self-Employed	Post-Graduate	Telecommunications	50	50	0	f	t	\N
e27db88b-2061-4cfb-91b5-d83904320202	hacinomceerah@gmail.com	0703735226	7/22/1997	Kiambu	Starehe	10000 - 20000	Self-Employed	Under-Graduate	Fashion	0	0	0	f	t	\N
cde22970-f53d-47fa-97ed-db016c009f98	haronkencie@gmail.com	0722511948	6/22/1986	Machakos	Mavoko	50000 - 100000	Self-Employed	Post-Graduate	Automotive	0	0	0	f	t	\N
4615f82c-0260-4aa4-ae6b-999dcce70f3d	herlymah099@gmail.com	0743962943	5/9/1999	Taita-Taveta	Taveta	00000 - 10000	Unemployed	Under-Graduate	Others	50	50	0	f	f	Clifford
4398d0a9-933e-4efd-9906-b920e390c872	hgichuhi646@gmail.com	0721348667	3/10/1993	Machakos	Mavoko	20000 - 50000	Self-Employed	Under-Graduate	Food & Beverage	50	50	0	f	f	\N
41dc1b6b-00f4-48d1-b083-d1d6ad62bd1f	Igantomi@gmail.com	0712354625	8/18/1992	Mombasa	Kisauni	10000 - 20000	Employed	Under-Graduate	Education	0	0	0	f	t	\N
1280a7c8-3af8-4fa7-bb97-5bb989dccf56	Irenechanzu@gmail.com	0701991938	12/25/1997	Nairobi	Starehe	20000 - 50000	Self-Employed	Under-Graduate	Media	50	50	0	f	t	\N
a2d5b801-5a09-415e-afc7-e4e16400eca2	itzayanaamariah@gmail.com	0798633134	10/28/1989	Nairobi	Kasarani	10000 - 20000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
e3fc0be9-1068-4a67-a933-b13d4e13daa9	jackdavid69558@gmail.com	0799098858	1/4/2002	Nakuru	Njoro	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
edcf5863-e044-48b3-a6b7-69ffa7f265c2	jamaltendwa18@gmail.com	0704532718	12/14/2001	Kisumu	Kisumu West	00000 - 10000	Student	Post-Graduate	Others	50	50	0	f	t	\N
3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	jaymohhazi@gmail.com	0799377730	9/15/1992	Kiambu	Kikuyu	00000 - 10000	Self-Employed	High-School	Education	25	0	25	f	t	\N
d0b05df9-2e8f-43ab-a16e-247efb7b6fa0	jennifermaaga@gmail.com	0113454705	5/15/2001	Nairobi	Embakasi West	00000 - 10000	Unemployed	Post-Graduate	Others	0	0	0	f	t	\N
4dcd4071-5314-4bea-874c-e4c072f25f3c	jothamwekesa9@gmail.com	0713058596	11/1/1994	Mombasa	Kisauni	10000 - 20000	Self-Employed	Post-Graduate	Others	50	50	0	f	t	\N
1e91527b-44e5-4939-9eb0-3dd0d61499d0	judykagwiria38@gmail.com	0714467995	8/12/1996	Machakos	Nairobi city	00000 - 10000	Self-Employed	Under-Graduate	Fashion	50	0	50	f	t	\N
e6e98e27-ea8c-4b26-b53c-bd63dc0917ce	kagendowinnie@gmail.com	0796060883	6/21/1994	Kiambu	Juja	20000 - 50000	Employed	Under-Graduate	Banking	0	0	0	f	t	\N
25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	kalekyemagdalene9@gmail.com	0745887787	7/15/2002	Nairobi	Embakasi East	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
0c69b211-08bf-49e2-80b9-d345b34a1539	kamaudaniel975@gmail.com	0799499021	1/12/1997	Nakuru	Njoro	10000 - 20000	Self-Employed	Under-Graduate	Finance	0	0	0	f	t	\N
cedcb55f-d753-485b-ac19-72225d399bc9	karenndanu1983@gmail.com	+254722101373	10/23/1983	Machakos	Matungulu	20000 - 50000	Employed	Under-Graduate	Education	50	50	0	f	t	\N
d5864654-8e03-459f-9641-67cc53e0a1d6	kariukinaima@gmail.com	0797738511	6/25/2004	Nairobi	Starehe	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
d420e7c7-3fca-4984-9a7a-e254039ed9c9	karlerick678@gmail.com	0719216682	5/5/2004	Kiambu	Kiambaa	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
52432a7c-8874-41c9-8e22-23fb1c7823d0	keemkimani7@gmail.com	0791151328	6/9/2002	Nairobi	Embakasi South	20000 - 50000	Self-Employed	Under-Graduate	Travel	50	50	0	f	t	\N
97f03cbb-2462-44e3-bee4-ea20c5f5ff33	kibibiathman3@gmail.com	0757742680	10/10/1990	Machakos	Mavoko	20000 - 50000	Employed	High-School	Others	50	50	0	f	t	\N
580ecee2-43ff-4af2-b3b6-e8fc2e35d577	kingoofaith17@gmail.com	+254768473226	10/17/1997	Machakos	Mavoko	20000 - 50000	Self-Employed	Under-Graduate	Retail	0	0	0	f	t	\N
ebacacd0-20dd-433e-8cec-2e072453705e	kipcor3@gmail.com	+254720126045	1/10/1989	Trans Nzoia	Cherangany	10000 - 20000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
6232ba3f-45c7-4e21-ac60-e5e11b550211	kitisiad@gmail.com	+254710610440	6/28/1972	Mombasa	Likoni	20000 - 50000	Employed	Under-Graduate	Real Estate	0	0	0	f	t	\N
69bee2d7-0255-44e7-bd56-24a4f137827e	kitongah1@gmail.com	0717492383	5/6/1992	Kitui	Kitui East	20000 - 50000	Self-Employed	Under-Graduate	Finance	50	50	0	f	t	\N
2c588913-9361-4dae-8f33-e4973ec44dc5	kitotophilip@gmail.com	0726035992	8/31/1990	Mombasa	Jomvu	10000 - 20000	Self-Employed	Under-Graduate	Finance	0	0	0	f	t	\N
f47f2950-4c39-4fe3-9c63-78042db0f6bf	lemisopatrick1@gmail.com	0794037417	12/12/1997	Nairobi	Kasarani	50000 - 100000	Employed	Under-Graduate	Information Technology	50	50	0	f	t	\N
f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	lewisboom321@gmail.com	0791432680	7/1/1995	Kitui	Kitui West	20000 - 50000	Employed	Under-Graduate	Information Technology	50	50	0	f	t	\N
a66345f5-6cc3-402d-a7a2-0db21b9869a3	ibralito39@gmail.com	710604594	2002-01-30	Taita-Taveta	Taveta	00000 - 10000	Student	Under-Graduate	Accountancy	0	0	0	t	f	Hussein Sadiq
ed030e9b-3f7e-4988-a86b-04a8f075cee6	neemambuti@gmail.com	0712671253	1989-05-07	Mombasa	Changamwe	10000 - 20000	Employed	Under-Graduate	Finance	0	0	0	f	f	\N
b679f41d-3873-4109-9d1b-aa124af12b6b	lewismachowe@gmail.com	0799740613	7/14/1994	Nairobi	Westlands	20000 - 50000	Employed	Under-Graduate	NGOs	0	0	0	f	t	\N
66227dae-7448-424d-8eba-026c3ebd99d9	lilianandisi367@gmail.com	0112708753	2/16/1987	Mombasa	Nyali	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
3f5d3c7f-4993-48c1-8499-fba142eb8b49	lnjoki1880@gmail.com	0717617784	1/31/2003	Kiambu	Thika Town	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
db118a6c-ee11-42b1-8746-d2b43890f3b5	lomwanga1@gmail.com	0759122800	9/7/2001	Kajiado	Kajiado West	00000 - 10000	Student	Under-Graduate	Others	25	0	25	f	t	\N
41b23501-8877-4a01-8152-f67094581304	loretatieno@gmail.com	0718290573	9/24/1990	Kiambu	Kikuyu	100000 - 500000	Self-Employed	Post-Graduate	Finance	50	50	0	f	t	\N
eeb4e81c-81f8-4d90-a39c-d4ea906e3337	lunayoyvonne@gmail.com	712355945	11/9/1996	Nairobi	Starehe	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
f0e6fa0a-21d3-4a14-98de-f9105b5f569a	makiomwawasi@gmail.com	+254743889173	6/6/1967	Taita-Taveta	Mwatate	00000 - 10000	Employed	High-School	Fashion	50	50	0	f	t	\N
bf12e948-da47-4690-8772-efb6ce2e7fe5	Malesivanessa5@gmail.com	0799728471	5/25/1997	Nairobi	Kasarani	00000 - 10000	Employed	High-School	Banking	50	50	0	f	t	\N
5ce766ba-9c10-4515-8510-12b2c32e44d2	maryannewambu2@gmail.com	0724963154	12/11/2002	Nairobi	Dagoretti South	00000 - 10000	Student	Under-Graduate	Others	0	0	0	f	t	\N
6203c286-76b3-4684-a33e-6344cf5cb905	matasyoclimson813@gmail.com	0112329007	4/17/1998	Kiambu	Kiambaa	10000 - 20000	Self-Employed	Under-Graduate	Education	0	0	0	f	t	\N
3faf9701-6499-4e1d-9fd7-0b7d04fcfa7b	mercymutiso57@gmail.com	0714325743	12/30/2003	Nairobi	Embakasi East	20000 - 50000	Self-Employed	Under-Graduate	Food & Beverage	0	0	0	f	t	\N
f5b72654-37e1-4fbe-8ec8-5f82fec41fc1	mercymwende812@gmail.com	0719880927	11/16/2004	Mombasa	Changamwe	00000 - 10000	Student	Under-Graduate	Others	0	0	0	f	t	\N
f522d6fc-340d-4878-871a-a39aff2431a1	mhandohnicholas@gmail.com	0793290402	1/18/2000	Nairobi	Embakasi East	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
10838292-3331-4e99-9482-f345c60eda58	michaelkamau2276@gmail.com	0713488741	10/29/1996	Nairobi	Embakasi South	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
32b3005d-61e7-4b06-b4e5-742b070968e3	mikeogwe@gmail.com	0728428619	6/15/1999	Nairobi	Lang'ata	20000 - 50000	Self-Employed	Post-Graduate	Banking	50	50	0	f	t	\N
a1b48c81-a072-4c55-ac64-b8027b889b7a	mitchellephilegonah@gmail.com	0790346549	5/5/2000	Kiambu	Starehe	00000 - 10000	Unemployed	Post-Graduate	Others	50	50	0	f	t	\N
af1e06f0-6143-4474-804a-35d8ac3cd650	mustafamamadi12@gmail.com	0114461731	10/28/1999	Mombasa	Nyali	20000 - 50000	Employed	Under-Graduate	Information Technology	50	50	0	f	t	\N
b73c1522-4204-426a-82e8-6d201d06f1eb	mutukudaniel009@gmail.com	+254714251586	9/18/1999	Machakos	Mavoko	00000 - 10000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
900b7a11-44eb-43ee-a255-a44db0c51e52	mwasein99@gmail.com	0700826167	10/10/1989	Lamu	Lamu West	20000 - 50000	Self-Employed	Under-Graduate	Hospitality	0	0	0	f	t	\N
a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	mwendecaro96@gmail.com	0722156629	9/11/1990	Nairobi	Embakasi Central	10000 - 20000	Self-Employed	High-School	Fashion	50	50	0	f	t	\N
3869797e-34e2-45ff-af1e-1bb41c484c1b	mwendekyuma22@gmail.com	0743737555	8/28/2000	Nairobi	Makadara	00000 - 10000	Unemployed	Post-Graduate	Others	0	0	0	f	t	\N
49c5437e-d309-4abe-96e9-23fa7398d776	mwendwacaleb90@gmail.com	0729034444	7/2/1998	Machakos	Mavoko	00000 - 10000	Unemployed	Post-Graduate	Others	50	50	0	f	t	\N
818831a5-b451-4c20-bbf0-024669cf7577	nasambureginald.nr@gmail.com	0701102021	4/22/2000	Nairobi	Kamukunji	00000 - 10000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
a429cc4f-2511-42a9-b375-07b9cd47cacb	ndulujudith@gmail.com	0701309973	3/2/1984	Machakos	kenya	50000 - 100000	Employed	Under-Graduate	Finance	0	0	0	f	t	\N
212a1408-70b6-4592-be49-d4ba81008add	nelliusirungu97@gmail.com	0703734074	6/22/1997	Kajiado	Kajiado East	20000 - 50000	Employed	Under-Graduate	Others	50	50	0	f	t	\N
75fcfe69-fa3e-4462-a4be-ea438612cb6b	nicholasmutungi2@gmail.com	0712919018	1/1/1976	Nairobi	Dagoretti South	10000 - 20000	Employed	High-School	Agriculture	50	50	0	f	t	\N
af2caf3e-5a28-491a-bc5f-f869ccc09f38	njagiwawira18@gmail.com	0792550743	7/16/1999	Kiambu	Kiambaa	00000 - 10000	Self-Employed	Post-Graduate	Others	50	50	0	f	t	\N
431841a4-269e-4fa9-a265-476836e7369f	nyamburagrace380@gmail.com	0790011470	11/30/2001	Kiambu	Ruiru	20000 - 50000	Employed	Under-Graduate	Food & Beverage	50	50	0	f	f	Social media 
3bca75f1-bba8-4e61-8a2c-60e9c96863cb	ochiengmaxwel@gmail.com	0700071119	10/28/1999	Mombasa	Nyali	20000 - 50000	Employed	Under-Graduate	Transportation	50	50	0	f	t	\N
5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	oduorcecil731@gmail.com	0793723121	11/26/2002	Nairobi	Makadara	10000 - 20000	Self-Employed	Under-Graduate	Media	25	0	25	f	t	\N
fbe0dd97-1226-4e2b-9587-8ad93339c11a	okeyocharity93@gmail.com	0718447531	5/5/1999	Nairobi	Mathare	00000 - 10000	Student	High-School	Others	0	0	0	f	t	\N
739e8b3b-fb8b-41b6-97f0-f06d4a2ae9dc	oliviaokoko01@gmail.com	0717782440	1/22/1993	Machakos	Mavoko	20000 - 50000	Employed	Post-Graduate	Entertainment	0	0	0	f	t	\N
fe77139a-17e2-4d68-b0e5-29b401ee03cb	omonditrevorr@gmail.com	0713270764	6/1/1998	Nairobi	Lang'ata	50000 - 100000	Employed	Post-Graduate	Banking	50	50	0	f	t	\N
44663c0d-e051-4cfc-9803-211def0c67cc	onekaholdings@gmail.com	0728511272	1/11/1986	Machakos	Mavoko	10000 - 20000	Self-Employed	Under-Graduate	Retail	50	50	0	f	t	\N
0b29de00-c97e-444c-8640-87fee3330781	opadohchristineawino@gmail.com	0700063197	10/29/1997	Machakos	Mavoko	20000 - 50000	Employed	Under-Graduate	Fashion	50	50	0	f	t	\N
2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	patiencejane1996@gmail.com	0743907683	7/7/1996	Nairobi	Westlands	50000 - 100000	Self-Employed	Under-Graduate	Fashion	25	0	25	f	t	\N
4581c5c1-996b-46bc-a4bb-c63f5a0ff232	patricia.ndungu@gmail.com	0723956896	11/9/1982	Nairobi	Makadara	50000 - 100000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
b07bc8aa-8ffc-4f57-9c69-1d66e54b663f	hannahkamau9137@gmail.com	0791015145	2001-01-03	Kajiado	Kajiado Central	00000 - 10000	Student	High-School	Others	0	0	0	f	f	\N
d9b1d991-6de3-4149-bad3-fe8afd539f67	bkilisa25@gmail.com	0743417980	1995-09-25	Machakos	Machakos Town	50000 - 100000	Self-Employed	Post-Graduate	Information Technology	0	0	0	f	f	\N
199cdab2-6af3-457d-8590-4069f4b5ab27	peterchemos82@gmail.com	0757309625	9/24/2003	Nairobi	Embakasi East	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
ffd9df51-64f1-42c0-a732-bd73e2fc2666	petergathii.pg@gmail.com	0706734354	10/20/1997	Nairobi	Embakasi West	50000 - 100000	Self-Employed	Under-Graduate	Information Technology	0	0	0	f	t	\N
d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	peterkilimbuimutuku@gmail.com	0717023945	4/12/1988	Nairobi	Embakasi East	20000 - 50000	Employed	Under-Graduate	Manufacturing	50	0	50	f	t	\N
c5e824ad-5c95-471c-8889-a2d0faba20e4	petermwa213@gmail.com	0745910026	10/12/1995	Nakuru	Gilgil	10000 - 20000	Self-Employed	Under-Graduate	Agriculture	0	0	0	f	t	\N
55c8bb46-93a8-4fa8-91f8-c9630eaac44a	pharellesmith@gmail.com	0726967970	3/27/1996	Nairobi	Embakasi East	20000 - 50000	Employed	Under-Graduate	Others	0	0	0	f	t	\N
fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	reginakemunto95@gmail.com	0707267007	5/23/1995	Nairobi	Embakasi East	20000 - 50000	Self-Employed	Under-Graduate	Finance	50	50	0	f	t	\N
5dcc831e-1718-4f56-9c44-250814c45d40	rennicetamara@gmail.com	0729041248	4/2/2006	Nairobi	Embakasi Central	00000 - 10000	Student	High-School	Others	0	0	0	f	t	\N
aac7a99a-ddef-4493-badc-63487c667327	rhyanochieng@gmail.com	0797808214	8/3/1998	Kisumu	Nyando	00000 - 10000	Student	Under-Graduate	Others	0	0	0	f	t	\N
f4cd1ed0-e7c5-4664-9d8f-179db40cb245	ricardoomondingani@gmail.com	0702560124	8/31/2004	Nairobi	Embakasi East	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
a6c2e31a-9cba-485e-9944-78e15d5872c2	rmuchene13@gmail.com	+254724623725	2/14/1992	Kiambu	Kabete	20000 - 50000	Employed	Under-Graduate	Hospitality	0	0	0	f	t	\N
84a74d7e-c01e-463b-9a0f-6b7c38531c00	runoevelyn@gmail.com	0723550115	9/6/1987	Nairobi	Starehe	00000 - 10000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
1dc74f31-a53e-461a-aef1-fb2488b86736	samkiki088@gmail.com	0757029236	2/20/2000	Kiambu	Juja	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
cd81dc40-36f1-4399-b5dd-65a0b43b0fec	samsonodoyo1234@gmail.com	0720770294	11/11/1974	Nairobi	Lang'ata	100000 - 500000	Employed	Post-Graduate	Manufacturing	50	0	50	f	t	\N
f8b3c5d2-d56a-4425-8736-53d5463ecf12	shaakionyi@gmail.com	0727155837	7/6/1989	Nairobi	Lang'ata	10000 - 20000	Self-Employed	High-School	Fashion	0	0	0	f	t	\N
4de64e92-dc71-4005-a0de-f46e4df56f27	shoppzone19@gmail.com	0743686962	3/9/1995	Machakos	Mavoko	50000 - 100000	Self-Employed	Under-Graduate	Fashion	50	50	0	f	t	\N
c087535c-2607-4622-902a-51b6e1dae5f3	sikasalma2017@gmail.com	0715392677	4/10/1998	Machakos	Machakos Town	10000 - 20000	Employed	Under-Graduate	Food & Beverage	50	50	0	f	t	\N
3ca33325-2cac-4895-a875-71e4e3a6e931	stanleythiongo32@gmail.com	0726359634	9/29/1999	Nairobi	Dagoretti South	10000 - 20000	Employed	Under-Graduate	Automotive	25	0	25	f	t	\N
c5b2084c-de9b-4b57-9019-19374c439cc8	stefaninjuguna8@yahoo.com	0795752175	8/8/2000	Kiambu	Juja	20000 - 50000	Self-Employed	Under-Graduate	Finance	0	0	0	f	t	\N
97cdba61-a19b-4dd5-8a68-34fbe21d9a36	stellandanu57@gmail.com	0707775168	4/24/2005	Makueni	Makueni	00000 - 10000	Student	High-School	Others	0	0	0	f	t	\N
1a749cf5-8652-4318-b1c0-a9b67b7fd4ee	sylviachepm@gmail.com	0742745054	1/8/2001	Uasin Gishu	Moiben	00000 - 10000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
220c3547-0541-45e1-b769-e4a02cee8945	syomitistella11@gmail.com	0710609444	10/14/1998	Nairobi	Kasarani	10000 - 20000	Self-Employed	Post-Graduate	Education	50	50	0	f	t	\N
8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	taaririchmond9@gmail.com	0708271599	4/4/2001	Nairobi	Embakasi East	20000 - 50000	Employed	Under-Graduate	Fashion	50	50	0	f	t	\N
f1bf08a4-085f-4b82-b296-639d636fb2f0	taati.nteere@gmail.com	0717463037	12/3/2003	Embu	Manyatta	00000 - 10000	Student	Under-Graduate	Others	0	0	0	f	t	\N
4b937413-4084-48a1-b6b2-8f856442f7ae	tatecla@gmail.com	0724273271	3/16/1990	Machakos	Kathiani	10000 - 20000	Self-Employed	Post-Graduate	Retail	50	50	0	f	t	\N
6d7b25aa-a203-4980-b14c-e41c92ab0c87	taunasotieno@gmail.com	0726337194	1/27/1994	Narok	Narok South	10000 - 20000	Self-Employed	Post-Graduate	Information Technology	0	0	0	f	t	\N
4b07c44e-a189-4fb7-bf08-18414c44f187	tracysakwa@gmail.com	0707027696	5/14/1997	Kiambu	Kiambaa	00000 - 10000	Unemployed	Post-Graduate	Others	50	50	0	f	t	\N
9752158e-7e1f-498a-b058-d9bb38a2ce30	veranicks59@gmail.com	0715191122	7/10/1987	Machakos	Mavoko	20000 - 50000	Self-Employed	Under-Graduate	Fashion	0	0	0	f	t	\N
7fab95dc-bf02-4489-b176-22388372351f	victorafwande@gmail.com	0796116195	3/7/1989	Busia	Teso North	10000 - 20000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
e83a0142-c342-40de-aad2-835e5d614ccc	victoriaotieno@yahoo.co.uk	0713738068	6/9/1973	Machakos	Mavoko	20000 - 50000	Self-Employed	Post-Graduate	Education	50	50	0	f	t	\N
efa4772a-cf28-4f3c-b2af-96ca2e50f4a0	victorkilesi99@gmail.com	0795179481	6/17/1996	Nairobi	Embakasi Central	20000 - 50000	Self-Employed	High-School	Others	0	0	0	f	t	\N
815533a5-6869-4118-9d2b-8d094faa6f90	victormusyoka101@gmail.com	0794126121	5/2/2001	Machakos	Machakos Town	10000 - 20000	Employed	Under-Graduate	Food & Beverage	50	50	0	f	t	\N
d618da68-10ac-4822-a536-ec15839c3c77	victornjuguna26@gmail.com	0791151507	9/6/1993	Nairobi	Kasarani	20000 - 50000	Self-Employed	Post-Graduate	Entertainment	50	50	0	f	t	\N
779c8b25-8d69-496b-8fde-b8f1748b385e	victorondara8@gmail.com	0719721346	3/18/1994	Nairobi	Westlands	20000 - 50000	Employed	Post-Graduate	Hospitality	0	0	0	f	t	\N
121f945d-4974-4a74-97e0-2bb9cdadb25b	vitaliswangila57@gmail.com	0798794482	5/31/1995	Nairobi	Dagoretti North	10000 - 20000	Employed	High-School	Others	50	50	0	f	t	\N
72c9a021-91fb-4319-8858-789ee9f83d6f	Wanjikumayliza9@gmail.com	0748466984	1/1/1998	Nairobi	Embakasi East	20000 - 50000	Self-Employed	Post-Graduate	Automotive	0	0	0	f	t	\N
f20f511a-1581-48b9-976a-3574c7dac6cb	wanyamadevis077@gmail.com	0727986248	7/11/1996	Nairobi	Embakasi North	20000 - 50000	Self-Employed	Post-Graduate	Information Technology	50	50	0	f	t	\N
3e8bcfdf-7d25-4213-8401-43f25abe93ed	odhiamboalphonce23@gmail.com	0707984706	2001-03-12	Mombasa	Kisauni	10000 - 20000	Employed	Under-Graduate	Information Technology	0	0	0	f	f	\N
36bdfd9c-73b6-448d-9a4b-5ffff35a8b43	kentrellnamaswa@yahoo.com	0710722625	1990-01-15	Mombasa	Kisauni	100000 - 500000	Employed	Under-Graduate	Manufacturing	0	0	0	f	f	\N
6ea5e5a3-d51b-41ad-8f60-806f7a4cbcbd	thangaranijoseph@gmail.com	0715030040	1994-08-18	Laikipia	Laikipia North	10000 - 20000	Employed	Under-Graduate	NGOs	0	0	0	f	f	\N
0dc55b78-1b38-4b00-972f-82db326c93b4	darvinkilui@gmail.com	0706355807	1999-06-02	Bungoma	Kabuchai	20000 - 50000	Self-Employed	Post-Graduate	Food & Beverage	0	0	0	f	f	\N
79e0b32b-5650-4c8c-8d73-71f3e1302ba5	wasike.rakels.racheal1@gmail.com	710761091	5/5/1994	Nairobi	Starehe	00000 - 10000	Unemployed	Post-Graduate	Others	50	50	0	f	t	\N
eeeae060-fa85-48a8-8b91-6a952d6f158e	webmastadon@gmail.com	0725625758	12/11/1982	Machakos	Mavoko	50000 - 100000	Employed	Under-Graduate	Hospitality	50	50	0	f	t	\N
d5493931-5cd9-4913-a2a1-f8a96874332b	willyhill384@gmail.com	0758060057	3/19/2000	Nairobi	Embakasi West	20000 - 50000	Employed	Under-Graduate	Education	0	0	0	f	t	\N
1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	wilsonnyaband73@gmail.com	0795152509	6/29/1998	Nairobi	Embakasi East	100000 - 500000	Employed	Under-Graduate	Finance	50	50	0	f	t	\N
500ca188-07bf-474d-89fc-bfadd41cd7d3	zonahnyambura@gmail.com	0797524938	3/22/1998	Nairobi	Kasarani	20000 - 50000	Self-Employed	Post-Graduate	Entertainment	50	50	0	f	t	\N
12059b01-c2cd-4ec0-a640-c4f80728ab8e	wayneeaster95@gmail.com	0715574227	2002-04-11	Nairobi	Kasarani	00000 - 10000	Student	Under-Graduate	IT expert and computer maintanance	50	50	0	f	f	\N
c893fe46-c3d7-40c0-8035-b20c940b9d90	darius.masenge@gmail.com	+254722401791	1988-04-12	Nairobi	Roysambu	500000 +	Employed	Post-Graduate	Media	0	0	0	f	f	\N
fffd2637-1493-41f9-a140-08ba67621b10	dennismuchangi46@gmail.com	0717323580	1990-06-01	Nairobi	Kenya	20000 - 50000	Employed	Post-Graduate	Food & Beverage	0	0	0	f	f	\N
eeb7b38e-54f3-44d1-8e51-9dd06c90b200	eddyochango93@gmail.com	0706398955	1993-03-03	Nairobi	Dagoretti North	00000 - 10000	Unemployed	Under-Graduate	Others	0	0	0	f	f	\N
10d805ed-704a-493f-93de-9c0bd809121b	b7162796@gmail.com	0768820286	1999-07-13	Machakos	Mwala	10000 - 20000	Employed	Post-Graduate	Retail	0	0	0	f	f	\N
e9399ea6-19a3-4e71-872c-f965a846097f	kiriganjeri@gmail.com	794484195	1990-09-20	Kiambu	Kikuyu	10000 - 20000	Self-Employed	Under-Graduate	I.T	0	0	0	t	f	 Cliff
2865a5fb-dde2-4301-b776-cdbb955841ca	sakwalorine98@gmail.com	0743627099	1998-08-08	Kakamega	Butere	100000 - 500000	Employed	Post-Graduate	Agriculture	0	0	0	f	f	\N
ec4b09e2-a645-425c-b43b-b59f19525056	amondibelinda0@gmail.com	0757750955	10/31/1998	Nairobi	Makadara	00000 - 10000	Employed	Under-Graduate	Information Technology	25	0	25	f	t	\N
fb293319-b39f-4132-8284-22f66da56937	andrewelly787@gmail.com	0758668680	9/23/2000	Nairobi	Embakasi East	00000 - 10000	Employed	Under-Graduate	Food & Beverage	50	0	50	f	t	\N
11f24999-5b2c-4b15-a0d0-3554121bf9ed	christinegrsare@gmail.com	0746488654	2001-06-24	Kiambu	Ruiru	00000 - 10000	Unemployed	Under-Graduate	Others	0	0	0	f	f	\N
415f0130-2e4b-4513-8b74-d21445461a79	donaldosoro96@gmail.com	0794556860	2003-04-24	Mombasa	Changamwe	100000 - 500000	Employed	Post-Graduate	Education	0	0	0	f	f	\N
70080823-9509-4792-b3d3-767df62de09a	Adhiamboseline97@97gmail.com	0721764799	9/16/2002	Migori	Nyatike	20000 - 50000	Self-Employed	Post-Graduate	Energy	0	0	0	f	t	\N
58d3c3cb-0914-4516-bf95-ceef24429241	Adhiamboseline97@gmail.com	0721764799	9/16/2002	Migori	Nyatike	10000 - 20000	Self-Employed	Post-Graduate	Energy	50	50	0	f	t	\N
edfb1b6c-3230-4a79-a6e0-004ded923356	alinamutua4@gmail.com	0722805263	9/9/1978	Nairobi	Lang'ata	00000 - 10000	Self-Employed	Post-Graduate	Others	50	50	0	f	t	\N
14713925-327a-4233-8a54-c0f61d673205	anungopamphil@gmail.com	0705313866	6/1/1996	Nyeri	Mathira	50000 - 100000	Self-Employed	Under-Graduate	Healthcare	50	50	0	f	t	\N
68427b34-46ba-40e0-b01c-6336ab006d94	awesitdorcas00@gmail.com	0705731396	9/10/1998	Turkana	Turkana South	00000 - 10000	Self-Employed	Under-Graduate	Retail	50	50	0	f	t	\N
b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	beckykinuthia4@gmail.com	0704496076	9/13/1984	Kiambu	Limuru	100000 - 500000	Self-Employed	Under-Graduate	Food & Beverage	0	0	0	f	t	\N
3325f09e-46ad-416f-a828-5c087a3929c4	davidevan289@gmail.com	0711110708	9/27/1993	Nairobi	Lang'ata	00000 - 10000	Unemployed	Post-Graduate	Others	0	0	0	f	t	\N
93325eb3-6c9e-4bd0-854a-88abf48f9887	aliciamwisangwe@gmail.com	0798633134	4/12/2000	Siaya	Bondo	20000 - 50000	Self-Employed	Under-Graduate	Construction	50	50	0	f	t	\N
fd8cf7cc-32cb-4b2c-b8c7-25f648edbf16	amakobebecky@gmail.com	0768082175	3/7/1992	Machakos	Mavoko	10000 - 20000	Self-Employed	High-School	Fashion	0	0	0	f	t	\N
b4d3f648-ee61-4857-8202-98bba2e42360	mwauraganet6@gmail.com	721682093	2004-05-09	Murang'a	Kiharu	00000 - 10000	Student	Under-Graduate	Food & Beverage	0	0	0	t	f	 A friend 
2e00b4ab-d73c-4e24-aac8-1bc0095f15c6	christinembithendolo@gmail.com	718766426	1996-07-09	Nairobi	Lang'ata	10000 - 20000	Employed	Primary	Automotive	0	0	0	t	f	Clifford
e23b4ca0-5104-4061-ba8e-118a9f3f562d	charitynjoroge644@gmail.com	720698835	1970-12-20	Nairobi	Makadara	20000 - 50000	Employed	High-School	Automotive 	0	0	0	t	f	Clifford 
39671909-2af2-4edf-b653-166689c525a1	mjmurithi@gmail.com	0745240941	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
365ae29d-cbaf-442f-8005-c81db0d5f52c	fayyfayy20@gmail.com	0758948965	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
c5a7fdce-2475-49d5-a93c-cc788fb2fa58	kofiananogaga67@gmail.com	0798991280	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
907de806-eb5d-4ab2-94e3-b25f2732c69c	agnesmetho3@gmail.com	+254708385945	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
d78b692b-4327-4bb6-bd50-74270fa66ee6	victorodoyo78@gmail.com	0797296042	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
952c8806-c89a-444c-98a2-dfdfd9a736e3	ogwenoibrahim005@gmail.com	0706563851	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
9d8840fb-f3a3-43af-b9b0-53ca8d5b5694	jospinmike7@gmail.com	701337989	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
158107f8-76a4-4a22-b86e-e1a3819e4513	elizabethmiruri08@gmail.com	708603580	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
6ed14e45-6595-4114-a6f4-aa4c623f41de	Lchussy@gmail.com	106882716	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
edaccdba-c344-447f-8bb2-a5f98aa94aae	sherriedullax@gmail.com	768246181	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
e31080e9-038f-41e1-b3bd-5c214f5c4983	etheljudith3@gmail.com	742390993	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
912a32c1-dc82-4ce5-825a-0e0c7c2594c1	gorretimwikali18@gmail.com	115232339	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
1c7647e3-8268-4b4d-bda7-6ce5977ac446	rashidkale77@gmail.com	790172889	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
49362377-0576-472c-9e69-ea55e88519ef	sharafhaidar444@gmail.com	769249591	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
c1fca44d-dbaf-403c-aceb-d9aa39c41131	jkalu3636@gmail.com	116216588	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
e7cb31c6-ec86-48e1-a3d3-3cafc1e630ea	stephennjoroge480@gmail.com	792127477	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
1b9357a0-e19f-4bcc-b9ac-7f04d17f869c	lewismanyekinyambura@gmail.com	706406617	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
4877e8c6-8b96-4b75-ac74-406d8fd64144	veronicahmanyeki24@gmailcom	727618678	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
423e2fa3-d41c-4009-8417-886d87ceac32	thukuserah@gmail.com	727248808	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	t	t	\N
ef54b94e-b3b6-4fa8-97f3-dcbbcd73f634	presytbett@gmail.com	0708810792	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
506e9a67-9311-4336-88c3-94a41e758c7c	marylynkayla@gmail.com	0759422102	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
bbb78bf4-70e2-4c5a-b352-4cf67df0261e	muthoninginyi@gmail.com	0723942516	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
12286b2e-cc87-4cb9-970b-5f0fbd0703c8	barasaelizabeth965@gmail.com	0700631912	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
1adae48f-088a-46f5-af29-7a551e7f2aa2	sadickhussein24@gmail.com	790848795	2001-09-15	Taita-Taveta	Taveta	00000 - 10000	Student	Under-Graduate	Information Technology	0	0	0	t	f	\N
730995b6-9753-4dcf-a65d-fb0cbc0c4526	iangithuba@gmail.com	742155537	2001-10-04	Kiambu	Lari	20000 - 50000	Employed	Post-Graduate	Teaching 	0	0	0	t	f	Cliff
06e63731-8535-4949-8386-e1f531cc7538	brandonkiiza18@gmail.com	0718880078	3/22/2000	Machakos	Mavoko	20000 - 50000	Employed	Under-Graduate	Finance	0	0	0	f	t	\N
6869f962-56a5-4e73-9137-a638d4f9ba03	juniormutisya3@gmail.com	0717028585	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
8d8d7a45-6d50-495f-86cd-42a6bb6adf51	allalokeym@gmail.com	+254745540094	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
895336e0-3158-4f0d-95c0-2f1a986d60a0	wairimuperis054@gmail.com	0740689812	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
d218da17-6eb3-481f-907b-9c3046a5fb6f	Mosesakola22@gmail.com	0794446220	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
32bd7728-8edb-46ee-86cd-1efa8f7b4070	samokore@gmail.com	+254794028673	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
4815e34c-6994-4384-9277-c23f124eedd7	mumolucy3@gmail.com	0757753042	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
a0f9e01c-f3cf-44cf-916b-7bde7e115adb	mutuanzomoeli@gmail.com	0700061792	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
70eff330-56a7-498d-b658-6dd3c8c0a254	annakigunda@gmail.com	0721552549	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
dc4e4f16-92e6-4200-8f02-2bb00ffd6ee2	karimajoan08@gmail.com	0790232140	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
6ad97e91-3a9a-4308-b938-f98981621b1a	brianrichie745@gmail.com	0705042179	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
de70e826-2e3e-410e-8737-a060c60b7cc3	kahurocharles@gmail.com	0790849609	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
beb327d2-537d-45c8-8863-a8cc16ac0c89	mariatsoamtsama@gmail.com	0792900115	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
9c159f1c-6589-41e7-84c7-3da9eb15809c	edithnakabuye@gmail.com	0114611924	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
a58e726a-9f4a-4545-9634-c5ff1ec82dfc	issahmohaa@gmail.com	0115400849	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
a78b1ef4-41a7-41e6-ba09-592f465f28c6	kenvilla607@gmil.com	0790204675	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
031db3cd-7c5f-4135-9cf8-5678b19b9e73	byronorwa@gmail.com	0718796708	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
45f7bb0f-9aeb-4cb4-bae2-56d8a92537d9	florencemwaka23@gmail.com	0786236922	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
d0d0c6b8-e2ab-46dc-b28b-5dea13cf2460	rebeccalvin411@gmail.com	0112219600	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
a3d62f48-426b-4d42-912e-0441d36f312a	cwambua518@gmail.com	0728965335	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
7c34897f-92ec-4166-a363-b54316d95438	eugenegadson788@gmail.com	0793390743	2004-01-20	Nairobi	Kasarani	10000 - 20000	Employed	Under-Graduate	Environment 	0	0	0	f	f	\N
42ab60ec-e810-4143-bf8a-9d336e5de4a0	sharonwairimu37@gmail.com	0794565591	2001-03-03	Kiambu	Kikuyu	10000 - 20000	Self-Employed	Under-Graduate	Fashion	0	0	0	f	f	\N
ffce55fe-67cf-479b-93cc-a7eae65375c5	annaodhiambo703@gmail.com	758535448	6/21/1998	Nairobi	Starehe	20000 - 50000	Self-Employed	Under-Graduate	Information Technology	50	0	50	f	t	\N
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	annastaciambula43@gmail.com	0706100693	7/26/1998	Machakos	Mavoko	20000 - 50000	Self-Employed	High-School	Fashion	50	50	0	f	t	\N
d91dee2c-782d-4f5d-96a5-79287b8a8daf	antonykarangi17@gmail.com	0705689014	9/18/1998	Nairobi	Embakasi East	20000 - 50000	Employed	High-School	Others	50	50	0	f	t	\N
81aee39e-2723-436b-bf84-bf2a2a0c6c60	aroisagetrude@gmail.com	0705644756	12/9/1997	Kisii	Bonchari	10000 - 20000	Self-Employed	Under-Graduate	Construction	0	0	0	f	t	\N
6b4ea9af-2dc2-4c90-bce7-8091b34de6d9	augustinemutua5@gmail.com	0796258617	11/14/1995	Machakos	Kathiani	00000 - 10000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	austinmailu9@gmail.com	716015451	3/12/1992	Nairobi	Starehe	00000 - 10000	Self-Employed	Under-Graduate	Manufacturing	50	50	0	f	t	\N
182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	avisaluther84@gmail.com	0757868277	4/5/2004	Kiambu	Kiambaa	10000 - 20000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
139cdc9b-82b0-4db2-ae12-9da4c3dbb18f	brendahzam@gmail.com	0718915258	10/23/1991	Nairobi	Embakasi East	20000 - 50000	Self-Employed	Under-Graduate	Fashion	0	0	0	f	t	\N
fdb9f1a0-35c2-49e0-8667-42afcd5d91cf	dyfredash@gmail.com	0726347754	1986-01-30	Nairobi	Kamukunji	20000 - 50000	Employed	Under-Graduate	Others	0	0	0	f	f	\N
2bf87d93-8904-4d8f-877e-f6db2996f760	elvinkim16@gmail.com	0795712133	1997-08-29	Kiambu	Kabete	10000 - 20000	Self-Employed	High-School	stephennjoroge480@gmail.com	0	0	0	f	f	\N
e6dd5228-a780-4b6e-94da-626d32fb8190	awuorchristine392@gmail.com	0700408765	2/26/1996	Nairobi	Embakasi East	00000 - 10000	Self-Employed	High-School	Others	50	50	0	f	t	\N
002960a2-cf21-4b33-8a88-5b3b90b5bfcd	linetkagasa@gmail.com	0716531581	2002-09-16\r\n	Migori\r\n	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
12019715-0870-4fe8-acf9-9b437ebf891c	lenacarol215@gmail.com	0723947501	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
93ea3232-3b94-42a3-ab5a-5f20e144842e	slymatisi7@gmail.com	0757745630	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
578faed5-dc33-486c-bf0e-9568ce03ec99	bwasilwa0@gmail.com	0723446812	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
7e544bfc-cbad-4bf4-b59a-7b24e7519474	jonnerkits@gmail.com	0725787870	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
823b3f7f-83da-4cdc-a94e-92979e443bb5	harrietmmboga456@gmail.com	0796741239	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
2a164b3c-581a-401f-80d3-e498997796ff	petermusambai60@gmail.com	0791287960	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
8fb2b20c-5971-4f87-97f6-ae839c4d7804	bensonkiplagat98@gmail.com	0704921328	8/18/2002	Nakuru	Rongai	00000 - 10000	Unemployed	Post-Graduate	Others	0	0	0	f	t	\N
4f1afdc2-ad42-48f2-9031-3e9de92d1b3f	brianmutinda407@gmail.com	0113584660	3/17/2006	Nairobi	Embakasi East	00000 - 10000	Unemployed	Under-Graduate	Others	0	0	0	f	t	\N
3fcdaf3b-1016-4d3a-b114-f1991e06eab9	briotienoo@gmail.com	0792509745	1/2/1998	Nairobi	Dagoretti South	10000 - 20000	Self-Employed	Under-Graduate	Agriculture	50	50	0	f	t	\N
dca92a17-18d7-49e2-9019-71c897ac13ec	bshmigs18@gmail.com	0114420717	9/13/1999	Machakos	Mavoko	20000 - 50000	Self-Employed	Post-Graduate	Information Technology	25	0	25	f	t	\N
667a67bf-51fe-4df3-b523-00ae295a68ce	charitymoraa780@gmail.com	797390175	6/21/2000	Kiambu	Starehe	20000 - 50000	Unemployed	Post-Graduate	Others	50	50	0	f	t	\N
d0f1b707-51f2-4e1c-a9b6-a2e53be83141	charitynzomo227@gmail.com	0715541664	6/13/1997	Kilifi	Starehe	20000 - 50000	Employed	Post-Graduate	Retail	50	50	0	f	t	\N
f71951ad-c751-4e1c-9a01-bea44b935e86	cherishwalker254@gmail.com	708696694	3/3/2004	Nairobi	Starehe	00000 - 10000	Student	Under-Graduate	Others	50	50	0	f	t	\N
999c84a7-dd44-4f2b-9a86-134ef97f90be	Christineshanil@gmail.com	0769225776	1/31/2006	Kiambu	Kabete	00000 - 10000	Student	High-School	Others	0	0	0	f	t	\N
285f2f2e-64ab-4270-92be-c481dffa0647	cjeremiah44@gmail.com	0720227336	4/23/1984	Machakos	Machakos Town	100000 - 500000	Self-Employed	Under-Graduate	Construction	0	0	0	f	t	\N
24a31c60-e722-46e4-b5c9-4f514987267c	clairenyamolo@gmail.com	0720905624	6/4/1981	Nairobi	Embakasi East	20000 - 50000	Self-Employed	Under-Graduate	Manufacturing	50	50	0	f	t	\N
097ffa61-c4da-47cd-a0e4-e3375e20a387	clareyakhama@gmail.com	0714843862	1/21/1992	Mombasa	Trans Nzoia	20000 - 50000	Self-Employed	Under-Graduate	Retail	0	0	0	f	t	\N
77c64b4f-76b5-4fb6-81da-677ab1b3163c	clintbakhresa@gmail.com	0796919453	1/10/2000	Mombasa	Jomvu	00000 - 10000	Unemployed	High-School	Others	0	0	0	f	t	\N
5a980e05-778c-40b9-a623-31035b5b7f1f	damamutinda1@gmail.com	0707996985	6/26/1995	Machakos	Mavoko	00000 - 10000	Self-Employed	Under-Graduate	Agriculture	50	50	0	f	t	\N
8f48fc15-6112-4dd3-893e-1e50805d37c6	danogamba@gmail.com	0701121212	1/3/1983	Nairobi	Westlands	50000 - 100000	Self-Employed	Under-Graduate	Real Estate	0	0	0	f	t	\N
1cdb9264-020b-43bf-bc50-5d340d8516f7	darlingtonongera@gmail.com	0706871910	4/10/2002	Nairobi	Starehe	00000 - 10000	Student	Under-Graduate	Others	0	0	0	f	t	\N
c70c4444-cd96-445d-ac7d-78488334faf5	julietdaliza333@gmail.com	0701748669	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
195701c9-eed6-453f-9bf9-fa54dab68d57	kwambokabiginga@gmail.com	+254759820171	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
fa91e9e8-c7cb-42da-a152-a99df912a383	rophineopwapo4@gmail.com	+254743736820	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
98c15a99-b1f9-4853-b497-9b80663fe60e	njerisarah904@gmail.com	0716216115	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
67f9ea8d-953e-4d56-ac9b-dacd04a7ab15	mbuthiamary40@gmail.com	0758646801	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
a8327a88-6261-4dc5-a9aa-e066d3abfc14	jas981611@gmail.com	0793373674	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
d9e28da8-ab57-415c-b304-4faafeebb8ae	felisiareginald@gmail.com	0700614117	2001-06-23	Mombasa	Jomvu	20000 - 50000	Student	High-School	stephennjoroge480@gmail.com	0	0	0	f	t	\N
b6f08194-a214-48f0-858c-435a84c1eb2e	davidhobbes254@gmail.com	0790199165	7/13/2001	Machakos	Mavoko	00000 - 10000	Unemployed	Under-Graduate	Others	50	50	0	f	t	\N
f9bd0d46-0c09-4694-91fb-f83e900af5e2	dianahnaliaka046@gmail.com	0711909976	5/18/2003	Bungoma	Sirisia	00000 - 10000	Unemployed	High-School	Others	25	0	25	f	t	\N
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	elizagakuru54@gmail.com	0720388283	4/10/1970	Machakos	Mavoko	20000 - 50000	Employed	High-School	Education	50	50	0	f	t	\N
5624a568-b393-4e62-a56c-1673b0482c1c	elsieannembithe@gmail.com	0710160756	1/18/1995	Machakos	Mavoko	20000 - 50000	Self-Employed	Post-Graduate	Retail	50	50	0	f	t	\N
23a17622-a50f-47b2-8d10-6769e4acf30a	emuute@gmail.com	+254113215955	3/29/1986	Machakos	Mavoko	50000 - 100000	Employed	Under-Graduate	Manufacturing	50	50	0	f	t	\N
\.


--
-- Data for Name: agent_progress_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_progress_table" ("agent_id", "surveyid", "current_ix") FROM stdin;
d618da68-10ac-4822-a536-ec15839c3c77	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
db118a6c-ee11-42b1-8746-d2b43890f3b5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
edfb1b6c-3230-4a79-a6e0-004ded923356	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
b6f08194-a214-48f0-858c-435a84c1eb2e	c082054d-46e4-4bdf-ac24-810d17406e7c	0
41b23501-8877-4a01-8152-f67094581304	c082054d-46e4-4bdf-ac24-810d17406e7c	0
01939367-739e-4fac-b0a6-cb01a8067a79	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
4dcd4071-5314-4bea-874c-e4c072f25f3c	c082054d-46e4-4bdf-ac24-810d17406e7c	0
f9bd0d46-0c09-4694-91fb-f83e900af5e2	c082054d-46e4-4bdf-ac24-810d17406e7c	0
815533a5-6869-4118-9d2b-8d094faa6f90	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
ec4b09e2-a645-425c-b43b-b59f19525056	c082054d-46e4-4bdf-ac24-810d17406e7c	23
3f5d3c7f-4993-48c1-8499-fba142eb8b49	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
667a67bf-51fe-4df3-b523-00ae295a68ce	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
24a31c60-e722-46e4-b5c9-4f514987267c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
815533a5-6869-4118-9d2b-8d094faa6f90	c082054d-46e4-4bdf-ac24-810d17406e7c	0
41b23501-8877-4a01-8152-f67094581304	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
0b29de00-c97e-444c-8640-87fee3330781	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
17e70ae6-12fe-46a7-9d6f-472e8297cb12	c082054d-46e4-4bdf-ac24-810d17406e7c	0
b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	22
212a1408-70b6-4592-be49-d4ba81008add	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
431841a4-269e-4fa9-a265-476836e7369f	c082054d-46e4-4bdf-ac24-810d17406e7c	0
431841a4-269e-4fa9-a265-476836e7369f	c082054d-46e4-4bdf-ac24-810d17406e7c	0
1e91527b-44e5-4939-9eb0-3dd0d61499d0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
212a1408-70b6-4592-be49-d4ba81008add	c082054d-46e4-4bdf-ac24-810d17406e7c	0
af2caf3e-5a28-491a-bc5f-f869ccc09f38	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
75fcfe69-fa3e-4462-a4be-ea438612cb6b	c082054d-46e4-4bdf-ac24-810d17406e7c	0
d618da68-10ac-4822-a536-ec15839c3c77	c082054d-46e4-4bdf-ac24-810d17406e7c	0
431841a4-269e-4fa9-a265-476836e7369f	c082054d-46e4-4bdf-ac24-810d17406e7c	0
52432a7c-8874-41c9-8e22-23fb1c7823d0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
1e91527b-44e5-4939-9eb0-3dd0d61499d0	c082054d-46e4-4bdf-ac24-810d17406e7c	0
431841a4-269e-4fa9-a265-476836e7369f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
d420e7c7-3fca-4984-9a7a-e254039ed9c9	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
eeeae060-fa85-48a8-8b91-6a952d6f158e	c082054d-46e4-4bdf-ac24-810d17406e7c	0
500ca188-07bf-474d-89fc-bfadd41cd7d3	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
75fcfe69-fa3e-4462-a4be-ea438612cb6b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	c082054d-46e4-4bdf-ac24-810d17406e7c	0
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
5624a568-b393-4e62-a56c-1673b0482c1c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	0
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	c082054d-46e4-4bdf-ac24-810d17406e7c	0
f71951ad-c751-4e1c-9a01-bea44b935e86	c082054d-46e4-4bdf-ac24-810d17406e7c	0
db118a6c-ee11-42b1-8746-d2b43890f3b5	c082054d-46e4-4bdf-ac24-810d17406e7c	23
01939367-739e-4fac-b0a6-cb01a8067a79	c082054d-46e4-4bdf-ac24-810d17406e7c	0
edfb1b6c-3230-4a79-a6e0-004ded923356	c082054d-46e4-4bdf-ac24-810d17406e7c	0
\.


--
-- Data for Name: agent_surv_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_surv_table" ("agent_id", "surveyid", "survey_completed", "points_earned") FROM stdin;
3faf9701-6499-4e1d-9fd7-0b7d04fcfa7b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
f1bf08a4-085f-4b82-b296-639d636fb2f0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
fbe0dd97-1226-4e2b-9587-8ad93339c11a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
97cdba61-a19b-4dd5-8a68-34fbe21d9a36	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
f8b3c5d2-d56a-4425-8736-53d5463ecf12	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
efa4772a-cf28-4f3c-b2af-96ca2e50f4a0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
5ce766ba-9c10-4515-8510-12b2c32e44d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
e27db88b-2061-4cfb-91b5-d83904320202	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
199cdab2-6af3-457d-8590-4069f4b5ab27	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
3325f09e-46ad-416f-a828-5c087a3929c4	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
17e70ae6-12fe-46a7-9d6f-472e8297cb12	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
9752158e-7e1f-498a-b058-d9bb38a2ce30	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
6d7b25aa-a203-4980-b14c-e41c92ab0c87	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
41dc1b6b-00f4-48d1-b083-d1d6ad62bd1f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
5624a568-b393-4e62-a56c-1673b0482c1c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
1280a7c8-3af8-4fa7-bb97-5bb989dccf56	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
4de64e92-dc71-4005-a0de-f46e4df56f27	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d420e7c7-3fca-4984-9a7a-e254039ed9c9	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f522d6fc-340d-4878-871a-a39aff2431a1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
edfb1b6c-3230-4a79-a6e0-004ded923356	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
58d3c3cb-0914-4516-bf95-ceef24429241	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
84a74d7e-c01e-463b-9a0f-6b7c38531c00	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
212a1408-70b6-4592-be49-d4ba81008add	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f20f511a-1581-48b9-976a-3574c7dac6cb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
7ca7d821-22be-4834-84b2-c80e5a5361cf	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
815533a5-6869-4118-9d2b-8d094faa6f90	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
edcf5863-e044-48b3-a6b7-69ffa7f265c2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
e3fc0be9-1068-4a67-a933-b13d4e13daa9	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
01939367-739e-4fac-b0a6-cb01a8067a79	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
97f03cbb-2462-44e3-bee4-ea20c5f5ff33	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
23a17622-a50f-47b2-8d10-6769e4acf30a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
fb293319-b39f-4132-8284-22f66da56937	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
51d92d75-a817-476c-9477-7327d748bb91	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
e6dd5228-a780-4b6e-94da-626d32fb8190	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
b73c1522-4204-426a-82e8-6d201d06f1eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
0b29de00-c97e-444c-8640-87fee3330781	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
818831a5-b451-4c20-bbf0-024669cf7577	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d618da68-10ac-4822-a536-ec15839c3c77	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d91dee2c-782d-4f5d-96a5-79287b8a8daf	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
3bca75f1-bba8-4e61-8a2c-60e9c96863cb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
af1e06f0-6143-4474-804a-35d8ac3cd650	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
bf12e948-da47-4690-8772-efb6ce2e7fe5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
ffce55fe-67cf-479b-93cc-a7eae65375c5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
75fcfe69-fa3e-4462-a4be-ea438612cb6b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
4398d0a9-933e-4efd-9906-b920e390c872	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f0e6fa0a-21d3-4a14-98de-f9105b5f569a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
4dcd4071-5314-4bea-874c-e4c072f25f3c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
eeeae060-fa85-48a8-8b91-6a952d6f158e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
dca92a17-18d7-49e2-9019-71c897ac13ec	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
b6f08194-a214-48f0-858c-435a84c1eb2e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f47f2950-4c39-4fe3-9c63-78042db0f6bf	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
4b937413-4084-48a1-b6b2-8f856442f7ae	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
41b23501-8877-4a01-8152-f67094581304	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
cedcb55f-d753-485b-ac19-72225d399bc9	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
3ca33325-2cac-4895-a875-71e4e3a6e931	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
667a67bf-51fe-4df3-b523-00ae295a68ce	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
cd81dc40-36f1-4399-b5dd-65a0b43b0fec	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
220c3547-0541-45e1-b769-e4a02cee8945	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
121f945d-4974-4a74-97e0-2bb9cdadb25b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
5ef20e18-eee8-40d5-bb2e-30be542c0ffa\n	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
139cdc9b-82b0-4db2-ae12-9da4c3dbb18f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
580ecee2-43ff-4af2-b3b6-e8fc2e35d577	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
eeb4e81c-81f8-4d90-a39c-d4ea906e3337	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
4581c5c1-996b-46bc-a4bb-c63f5a0ff232	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
3e8bcfdf-7d25-4213-8401-43f25abe93ed	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
70080823-9509-4792-b3d3-767df62de09a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	f	25
d5864654-8e03-459f-9641-67cc53e0a1d6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
93325eb3-6c9e-4bd0-854a-88abf48f9887	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
52432a7c-8874-41c9-8e22-23fb1c7823d0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
db118a6c-ee11-42b1-8746-d2b43890f3b5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
e83a0142-c342-40de-aad2-835e5d614ccc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
24a31c60-e722-46e4-b5c9-4f514987267c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
68427b34-46ba-40e0-b01c-6336ab006d94	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
3fcdaf3b-1016-4d3a-b114-f1991e06eab9	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
12059b01-c2cd-4ec0-a640-c4f80728ab8e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
32b3005d-61e7-4b06-b4e5-742b070968e3	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
a1b48c81-a072-4c55-ac64-b8027b889b7a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
b2715e1a-0cc2-4e7a-9128-045c0c688611	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d0f1b707-51f2-4e1c-a9b6-a2e53be83141	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f71951ad-c751-4e1c-9a01-bea44b935e86	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
79e0b32b-5650-4c8c-8d73-71f3e1302ba5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
ec4b09e2-a645-425c-b43b-b59f19525056	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f9bd0d46-0c09-4694-91fb-f83e900af5e2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
431841a4-269e-4fa9-a265-476836e7369f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
49c5437e-d309-4abe-96e9-23fa7398d776	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
500ca188-07bf-474d-89fc-bfadd41cd7d3	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
c087535c-2607-4622-902a-51b6e1dae5f3	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
1e91527b-44e5-4939-9eb0-3dd0d61499d0	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
5a980e05-778c-40b9-a623-31035b5b7f1f	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
a2d5b801-5a09-415e-afc7-e4e16400eca2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
44663c0d-e051-4cfc-9803-211def0c67cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
fe77139a-17e2-4d68-b0e5-29b401ee03cb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
3f5d3c7f-4993-48c1-8499-fba142eb8b49	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
1dc74f31-a53e-461a-aef1-fb2488b86736	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
69bee2d7-0255-44e7-bd56-24a4f137827e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
4615f82c-0260-4aa4-ae6b-999dcce70f3d	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
14713925-327a-4233-8a54-c0f61d673205	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
17e70ae6-12fe-46a7-9d6f-472e8297cb12	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
f8b3c5d2-d56a-4425-8736-53d5463ecf12	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
db118a6c-ee11-42b1-8746-d2b43890f3b5	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
dca92a17-18d7-49e2-9019-71c897ac13ec	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
6d7b25aa-a203-4980-b14c-e41c92ab0c87	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
d5864654-8e03-459f-9641-67cc53e0a1d6	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
bf12e948-da47-4690-8772-efb6ce2e7fe5	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
3bca75f1-bba8-4e61-8a2c-60e9c96863cb	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
fb293319-b39f-4132-8284-22f66da56937	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
e6dd5228-a780-4b6e-94da-626d32fb8190	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
3fcdaf3b-1016-4d3a-b114-f1991e06eab9	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
af2caf3e-5a28-491a-bc5f-f869ccc09f38	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
f522d6fc-340d-4878-871a-a39aff2431a1	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
d618da68-10ac-4822-a536-ec15839c3c77	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
58d3c3cb-0914-4516-bf95-ceef24429241	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
68427b34-46ba-40e0-b01c-6336ab006d94	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
52432a7c-8874-41c9-8e22-23fb1c7823d0	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4b07c44e-a189-4fb7-bf08-18414c44f187	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	t	25
d91dee2c-782d-4f5d-96a5-79287b8a8daf	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
667a67bf-51fe-4df3-b523-00ae295a68ce	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
9752158e-7e1f-498a-b058-d9bb38a2ce30	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
efa4772a-cf28-4f3c-b2af-96ca2e50f4a0	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
70080823-9509-4792-b3d3-767df62de09a	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
f1bf08a4-085f-4b82-b296-639d636fb2f0	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
3325f09e-46ad-416f-a828-5c087a3929c4	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
01939367-739e-4fac-b0a6-cb01a8067a79	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
139cdc9b-82b0-4db2-ae12-9da4c3dbb18f	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
41dc1b6b-00f4-48d1-b083-d1d6ad62bd1f	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
e27db88b-2061-4cfb-91b5-d83904320202	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
4581c5c1-996b-46bc-a4bb-c63f5a0ff232	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
5ef20e18-eee8-40d5-bb2e-30be542c0ffa\n	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
3faf9701-6499-4e1d-9fd7-0b7d04fcfa7b	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
199cdab2-6af3-457d-8590-4069f4b5ab27	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
97cdba61-a19b-4dd5-8a68-34fbe21d9a36	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
23a17622-a50f-47b2-8d10-6769e4acf30a	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
51d92d75-a817-476c-9477-7327d748bb91	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
14713925-327a-4233-8a54-c0f61d673205	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
1280a7c8-3af8-4fa7-bb97-5bb989dccf56	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
edcf5863-e044-48b3-a6b7-69ffa7f265c2	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
0b29de00-c97e-444c-8640-87fee3330781	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
b2715e1a-0cc2-4e7a-9128-045c0c688611	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
f71951ad-c751-4e1c-9a01-bea44b935e86	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
5a980e05-778c-40b9-a623-31035b5b7f1f	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
3f5d3c7f-4993-48c1-8499-fba142eb8b49	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
97f03cbb-2462-44e3-bee4-ea20c5f5ff33	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4398d0a9-933e-4efd-9906-b920e390c872	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
af1e06f0-6143-4474-804a-35d8ac3cd650	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
af2caf3e-5a28-491a-bc5f-f869ccc09f38	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
220c3547-0541-45e1-b769-e4a02cee8945	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
f47f2950-4c39-4fe3-9c63-78042db0f6bf	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
c087535c-2607-4622-902a-51b6e1dae5f3	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
121f945d-4974-4a74-97e0-2bb9cdadb25b	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
b6f08194-a214-48f0-858c-435a84c1eb2e	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
500ca188-07bf-474d-89fc-bfadd41cd7d3	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
75fcfe69-fa3e-4462-a4be-ea438612cb6b	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
ffce55fe-67cf-479b-93cc-a7eae65375c5	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
d0f1b707-51f2-4e1c-a9b6-a2e53be83141	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
212a1408-70b6-4592-be49-d4ba81008add	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
5624a568-b393-4e62-a56c-1673b0482c1c	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
79e0b32b-5650-4c8c-8d73-71f3e1302ba5	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
e3fc0be9-1068-4a67-a933-b13d4e13daa9	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
a1b48c81-a072-4c55-ac64-b8027b889b7a	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
7ca7d821-22be-4834-84b2-c80e5a5361cf	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
49c5437e-d309-4abe-96e9-23fa7398d776	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
f20f511a-1581-48b9-976a-3574c7dac6cb	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
818831a5-b451-4c20-bbf0-024669cf7577	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4b07c44e-a189-4fb7-bf08-18414c44f187	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
84a74d7e-c01e-463b-9a0f-6b7c38531c00	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
cd81dc40-36f1-4399-b5dd-65a0b43b0fec	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
cedcb55f-d753-485b-ac19-72225d399bc9	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
1e91527b-44e5-4939-9eb0-3dd0d61499d0	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
fe77139a-17e2-4d68-b0e5-29b401ee03cb	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4de64e92-dc71-4005-a0de-f46e4df56f27	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
e83a0142-c342-40de-aad2-835e5d614ccc	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
a2d5b801-5a09-415e-afc7-e4e16400eca2	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
fbe0dd97-1226-4e2b-9587-8ad93339c11a	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
ec4b09e2-a645-425c-b43b-b59f19525056	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
3ca33325-2cac-4895-a875-71e4e3a6e931	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
eeb4e81c-81f8-4d90-a39c-d4ea906e3337	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
f9bd0d46-0c09-4694-91fb-f83e900af5e2	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
580ecee2-43ff-4af2-b3b6-e8fc2e35d577	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
5ce766ba-9c10-4515-8510-12b2c32e44d2	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
3e8bcfdf-7d25-4213-8401-43f25abe93ed	c082054d-46e4-4bdf-ac24-810d17406e7c	f	25
93325eb3-6c9e-4bd0-854a-88abf48f9887	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
d420e7c7-3fca-4984-9a7a-e254039ed9c9	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
edfb1b6c-3230-4a79-a6e0-004ded923356	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
f0e6fa0a-21d3-4a14-98de-f9105b5f569a	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
69bee2d7-0255-44e7-bd56-24a4f137827e	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
1dc74f31-a53e-461a-aef1-fb2488b86736	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
815533a5-6869-4118-9d2b-8d094faa6f90	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
32b3005d-61e7-4b06-b4e5-742b070968e3	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
24a31c60-e722-46e4-b5c9-4f514987267c	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4b937413-4084-48a1-b6b2-8f856442f7ae	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
41b23501-8877-4a01-8152-f67094581304	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
b73c1522-4204-426a-82e8-6d201d06f1eb	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
12059b01-c2cd-4ec0-a640-c4f80728ab8e	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
44663c0d-e051-4cfc-9803-211def0c67cc	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4dcd4071-5314-4bea-874c-e4c072f25f3c	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
431841a4-269e-4fa9-a265-476836e7369f	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
eeeae060-fa85-48a8-8b91-6a952d6f158e	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
4615f82c-0260-4aa4-ae6b-999dcce70f3d	c082054d-46e4-4bdf-ac24-810d17406e7c	t	25
\.


--
-- Data for Name: agent_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_transactions" ("agentid", "originator_conversation_id", "mpesa_conversation_id", "amount", "processed_at") FROM stdin;
93325eb3-6c9e-4bd0-854a-88abf48f9887	ff5f7c55-a4f1-4ad7-9024-091e1b3a4e5d	AG_20241118_2040439e38c816d0e951	50	2024-11-18 09:50:06.987678+00
93325eb3-6c9e-4bd0-854a-88abf48f9887	c945fb92-48e7-4987-8e6b-c1d066258c84	AG_20241118_20502d3584bda8c6b242	50	2024-11-18 12:00:26.676258+00
23a17622-a50f-47b2-8d10-6769e4acf30a	1a868ef8-5c39-46b2-90df-c58e265f8e74	AG_20241118_20405cdfe637cac2215e	50	2024-11-18 12:01:04.449457+00
ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	f66e6737-4a8f-4c3c-a56c-f15454f7efd7	AG_20241118_20503595291fb0ff0bae	50	2024-11-18 12:17:56.18619+00
edcf5863-e044-48b3-a6b7-69ffa7f265c2	06f6b283-be3f-4a6f-b228-1d5f134ea44b	AG_20241118_205077f0c1d5c9b41eb3	50	2024-11-18 12:19:38.957904+00
d5864654-8e03-459f-9641-67cc53e0a1d6	12c4edc9-342c-4e21-8928-95c102864a3f	AG_20241118_202037e78b6055ad5916	50	2024-11-18 12:20:29.88052+00
d420e7c7-3fca-4984-9a7a-e254039ed9c9	fb6f8568-bf49-474f-bcee-9002d5239086	AG_20241118_20405051323208e9f4b9	50	2024-11-18 12:24:22.513097+00
182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	c9e77909-8035-4dcb-a1ca-edd48fc25ad5	AG_20241118_206054d7d8634c70db2b	50	2024-11-18 12:26:54.566547+00
0b29de00-c97e-444c-8640-87fee3330781	ff464f99-4558-4145-b8eb-6ffaa701b10b	AG_20241118_205030682b0072d7dd9a	50	2024-11-18 12:28:11.947266+00
25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	6b4a4c95-de6e-4e90-a0f8-f71d3a1c5351	AG_20241118_20502cd15c3fd5e06d31	50	2024-11-18 12:28:18.323632+00
f71951ad-c751-4e1c-9a01-bea44b935e86	55c49e9f-3fdd-409a-b662-44be30a8b8fe	AG_20241118_20602552c312f25b873c	50	2024-11-18 12:32:57.606101+00
3f5d3c7f-4993-48c1-8499-fba142eb8b49	3d3ad6bc-6cd0-4adf-ac51-1fc6813580b4	AG_20241118_20107139a25ed82d355b	50	2024-11-18 12:42:19.939174+00
bf12e948-da47-4690-8772-efb6ce2e7fe5	39f29bdf-f9e7-4af3-bb41-b63dd0d35aad	AG_20241118_207025b07e3585992463	50	2024-11-18 12:45:47.484525+00
69bee2d7-0255-44e7-bd56-24a4f137827e	260d17ea-8547-4e0e-93f2-946581ae53bc	AG_20241118_205003914e0c431f32fd	50	2024-11-18 12:54:06.64274+00
f0e6fa0a-21d3-4a14-98de-f9105b5f569a	8edf4a42-ff18-4689-912f-eafe5a8ba9e0	AG_20241118_20307119db292f184f45	50	2024-11-18 12:57:38.68786+00
b2715e1a-0cc2-4e7a-9128-045c0c688611	aa987e49-031d-43a5-81e5-18a275132093	AG_20241118_2020095623905405990a	50	2024-11-18 13:01:36.400345+00
3fcdaf3b-1016-4d3a-b114-f1991e06eab9	f9acfd8e-62ab-4dc4-ac6f-a8d9ccd8404f	AG_20241118_20406a84b8afaf046783	50	2024-11-18 13:02:53.800301+00
4398d0a9-933e-4efd-9906-b920e390c872	7835e413-5d13-45d6-bca4-712ea326dd19	AG_20241118_203006807038e9c0e354	50	2024-11-18 13:06:13.003718+00
1dc74f31-a53e-461a-aef1-fb2488b86736	33efd518-ae98-4796-8cc4-2b0b873bf73c	AG_20241118_201071a22f030e23c6a0	50	2024-11-18 13:12:21.261659+00
815533a5-6869-4118-9d2b-8d094faa6f90	bc73bc67-5f2f-439c-96fa-079857b2911f	AG_20241118_2010319a98ecc6bab1c7	50	2024-11-18 13:16:09.339765+00
9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	482f267e-d7d5-4dd2-8d3d-32691f7a6f9c	AG_20241118_20604ff5e0072f4ec952	50	2024-11-18 13:33:55.646558+00
af2caf3e-5a28-491a-bc5f-f869ccc09f38	644e423e-6e47-40da-9f10-188ae399dfd0	AG_20241118_20701438b89bb05fc08d	50	2024-11-18 13:40:36.918202+00
f47f2950-4c39-4fe3-9c63-78042db0f6bf	1805db31-c7c6-40bf-bc9c-7e9fdc9037e8	AG_20241118_206073ffc2a200653f19	50	2024-11-18 13:43:33.198873+00
f522d6fc-340d-4878-871a-a39aff2431a1	9183578b-b3e7-4002-9967-f6b24e931c6d	AG_20241118_20107970a57074192fe3	50	2024-11-18 13:43:41.727849+00
c087535c-2607-4622-902a-51b6e1dae5f3	06906f3f-3857-4e15-98ca-d1d0af4a6f87	AG_20241118_20100aa8222138d8c16a	50	2024-11-18 13:47:24.680495+00
96b9d28c-4d4c-452f-a3e7-9f7580cc4322	e636dfb3-6fe9-4f61-ab37-e5883ef8c8ef	AG_20241118_2050647f77dd8150d540	50	2024-11-18 13:58:06.561705+00
b6f08194-a214-48f0-858c-435a84c1eb2e	3c866b95-cb58-463f-be29-d918404e53cd	AG_20241118_20501ce47f73a3ba1be1	50	2024-11-18 14:03:04.2478+00
1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	450c0b4a-f9b2-424d-b243-57db2d0aaa1c	AG_20241118_20403869cc2194af21f8	50	2024-11-18 14:14:36.618789+00
d618da68-10ac-4822-a536-ec15839c3c77	2a379f34-0849-4c2d-9940-e5f362f2a603	AG_20241118_207024e5272324a4fa33	50	2024-11-18 14:19:17.276894+00
af1e06f0-6143-4474-804a-35d8ac3cd650	b26f975b-4a50-4c7e-9614-02b6cf4aa519	AG_20241118_202009e94ba3f93ef401	50	2024-11-18 14:30:11.973223+00
3bca75f1-bba8-4e61-8a2c-60e9c96863cb	46bbed61-b048-43aa-a771-e8821c58a821	AG_20241118_20402fc3f72b6d6c62ee	50	2024-11-18 14:31:31.406551+00
5a980e05-778c-40b9-a623-31035b5b7f1f	5a5a2e47-9ca8-4c33-9dab-388b591d2137	AG_20241118_20205f82dd105fe6fc83	50	2024-11-18 14:53:07.067628+00
4b937413-4084-48a1-b6b2-8f856442f7ae	95a236e6-3684-42d9-9be9-3c992faf8f2b	AG_20241118_20504dc5ba9ef357322f	50	2024-11-18 14:59:22.522146+00
d0f1b707-51f2-4e1c-a9b6-a2e53be83141	f6604b3c-5cbb-4fc5-aad2-02725036adbf	AG_20241118_2020333c30632ebe37df	50	2024-11-18 15:04:40.020944+00
500ca188-07bf-474d-89fc-bfadd41cd7d3	44bb5d68-5f1c-4191-9eb4-4d3269656584	AG_20241118_201061f1911d1a775ade	50	2024-11-18 15:16:40.315419+00
58d3c3cb-0914-4516-bf95-ceef24429241	83d5be7d-4c91-4542-9567-13313936501c	AG_20241118_201050479a7c396e7739	50	2024-11-18 15:26:36.132263+00
212a1408-70b6-4592-be49-d4ba81008add	309807ea-fa09-4e73-a49d-5aa8cde134dd	AG_20241118_2050248d2676c39c68e3	50	2024-11-18 15:39:13.727448+00
b73c1522-4204-426a-82e8-6d201d06f1eb	60269693-da10-4cd3-b228-d0d960772a94	AG_20241118_202033934c314633ee49	50	2024-11-18 16:20:09.545147+00
5624a568-b393-4e62-a56c-1673b0482c1c	90ae45e2-b5c5-4ac6-9aa4-f927346fb492	AG_20241118_2010260b860f2f53b59f	50	2024-11-18 16:24:11.918474+00
e3fc0be9-1068-4a67-a933-b13d4e13daa9	80d6614e-d7de-4366-aea1-fd669bd82a01	AG_20241118_205048f18102b5e3fa3f	50	2024-11-18 16:49:14.274282+00
e6dd5228-a780-4b6e-94da-626d32fb8190	d3f318e4-f88a-42b4-a6e4-fdc804fc0de8	AG_20241118_20201360375095116c5b	50	2024-11-18 17:30:43.380113+00
97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2d268ffe-50ae-4350-82ff-52604549be8e	AG_20241118_20504627a605ffdab8ef	50	2024-11-18 17:31:56.053312+00
12059b01-c2cd-4ec0-a640-c4f80728ab8e	14c67665-d7fa-47dd-bece-ca441aaed526	AG_20241118_2030365ed88d3636a4e5	50	2024-11-18 18:06:47.505754+00
24a31c60-e722-46e4-b5c9-4f514987267c	0e5e0e1b-4f6e-4983-b1a9-ae93b3c8b239	AG_20241118_202049a6ac3182fcad42	50	2024-11-18 18:06:54.679556+00
68427b34-46ba-40e0-b01c-6336ab006d94	c5a0f673-067f-4788-a664-c6391a0c0d97	AG_20241118_2020120793d756db2b0b	50	2024-11-18 18:34:35.746129+00
a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	e52efaf6-56cf-4201-a40e-f9c6801d8ec1	AG_20241118_20406ba51d1801409641	50	2024-11-18 18:55:55.879723+00
41b23501-8877-4a01-8152-f67094581304	44d7095a-802f-4cae-a4b7-66980cba0328	AG_20241118_20605910dff812fd1444	50	2024-11-18 18:59:04.980459+00
edfb1b6c-3230-4a79-a6e0-004ded923356	437b56e0-3436-4579-a76f-4a0df6ec93a2	AG_20241118_20500e3e8dce91e72bd2	50	2024-11-18 18:59:07.46413+00
7ca7d821-22be-4834-84b2-c80e5a5361cf	c1e620ff-15a9-4e56-98ab-073afb20c802	AG_20241118_20700d809fbf907b26c7	50	2024-11-18 19:03:17.084012+00
fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	ba86d48f-4a92-4250-9338-191081e4c866	AG_20241118_206068d4090e2b43d7fd	50	2024-11-18 19:07:08.352259+00
49c5437e-d309-4abe-96e9-23fa7398d776	a5e358b3-573d-4bbd-9557-7316cabef2d6	AG_20241118_206032c588d8982faffd	50	2024-11-18 19:10:55.851322+00
44663c0d-e051-4cfc-9803-211def0c67cc	5000d642-c360-4351-8039-91fe77a8b093	AG_20241118_20407d3a725be07d7493	50	2024-11-18 19:23:15.007339+00
4b07c44e-a189-4fb7-bf08-18414c44f187	14a211dd-6cf8-4591-999f-037ef559ed52	AG_20241118_202009f2b103bb60ee0a	50	2024-11-18 20:01:14.470893+00
d91dee2c-782d-4f5d-96a5-79287b8a8daf	6ff0c5bf-cbd9-435d-9c3b-df4a6003fdec	AG_20241119_20500fda266c3b0eddda	50	2024-11-19 00:22:13.723982+00
1280a7c8-3af8-4fa7-bb97-5bb989dccf56	55417473-c6ad-4f7a-83fd-5b71817ca3e2	AG_20241119_202044782cee8c72fdd0	50	2024-11-19 05:00:20.381863+00
f20f511a-1581-48b9-976a-3574c7dac6cb	251f0b5d-40b7-4c99-b295-64c79312dfc4	AG_20241119_20504504cc5af71da4eb	50	2024-11-19 07:23:16.893258+00
75fcfe69-fa3e-4462-a4be-ea438612cb6b	69b2daa3-dcdc-4994-b7b9-d1e97c3e6c8c	AG_20241119_20606e7d77338d7bdf60	50	2024-11-19 07:46:32.728197+00
84a74d7e-c01e-463b-9a0f-6b7c38531c00	6c71956c-51e4-4fe7-8b7d-ba4a7ba98e44	AG_20241119_20204a5ecb0121f34a7b	50	2024-11-19 10:44:46.911169+00
f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	3fc47f7b-4c21-46ca-ba9a-03af0ea5a048	AG_20241119_201046b74fd4f2921836	50	2024-11-19 11:43:56.181777+00
4dcd4071-5314-4bea-874c-e4c072f25f3c	2eb43e1e-1193-4980-ac63-369439510846	AG_20241119_2020740d4b75ec2f7711	50	2024-11-19 12:13:00.760297+00
cedcb55f-d753-485b-ac19-72225d399bc9	6bc26c71-96ed-4d5f-9453-920768cb072e	AG_20241119_2030288c283138545cfc	50	2024-11-19 13:03:52.289794+00
51d92d75-a817-476c-9477-7327d748bb91	517f0223-8384-474a-8aaa-0ec535c69af8	AG_20241119_20305508b59a3f7cd90f	50	2024-11-19 16:07:04.257681+00
431841a4-269e-4fa9-a265-476836e7369f	2b31ecb0-0346-41a8-b493-3a4b45420a7b	AG_20241119_20300001380e42a1dfd2	50	2024-11-19 17:08:15.446046+00
fe77139a-17e2-4d68-b0e5-29b401ee03cb	bfc94528-6413-4260-96c7-a14a801a8a75	AG_20241120_207022195bf55f8b114a	50	2024-11-20 04:46:49.404843+00
121f945d-4974-4a74-97e0-2bb9cdadb25b	99a14849-6cba-4537-8788-d6877239ad7d	AG_20241120_20107574d82a50b94f5b	50	2024-11-20 06:19:18.177047+00
a1b48c81-a072-4c55-ac64-b8027b889b7a	a136028f-3f36-4ec1-a4b9-72f43187cc33	AG_20241120_204066fa64d244c8f032	50	2024-11-20 06:55:07.017667+00
220c3547-0541-45e1-b769-e4a02cee8945	a5557416-4d91-463f-b8aa-caaae282280b	AG_20241120_20305d8093991620dc9c	50	2024-11-20 10:26:06.3244+00
32b3005d-61e7-4b06-b4e5-742b070968e3	ede86805-f73f-4883-98b6-df01831c880e	AG_20241120_202078750d43ba21f595	50	2024-11-20 10:26:47.893931+00
8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	7ca6a18a-c040-4445-a513-fe7bc1e8ce70	AG_20241120_205048cef3c7324ba142	50	2024-11-20 14:42:10.733917+00
4de64e92-dc71-4005-a0de-f46e4df56f27	8878bc2c-0c2f-45ec-9ed3-30ed252e02d1	AG_20241120_20204f18826d7ef4de22	50	2024-11-20 17:41:06.389851+00
52432a7c-8874-41c9-8e22-23fb1c7823d0	414410f0-a8c2-4dc8-a96b-62a8037c0427	AG_20241121_20501ea1ec750a96dfcb	50	2024-11-21 10:05:27.27352+00
818831a5-b451-4c20-bbf0-024669cf7577	acf67316-6190-4346-8a04-6c3a05759332	AG_20241121_201043e7813d4a474a50	50	2024-11-21 13:44:12.418098+00
eeeae060-fa85-48a8-8b91-6a952d6f158e	656b94b7-d197-49ee-b058-d827dfcd53e4	AG_20241122_202079f447725b60c5f6	50	2024-11-22 09:07:37.854595+00
79e0b32b-5650-4c8c-8d73-71f3e1302ba5	962cba60-7e38-49a6-b5ca-ed49cf815701	AG_20241123_20506331eb3c9f3790f7	50	2024-11-23 05:54:24.661982+00
4615f82c-0260-4aa4-ae6b-999dcce70f3d	a7892190-a9fb-425d-b8f1-1df417fa137d	AG_20241124_20600972fa8a72ec53c4	50	2024-11-24 10:20:43.548884+00
e83a0142-c342-40de-aad2-835e5d614ccc	e6d0a385-2086-4e65-a72c-4afa72c38e11	AG_20241124_205043df40a87d8ea256	50	2024-11-24 13:29:17.51221+00
a2d5b801-5a09-415e-afc7-e4e16400eca2	0a7b4948-3927-4120-816c-bb57eb3d174b	AG_20241124_204045d3bf983cba33b4	50	2024-11-24 18:57:49.692443+00
14713925-327a-4233-8a54-c0f61d673205	7ee96375-859f-4392-b230-690885d4edd3	AG_20241125_20600ee4b2bc38985d9e	50	2024-11-25 15:22:18.338876+00
667a67bf-51fe-4df3-b523-00ae295a68ce	f8139989-0835-42b9-b917-38c4cbff0679	AG_20250120_20602dd922cee8d28f64	50	2025-01-20 13:22:40.339979+00
\.


--
-- Data for Name: survey_qns_optimum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."survey_qns_optimum" ("questionid", "surveyid", "question_type", "question", "likert_key", "updated_at", "created_at") FROM stdin;
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	Are you satisfied with the variety of products available in our supermarket?	satisfaction	2024-11-11 13:25:16.593341+00	2025-02-17 11:18:11.541299+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Were you able to find everything you were looking for during your visit?	\N	2024-11-11 13:27:59.185755+00	2025-02-17 11:18:11.541299+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How satisfied are you with the quality of fresh produce (fruits and vegetables) in our store?	satisfaction	2024-11-11 13:30:57.01095+00	2025-02-17 11:18:11.541299+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Do you feel our store offers a good range of healthy food options?	\N	2024-11-11 13:31:34.269584+00	2025-02-17 11:18:11.541299+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the availability of your preferred brands in our supermarket?	\N	2024-11-11 13:32:03.673954+00	2025-02-17 11:18:11.541299+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Single	Is there any product or category you would like to see more of?	\N	2024-11-11 13:32:16.840677+00	2025-02-17 11:18:11.541299+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	How do you feel about the prices of products in our store?	\N	2024-11-11 13:33:03.030488+00	2025-02-17 11:18:11.541299+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How satisfied are you with our promotions, discounts, and loyalty programs?	satisfaction	2024-11-11 13:33:11.654238+00	2025-02-17 11:18:11.541299+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Do you feel you are getting good value for the price you pay at our supermarket?	\N	2024-11-11 13:33:40.832165+00	2025-02-17 11:18:11.541299+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the friendliness and helpfulness of our staff?	\N	2024-11-11 13:33:59.097845+00	2025-02-17 11:18:11.541299+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Did a staff member assist you during your visit, and if so, how was the experience?	\N	2024-11-11 13:34:49.551621+00	2025-02-17 11:18:11.541299+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	How would you rate the speed of checkout at our supermarket?	\N	2024-11-11 13:35:30.023367+00	2025-02-17 11:18:11.541299+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the ease of navigating through our store?	\N	2024-11-11 13:35:43.402358+00	2025-02-17 11:18:11.541299+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the cleanliness and organization of our store?	\N	2024-11-11 13:35:49.479579+00	2025-02-17 11:18:11.541299+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Was the store well-stocked during your visit?	\N	2024-11-11 13:36:18.368673+00	2025-02-17 11:18:11.541299+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the lighting, temperature, music and overall comfort of the shopping environment?	\N	2024-11-11 13:36:31.686653+00	2025-02-17 11:18:11.541299+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Optional	Have you used our online shopping or delivery services?	\N	2024-11-11 13:36:52.176595+00	2025-02-17 11:18:11.541299+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How satisfied were you with the online ordering process?	satisfaction	2024-11-11 13:37:24.98883+00	2025-02-17 11:18:11.541299+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Rating	How would you rate the delivery speed and the condition of your items upon arrival?	\N	2024-11-11 13:37:44.162519+00	2025-02-17 11:18:11.541299+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How satisfied are you with your overall shopping experience at our store?	satisfaction	2024-11-11 13:37:57.308458+00	2025-02-17 11:18:11.541299+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How frequently do you shop at our store?	frequency	2024-11-11 13:38:10.006973+00	2025-02-17 11:18:11.541299+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Likert	How likely are you to recommend our store to a friend or family member?	likelyhood	2024-11-11 13:39:10.748906+00	2025-02-17 11:18:11.541299+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Single	What is your favorite aspect of shopping at our store?	\N	2024-11-11 13:40:01.566303+00	2025-02-17 11:18:11.541299+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Single	Is there anything we can do to improve your overall shopping experience?	\N	2024-11-11 13:40:07.557316+00	2025-02-17 11:18:11.541299+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	Single	How can we improve our customer service to better meet your needs?	\N	2024-11-11 13:40:18.764442+00	2025-02-17 11:18:11.541299+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	How did you get to know about us?	\N	2024-11-18 07:50:24.142278+00	2025-02-17 11:18:11.541299+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	How did you book with us?	\N	2024-11-18 07:55:45.973059+00	2025-02-17 11:18:11.541299+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	Likert	How satisfied were you with the cleanliness of your room?	satisfaction	2024-11-18 07:56:41.951657+00	2025-02-17 11:18:11.541299+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Was the room size adequate for your needs?	\N	2024-11-18 07:59:54.14923+00	2025-02-17 11:18:11.541299+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Did the amenities in the room meet your expectations?	\N	2024-11-18 08:03:32.797609+00	2025-02-17 11:18:11.541299+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	Likert	Were you satisfied with the quality of the bedding and mattress?	satisfaction	2024-11-18 08:04:06.415965+00	2025-02-17 11:18:11.541299+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	How would you rate the quality of food and beverage?	\N	2024-11-18 08:06:18.439899+00	2025-02-17 11:18:11.541299+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Did the variety of food options on the menu meet your preferences?	\N	2024-11-18 08:09:32.161706+00	2025-02-17 11:18:11.541299+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Were the dining areas clean and well-maintained?	\N	2024-11-18 08:28:59.263384+00	2025-02-17 11:18:11.541299+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Was the room service timely and accurate with your order?	\N	2024-11-18 08:30:50.758694+00	2025-02-17 11:18:11.541299+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	Rating	How would you rate the quality of the hotel’s facilities?	\N	2024-11-18 08:31:44.461131+00	2025-02-17 11:18:11.541299+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	Multiple	Which amenities did you enjoy the most during your stay?	\N	2024-11-18 08:36:36.369959+00	2025-02-17 11:18:11.541299+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	Likert	How satisfied were you with the internet and Wi-Fi connectivity in your room?	satisfaction	2024-11-18 08:37:18.935672+00	2025-02-17 11:18:11.541299+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Did you feel the hotel’s security measures were adequate?	\N	2024-11-18 08:39:29.801645+00	2025-02-17 11:18:11.541299+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Were the hotel staff friendly, courteous, and professional during your stay?	\N	2024-11-18 08:46:52.159489+00	2025-02-17 11:18:11.541299+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	Single	Did you have any complaints during your stay?	\N	2024-11-18 08:48:41.83467+00	2025-02-17 11:18:11.541299+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Were your complaints resolved to your satisfaction?	\N	2024-11-18 08:57:21.041984+00	2025-02-17 11:18:11.541299+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Do you think the price of the room was reasonable for the amenities offered?	\N	2024-11-18 08:58:52.067102+00	2025-02-17 11:18:11.541299+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	Rating	How would you rate your overall experience during your stay?	\N	2024-11-18 08:59:18.813644+00	2025-02-17 11:18:11.541299+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	Likert	How satisfied were you with the check-in and check-out process?	satisfaction	2024-11-18 08:59:40.766896+00	2025-02-17 11:18:11.541299+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Were your requests handled promptly and efficiently?	\N	2024-11-18 09:00:59.259815+00	2025-02-17 11:18:11.541299+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	Optional	Would you recommend our hotel to others?	\N	2024-11-18 09:02:31.099297+00	2025-02-17 11:18:11.541299+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	Single	What did you like/enjoy most about our hotel during your stay?	\N	2024-11-18 09:03:06.369287+00	2025-02-17 11:18:11.541299+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	Ranking	Which cuisine did you enjoy the most?	\N	2024-11-18 09:05:46.174851+00	2025-02-17 11:18:11.541299+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	Single	What suggestions would you offer to improve your experience during your next visit?	\N	2024-11-18 09:06:13.513509+00	2025-02-17 11:18:11.541299+00
\.


--
-- Data for Name: question_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."question_options" ("optionid", "questionid", "option") FROM stdin;
d8ae7261-3907-482d-95ec-15e4dd5584c3	6f31b5d4-18fa-40a7-960c-3677066ce3d2	Yes, everything
9af65669-084c-46cb-b171-d2a11ac80045	6f31b5d4-18fa-40a7-960c-3677066ce3d2	Most of the items
245cbda9-6e8b-49b2-bd69-7eb302e5cb76	6f31b5d4-18fa-40a7-960c-3677066ce3d2	Some items
fca75d4a-abb2-4d72-b387-581c80cbae52	6f31b5d4-18fa-40a7-960c-3677066ce3d2	No, I couldn’t find what I needed
dcabf2f0-316f-4bf6-978f-c9d59ecc767b	00d86e5b-dba1-49a5-8909-5c38a1479ee7	Yes, definitely
1582d784-0e29-446e-88bd-ffd40e98b974	00d86e5b-dba1-49a5-8909-5c38a1479ee7	Yes, but could improve
a4a12725-ed0a-40c9-8c91-07b85fef765b	00d86e5b-dba1-49a5-8909-5c38a1479ee7	Neutral
c5c211b7-2f7d-4664-b72e-dd014d4995c1	00d86e5b-dba1-49a5-8909-5c38a1479ee7	No, limited options
c324e2c7-d812-4ec4-8de3-fa0580973100	00d86e5b-dba1-49a5-8909-5c38a1479ee7	No, not at all
741e7606-8fc4-4971-9731-688d288052af	ff5250ca-7f87-4287-9790-8439ff79d248	Very Reasonable
4bdc5c0b-f2e2-4104-b74b-9f950b4195a5	ff5250ca-7f87-4287-9790-8439ff79d248	Reasonable
7dd6dd7d-0ff9-4c01-a208-f6880f5e21a8	ff5250ca-7f87-4287-9790-8439ff79d248	Neutral
db762779-3248-4605-ac4f-fbf8cc4d55d9	ff5250ca-7f87-4287-9790-8439ff79d248	Expensive
80443ab1-0f1e-42d0-a849-2c88844a0037	ff5250ca-7f87-4287-9790-8439ff79d248	Very Expensive
a6528d0d-e5c0-44b9-a16a-27caf81980a6	1c306e71-be5e-4899-822a-3f46e526a057	Yes, excellent value
bb4c7044-0017-474e-8545-b8b0337f3b25	1c306e71-be5e-4899-822a-3f46e526a057	Yes, good value
9902a478-2312-4de9-9648-a5d4dc10663e	1c306e71-be5e-4899-822a-3f46e526a057	Neutral
e78abfb6-a1da-4fbb-bf25-d834390972ea	1c306e71-be5e-4899-822a-3f46e526a057	No, poor value
f7895b87-f2d6-41a4-967d-db1b598df608	1c306e71-be5e-4899-822a-3f46e526a057	No, very poor value
40ff75d3-0092-446c-b768-8bea6c0a436d	a72c44ad-6b48-4ff2-94a2-dbc727b333d7	Yes, and it was excellent
710d6883-7bc4-4292-9607-cc5826a86c4f	a72c44ad-6b48-4ff2-94a2-dbc727b333d7	Yes, and it was good
99466905-698e-4cb9-af1f-82792349dd31	a72c44ad-6b48-4ff2-94a2-dbc727b333d7	Yes, but it was average
1bf5fb3c-d4f4-44fe-99e4-6b7ece8c52c6	a72c44ad-6b48-4ff2-94a2-dbc727b333d7	Yes, but it was poor
54fc2529-d618-40b2-935a-739ff3cc95c2	a72c44ad-6b48-4ff2-94a2-dbc727b333d7	No, I was not assisted
86c8bc40-c339-4d4c-baf4-bb1cc4084920	39a13775-90a4-431a-961d-0532d7da41d7	Very Efficient
0e6ae3f9-48fb-4222-bb7f-a6136b5eea5b	39a13775-90a4-431a-961d-0532d7da41d7	Efficient
9f422c87-4a5f-4b82-8997-8a79f4d2233a	39a13775-90a4-431a-961d-0532d7da41d7	Average
21144470-769c-4bed-8719-424ffd5d7a76	39a13775-90a4-431a-961d-0532d7da41d7	Inefficient
5ef22c30-3d7a-41ce-afdd-4e987d556792	39a13775-90a4-431a-961d-0532d7da41d7	Very Inefficient
cdbfd8ff-a0cd-4d10-8d3c-5cdcaec96edd	1822aefb-aaa7-4a9c-88d2-82759f647a58	Yes, fully stocked
8c3f1022-9f99-4349-bb77-d2bf29afb849	1822aefb-aaa7-4a9c-88d2-82759f647a58	Mostly stocked
cd1e3533-79d1-401e-819a-c225d2478f01	1822aefb-aaa7-4a9c-88d2-82759f647a58	Somewhat stocked
8a83ba04-01a9-4a2b-b6ad-3535dbb67423	1822aefb-aaa7-4a9c-88d2-82759f647a58	Poorly stocked
dac3e9a5-18e0-41a3-9300-8da8b5034db9	1822aefb-aaa7-4a9c-88d2-82759f647a58	Not stocked at all
f331538d-ecdf-44da-998a-b3d17f3a8c1d	dcd41437-c782-4ba1-a5a1-edb83d78ec4a	Yes
6fb2defb-c4d3-4a73-9880-ce21dc8bd7ce	dcd41437-c782-4ba1-a5a1-edb83d78ec4a	No
d326c5fc-ef7f-4201-b7cf-844650135375	dcd41437-c782-4ba1-a5a1-edb83d78ec4a	Not Applicable
46b9a56d-6843-4164-a716-fd02486b122b	6f1dab70-7d1a-4438-9157-b585af2467d9	Search Engine
235ec480-22f5-4e68-9acb-86257642fdf4	6f1dab70-7d1a-4438-9157-b585af2467d9	Facebook
315b117f-77b5-4567-93ff-380f1b4b646a	6f1dab70-7d1a-4438-9157-b585af2467d9	Instagram
a40da535-fd07-4cc1-a618-3461798fded9	6f1dab70-7d1a-4438-9157-b585af2467d9	Referral
ddf72f72-1eff-426b-b8b8-34a6a73d2ecd	6f1dab70-7d1a-4438-9157-b585af2467d9	Other
fa573a2c-5922-442b-b2cc-18631daa5bb5	0becfbe6-5830-4630-b986-a8b71ec9e75c	Online - Website
8e43e402-4c98-45d2-9469-1802a7512c5c	0becfbe6-5830-4630-b986-a8b71ec9e75c	Travel Agency
fb4c9488-8da9-42f2-a0bb-32499e60c665	0becfbe6-5830-4630-b986-a8b71ec9e75c	Phone call / Message
428ba150-244d-45b4-9642-3bfa932ddfe1	0becfbe6-5830-4630-b986-a8b71ec9e75c	Email Booking
ae04dc6b-c84e-45e3-b4b1-1909dfb3fae4	0becfbe6-5830-4630-b986-a8b71ec9e75c	Other
4b5c6b28-4410-420b-8160-a8f8eee5b5b5	7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	Yes, completely
8bd46c71-99d4-4dfd-97fa-cb28bc186f4c	7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	Mostly
caef13e6-3d9f-4182-baa6-a5db6381902d	7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	Neutral
fe7f2bec-d1fc-4878-b36e-a35b14853b7d	7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	Not really
c3d6e5d0-27e6-49f3-9c7a-a3a96a1ff7fd	7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	No, it was too small
07772c94-459c-4958-913b-e14b39a4bf6d	78c0d15c-2db5-47f3-affe-7fe610d40123	Exceeded Expectations
a5905a5d-9545-4126-be0c-74a791c29a17	78c0d15c-2db5-47f3-affe-7fe610d40123	Met Expectations
0db681e9-06ad-4ba3-aca2-7e6dd023e7d4	78c0d15c-2db5-47f3-affe-7fe610d40123	Neutral
d82b193a-3a0e-4b97-a264-d238c781bcb4	78c0d15c-2db5-47f3-affe-7fe610d40123	Below Expectations
2f35b799-5c0a-47bb-8876-8107af0bff28	78c0d15c-2db5-47f3-affe-7fe610d40123	Did Not Meet Expectations
086bdd46-b5f4-417a-b6b5-c3172a7076b1	400d4591-701a-434d-a818-d48a26302a57	Excellent
6192b857-4157-4044-ab67-9946aa194e9b	400d4591-701a-434d-a818-d48a26302a57	Good
8a1d0554-7f51-4f54-8670-e3a38e4b1f49	400d4591-701a-434d-a818-d48a26302a57	Average
6872eadc-8ec9-4c5e-9237-2e76c61d100d	400d4591-701a-434d-a818-d48a26302a57	Below average
10c32977-0dd6-4fc1-a74d-21d1300add23	400d4591-701a-434d-a818-d48a26302a57	Poor
2af931b4-ec60-4736-b343-bcc34175ccf9	eb6c2812-2a76-4a33-a8ff-d5641a564090	Yes, completely
0e3cc980-d8e1-4686-b63e-01e1fee709e4	eb6c2812-2a76-4a33-a8ff-d5641a564090	Mostly
a9b57799-a44f-41a7-be67-caf2f2add68f	eb6c2812-2a76-4a33-a8ff-d5641a564090	Neutral
0437a345-ee40-4242-a1fe-f4a02c5c25d7	eb6c2812-2a76-4a33-a8ff-d5641a564090	Somewhat
09541ba0-dbe1-498c-b7c5-a92e7d6686cd	eb6c2812-2a76-4a33-a8ff-d5641a564090	No, not at all
8572ed56-93a4-463c-962b-522f3c623d8f	22016b7c-fea7-4c30-b90d-8a977be7a511	Always
6cdaf266-2c29-4a61-a78c-69c33ed33cb3	22016b7c-fea7-4c30-b90d-8a977be7a511	Most of the time
c2b1755a-3a50-4c17-bae7-0f5867e82dab	22016b7c-fea7-4c30-b90d-8a977be7a511	Sometimes
5f9a216b-905c-4266-8430-9f3bfbdd7031	22016b7c-fea7-4c30-b90d-8a977be7a511	Rarely
7dc8f7f3-892b-44b3-938e-22ee28c15994	22016b7c-fea7-4c30-b90d-8a977be7a511	Never
eaec758d-11f0-4fcf-b388-e78fde8b4949	d6c4a584-d1fb-4511-81e6-b608b5de6914	Always
bf52bf43-4bce-4c21-aac4-30b14df9ec13	d6c4a584-d1fb-4511-81e6-b608b5de6914	Most of the time
85051605-1e9d-42bd-883b-abb9070fd336	d6c4a584-d1fb-4511-81e6-b608b5de6914	Sometimes
4b3724de-00f8-4ea9-a538-742652b93037	d6c4a584-d1fb-4511-81e6-b608b5de6914	Rarely
77e13863-d52a-4757-857f-e8013bbf6cea	d6c4a584-d1fb-4511-81e6-b608b5de6914	Never
3684ed4d-2a2a-4925-ac27-6246b9380c5d	17fc096c-7011-440b-be4a-31dcbfe61735	Swimming pool
af686cfe-a18a-436e-bb8d-fc7b540dd9f9	17fc096c-7011-440b-be4a-31dcbfe61735	Club 
b45a9231-30c7-42c5-b5cb-ca9d7a57b471	17fc096c-7011-440b-be4a-31dcbfe61735	Cafeteria
3ef8cff7-4235-4207-907c-df275d0adbf8	17fc096c-7011-440b-be4a-31dcbfe61735	Beach
4092e30f-d282-4a9a-b1cd-9ea1ea908082	17fc096c-7011-440b-be4a-31dcbfe61735	Game Park
86cd5c95-394c-4fe5-92db-7038e334182c	4913caa6-d942-45cb-801a-1ee44063e57e	Yes, Completely
8f3c0b3a-47a6-4e4c-8b3c-40fad40b4fcf	4913caa6-d942-45cb-801a-1ee44063e57e	Mostly
572f397b-277b-46a2-acba-4fbf0a7b96b5	4913caa6-d942-45cb-801a-1ee44063e57e	Neutral
100fd186-0359-4333-a2b5-0af42d4bfa56	4913caa6-d942-45cb-801a-1ee44063e57e	Not really
6a1a8dd6-90c4-4466-ad59-c91c10446088	4913caa6-d942-45cb-801a-1ee44063e57e	No, not at all
d916776d-98cb-49eb-b570-a0a61d9ffb69	eac2877d-915d-4ce4-a32d-49dee271a5c8	Always
a0c8b7a0-4505-4e46-b62d-99e42eecf88d	eac2877d-915d-4ce4-a32d-49dee271a5c8	Most of the time
26a73ca9-bc0e-4924-adcd-6f5b070f9700	eac2877d-915d-4ce4-a32d-49dee271a5c8	Sometimes
8738013d-0ec3-4130-a1cb-285cc72d7b5d	eac2877d-915d-4ce4-a32d-49dee271a5c8	Rarely
8d1321b7-fac9-42d6-9011-c2a0051c9ad3	eac2877d-915d-4ce4-a32d-49dee271a5c8	Never
64184192-20b5-4737-9628-64681219c06f	aaf3f226-d2ca-4d94-af5a-ac85430776bd	Yes, completely
f3277a98-16d4-4b6d-ae31-869cb89abbc8	aaf3f226-d2ca-4d94-af5a-ac85430776bd	Mostly
5415397a-2541-4662-abf5-da0c72284117	aaf3f226-d2ca-4d94-af5a-ac85430776bd	Neutral
cfb92370-8e72-4f07-956a-14b614124ff8	aaf3f226-d2ca-4d94-af5a-ac85430776bd	No, not at all
f30c8df1-dc60-4cb4-8a06-e1366f73182c	aaf3f226-d2ca-4d94-af5a-ac85430776bd	Not Applicable
0bf79d29-66a1-4e12-8cca-6678b902e0e4	89ed9510-835a-4bd4-a820-005bce2562b6	Yes, completely
735114e0-1e15-49f9-8e91-e06a083d43ad	89ed9510-835a-4bd4-a820-005bce2562b6	Mostly
ae199bba-e2a5-49c8-bac8-0dcf7c8c51ee	89ed9510-835a-4bd4-a820-005bce2562b6	Neutral
4872ee5d-e63b-4d81-adae-d7a2530b2e0f	89ed9510-835a-4bd4-a820-005bce2562b6	Not really
70e021a8-5c4c-4c1c-8202-07d662f49c82	89ed9510-835a-4bd4-a820-005bce2562b6	No not at all
985bbd91-4a60-4be7-af4d-0efe6dc13089	8544dd09-4d10-4dc7-84e6-7d24e26bb870	Always
ff50545e-cfda-4a97-9f23-f580a8c527af	8544dd09-4d10-4dc7-84e6-7d24e26bb870	Most of the time
97296867-9d6a-4e5e-ba4c-63e2010c9133	8544dd09-4d10-4dc7-84e6-7d24e26bb870	Sometimes
6e099b89-cc32-4591-bf04-0fd8a07ccaca	8544dd09-4d10-4dc7-84e6-7d24e26bb870	Rarely
1b01c468-69aa-4289-ae63-4be373cedd90	8544dd09-4d10-4dc7-84e6-7d24e26bb870	Never
8495be20-7158-42f8-8f0c-72b76875b544	3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	Definitely
07a3f564-0bc4-4199-8522-55eaf1223c75	3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	Probably
28ef7e3b-c966-44ac-8622-d380f3b4d6eb	3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	Not sure
b671c7ad-c968-4224-9bd6-a72233471abb	3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	Probably not
4f894499-18ca-4f5c-a4db-f0fe99f3e17c	3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	Definitely not 
a7ba9e22-daf5-44a5-9606-53e4c690a55f	a516e0b8-d38d-4b30-bded-33b39cf340c7	African
1ca9098a-a9e5-4b0c-9d42-ac66395d2238	a516e0b8-d38d-4b30-bded-33b39cf340c7	Chinese
e3e3b9bf-8736-406b-92d2-47c4bdbb9cce	a516e0b8-d38d-4b30-bded-33b39cf340c7	Indian
8b0f28c2-d848-44e9-a509-0cded9363ed0	a516e0b8-d38d-4b30-bded-33b39cf340c7	Spanish
b12c63db-a490-40e1-9c72-4fb68bc0195e	a516e0b8-d38d-4b30-bded-33b39cf340c7	West African
\.


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."answers" ("questionid", "surveyid", "option_id", "rankid", "answer", "agent_id", "updated_at") FROM stdin;
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:09:22.616799+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:09:30.439486+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:09:38.628675+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:09:50.234739+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:09:57.519042+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More grain selections like rice preferably pishori which is hard to find sometimes 	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:09.590828+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:17.337718+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:25.986408+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:34.0055+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:41.307683+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:52.504863+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:11:59.435262+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:05.115411+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:12.423287+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:19.092448+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:29.717197+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:38.407359+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:45.479077+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:12:53.913066+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:13:01.418418+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:13:07.838168+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:13:14.228637+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The organization and cleanliness	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:13:27.57944+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Stock more and maybe increase the checkout speed	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:13:46.21973+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	To increase the checkout speed	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-11 14:14:00.369042+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:28:40.339005+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:28:50.128771+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:28:59.490294+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:29:18.205004+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:29:24.624092+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More of beauty products	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:29:37.646257+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:29:43.698042+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:29:53.409898+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:30:30.043323+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:32:10.248864+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was average	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:32:17.697835+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:32:27.398975+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:32:37.548021+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:32:53.445151+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:33:02.022148+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:33:10.21127+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:33:31.021366+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:33:46.442805+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:33:55.201647+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:34:06.387626+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:34:16.387754+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:34:16.686705+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:34:27.805913+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:34:30.131292+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:34:42.097163+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The variety of snacks and the prices of products	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:34:50.10931+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:34:52.705799+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:35:05.15561+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	To improve on the checkout speed at the counter	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:35:22.188948+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:35:53.42295+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:36:46.026934+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	To train them on being friendly with the customers and not showing any attitude at any given point	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-11 14:36:01.609967+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:36:20.76248+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, cold meats/cuts	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:37.313281+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:30.244521+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:32.774181+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:13.099991+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:24.511841+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:44:55.070281+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:44:40.777695+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Na	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:45:02.667089+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:45:27.902474+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:47:24.929067+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is good	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:48:56.095032+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:49:03.685435+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:49:36.704523+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:50:01.359558+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Employ more cashiers 	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:52:10.883166+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:48:00.428166+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:48:45.787866+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:49:16.913878+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Everything is in order 	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:49:35.664245+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Look on how you can manage long queues.	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:49:40.840983+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	 Get more staff to guide the purchasers to the right positions of the products	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:50:05.584946+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Manage long queues 	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:50:43.055634+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more staff	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:51:11.169609+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:55:45.079882+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:46.924699+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:01.335977+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:14.431055+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:25.075243+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:32.622825+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:46.899256+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:50:59.421509+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:21:31.575331+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:22:16.268595+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:13.081096+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:26.283561+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:34.39917+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:24:38.012962+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:24:45.130242+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:46.155807+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:31.542234+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:45.972596+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:47.044107+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:25:47.559878+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:25:53.717794+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Game park and food 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:10.993934+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:26:39.921053+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:54.730041+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:55.123529+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:55.501948+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:26:56.496599+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:04.950019+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really, everything was fine	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:27:23.21211+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:31.974409+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:40:49.697599+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:40:57.66096+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:05.188592+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:10.49567+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:16.15356+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:41.392704+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:41:46.042492+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:41:56.560422+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:02.031131+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:42:10.830675+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:11.98771+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:14.594131+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:22.493232+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:22.977771+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:42:25.799351+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:26.923579+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:34.811513+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:39.681799+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:42:41.798125+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:43.860829+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:47.347222+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:52.206756+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:42:53.692861+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:42:55.674072+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fish	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:42:58.432892+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:00.597486+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:04.570037+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:05.186825+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:10.724688+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:43:14.772989+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:19.030643+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:19.533264+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:24.581514+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:30.514607+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:43:32.888537+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fruits and vegetables	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:43:33.823207+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The ambience 	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:43:36.491065+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:37.780126+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:43:41.622546+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:45.992824+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:43:48.693146+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:50.978896+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:43:56.433498+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:43:58.505975+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:43:59.839768+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:01.768219+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Nothing really, maybe better staff	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:44:03.666649+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:09.783782+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:44:11.28339+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Urge them to be prompt	5f86f90d-b1a8-4ecc-a8c8-b97a6e889f13	2024-11-11 14:44:17.731356+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:20.893604+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:25.781252+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:44:26.379743+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:44:29.50193+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:33.693293+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Bring in cheap products for the customers si that the supernarket may become popular and attract customers 	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:44:37.403638+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:44:40.332655+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:40.514085+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:44:41.174269+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:44:56.886142+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:45:37.647387+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:45:51.891767+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:10.464397+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:21.298798+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The ambiance and the service to the customer 	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:46:24.276781+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:42.458036+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:56.497508+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I am satisfied with the customer service physical but online services needs to be improved 	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:47:58.966346+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:48:27.807307+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:06:34.329956+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:07:44.375177+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:07.833544+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:51:09.096477+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:51:26.628967+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:51:55.750867+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:23.389841+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:23:00.760529+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:15.11992+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:20.224451+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:25.100415+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:34.8009+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:47.336372+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:56.429452+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:24:41.519461+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:45.650614+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:25:31.463061+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:34.727925+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:34.915546+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:25:37.517571+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:25:50.063219+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:51.790931+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:26:18.707277+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:19.706295+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:20.739245+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:23.864151+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:26:26.593189+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:37.588864+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:27:36.214005+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:27:36.419451+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:27:36.608775+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:27:36.797491+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:27:36.986611+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Average	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:27:39.083326+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:39.523056+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	swimming	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:51.697604+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No I didn't have 	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:27:53.492624+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Maintain same professionalism	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:28:31.265749+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:34.454285+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:45.698262+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:21.028931+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:30:33.808897+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Dissatisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:36:58.75719+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:44:46.907438+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:45:08.761344+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:45:19.117126+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:45:40.77784+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Improve on your checking out efficiency 	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:45:41.375124+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:45:50.834318+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:48.108833+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:33.672232+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:48:25.266046+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:48:34.558885+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:48:55.532327+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:49:13.234436+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:49:22.185314+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Dissatisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:10:46.747169+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More of kids toys	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:11:18.75025+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:11:43.29952+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Inefficient	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:18.598769+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:43.667381+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:03.18147+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Stock the shelves	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:14:10.493631+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:06:47.450234+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:07:21.109043+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:07:38.572528+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:07:57.361415+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:08:07.548254+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:10:38.351806+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:11:06.881865+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:17.795+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:11:31.840122+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:33.585571+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	70	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:12:00.317024+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:12:07.453505+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	A meat section 	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:51:45.778558+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:22:36.059168+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:22:47.123841+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:05.064896+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:12.003972+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:24:21.906533+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:27.965376+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:24:57.001594+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:06.489088+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:13.057531+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:16.596189+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:07.405556+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:10.102671+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:13.332386+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:23.353177+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:28:35.134037+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:28:58.638419+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:30:35.785925+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:30:35.98499+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:30:36.172813+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:30:36.360981+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:30:36.548565+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:31:27.951075+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:31:38.709974+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:31:48.270672+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:44:48.173846+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:44:48.619929+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:45:16.038469+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:45:23.658693+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:45:43.808183+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:45:55.084087+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:36.828764+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More varieties of detergents and food staffs	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:02.550563+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:47:03.145928+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:12.258449+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:47:17.391686+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:25.121345+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:47:37.611699+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was average	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:52.798392+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Inefficient	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:48:15.181306+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase more staff\nEleminate this password thing at the cashier	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:53:11.665478+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:12:31.308512+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:52:19.11469+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:52:30.144759+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:28.787635+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:49.182753+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:54.346249+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:00.803649+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Consider lowering the accommodation prices 	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:56.010177+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:24:58.07695+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:26.000771+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:31.328822+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:31.858658+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:40.193773+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:44.031767+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:54.935522+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:26:55.312662+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:27:03.16621+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:16.224334+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:16.41146+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:32.559472+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:27:50.122737+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No the stay was tranquil	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:55.815635+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:15.56393+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:25.008074+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:39.430153+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:29:07.844119+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The hotel has various amenities that meet different moods and tastes.The services and ambience is amazing	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:29:29.495654+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I loved the hotel so much clean and they serve \n	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:29:51.411333+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:30:21.342197+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:30:25.716503+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:33.840567+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:30:50.148602+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:52.922153+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:31:14.426748+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Food 	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:33:36.765333+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	to improve on the hospitality industry 	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:35:36.773023+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:35:37.996006+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:35:49.891749+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Cleanness 	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:57.346188+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:44:51.360858+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:45:01.212753+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer care	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:45:01.23183+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:06.273133+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:45:12.022892+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:12.599272+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More promotions	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:45:19.374936+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Variety of products 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:45:19.420675+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:22.175776+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:28.961153+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:45:29.742159+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:38.136432+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:45:40.835238+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cosmetics and bathroom products 	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:45:41.444551+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:44.56889+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:45:48.600517+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:52.675381+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Being gender biasef	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-11 14:45:55.802278+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:45:59.220032+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:45:59.574997+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:46:03.474434+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:46:09.281285+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:09.847572+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:46:15.457598+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:46:22.357425+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:46:22.758666+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 14:46:22.956259+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:23.198272+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:46:29.698122+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:46:30.136912+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:30.587965+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:46:30.802694+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:46:37.404643+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:46:38.684819+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:38.753621+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:46:39.5436+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:44.642591+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:46:46.521219+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:46:48.159999+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:46:53.743454+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:46:54.74347+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:46:58.616943+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:02.300435+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:07.67968+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:47:10.402769+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:13.924076+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:47:15.063918+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:47:16.093374+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Custard powder 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:47:21.693305+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:23.88759+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:47:30.336176+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:47:30.623383+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:32.218977+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:47:32.894318+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:47:34.751654+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:47:35.100791+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:47:37.356902+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:47:39.097785+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:39.928508+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:47.520924+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:47:48.584733+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:47:53.966828+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:01.564873+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:46:13.196565+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:46:27.131321+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More of electronic devices and fast delivery services online	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:47:17.294679+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:47:44.102193+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:48:17.101971+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:48:46.136238+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not now	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:49:11.217816+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	As of now I don’t see any issues with it 	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:49:44.005222+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:49:46.290496+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The previllage to shop and select on my own	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-11 18:51:25.73947+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:20:09.893143+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:20:46.353944+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:22.849572+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:22:23.706465+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:45.977154+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:42.188425+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:50.174785+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:24:38.417096+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:24:39.502911+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:25:47.459409+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add variety 	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:29:14.999889+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:29:49.347434+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:30:29.861966+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:47:57.622983+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:06.927078+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:49:05.927011+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:49:25.231688+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:24:50.423705+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:54.227733+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:04.93316+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:25:05.084943+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:16.578488+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:25:59.227444+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	no	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:02.023672+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:26:17.456303+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:26:27.326994+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:26:37.467099+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:26:39.441038+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:27:14.497013+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:27:32.272169+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:32.372842+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:32.748762+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:28:01.056132+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:40.72467+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:28:45.284234+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:30:12.539103+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:34.032101+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:45.032443+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:31:10.083313+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:31:54.850557+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:47:41.5002+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:10:28.586239+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, limited options	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:10:56.250268+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Expensive	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:11:27.259777+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, very poor value	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:11:51.786649+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:10.589914+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:25.63018+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:09.300291+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:21.768915+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Music	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:53.926317+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:21:00.249104+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:12.712365+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:37.256734+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:08.893483+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:56.998162+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:24:09.721803+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Easy to navigate and the helpful attendants 	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:25:15.956657+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:27:08.261638+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:28:18.37804+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Helpful staff 	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:28:54.453858+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:28:55.172642+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:29:06.573787+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:16.445961+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:29.785868+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:47.062705+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:49:33.114229+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:49:39.311879+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase the different varieties of products for options 	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:51:19.398045+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:53.83609+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:25:09.039473+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:14.376824+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:25:49.121127+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The food and also the drinks	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:50.507877+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Email Booking	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:25:54.560323+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:25:58.199347+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:57.957617+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:23.496787+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:32.170531+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:27:32.372447+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:33.635543+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Breakfast time 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:27:40.354803+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:28:16.305122+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:28:43.191264+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:46.213549+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:28:56.77873+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really 	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:30:11.210987+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:30:37.444955+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:30:57.291222+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	A deep dive into locally available meals for different cuisines and a bountiful portion of meals	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:31:24.514263+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:31:26.557496+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The room service 	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:32:54.7311+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:33:13.162542+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:33:43.824518+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	African	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:34:17.742143+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:34:17.95816+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:34:18.146423+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:47:49.778482+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:10:35.715891+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Poorly stocked	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:52.577106+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:35.941352+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Train them on being friendly 	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:14:30.576302+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Variety of Rice products in 10 kg packaging and Fruits 	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:03.616177+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:32.882186+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:24:24.189772+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:25:22.580626+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Atleast be fast on check out	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:25:50.349515+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Make sure the store is well stocked with variety of products 	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:26:33.244918+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:28:17.835422+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:30:39.617616+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:31:00.956634+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:21.28771+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:54.525781+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:49:17.450179+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Shopping Card Points that can be used for discounts	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:50:20.407494+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:25:36.757186+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:37.600096+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:29:02.254939+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:29:14.36544+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:29:25.774676+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:29:32.111129+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:29:54.039462+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:30:01.827794+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:31:17.410993+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	entertainment.	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:32:57.630646+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:33:19.515435+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Hope I'll come back again I did enjoy 	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:35:25.616104+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:20.079599+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:29.405098+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:43.887775+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:37:04.788297+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:38:18.553622+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:37.055037+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:38:48.959505+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:38:59.731127+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:09.763229+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:40.213097+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:43.171326+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:02:46.598486+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:03:20.376892+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:03:27.892928+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:03:48.023937+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:03:59.142394+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:05:06.489905+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:06:15.15676+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:09:45.93285+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:09:46.141015+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:09:46.335726+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:09:46.554439+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	i enjoyed about the cafeteria 	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:12:18.40168+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The internet speed to be fast	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:13:07.831955+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Adjust the  cost to attract more guests 	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:15:18.102994+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:47:53.702542+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:11:02.890037+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:12:01.231459+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:15.649812+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:28.516671+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Unlikely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-11 19:13:42.817468+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:34.136649+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:54.785453+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:28.274447+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:07.927661+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:40.017853+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	N/A	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:29:34.452186+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:39:53.451909+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:41:00.187482+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:41:14.312582+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:41:33.949298+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:42:23.537213+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:43:19.151953+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:28:27.2458+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:28:29.853557+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:28:44.131679+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Having some to help when shopping 	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:29:55.411295+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:29:57.456369+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:30:20.359412+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:30:48.581287+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:31:22.130601+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:48:38.629044+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Encourage the employees to interact more with customers 	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-13 10:51:50.085267+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:27:19.673612+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:20.667585+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:27:24.432944+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:08.170434+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:28:17.437793+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:33:43.446959+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:33:43.634569+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:33:44.013722+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:33:44.208763+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Everything is okay 	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:35:39.147687+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:35:42.863702+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:35:56.053871+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:36:05.962424+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:36:47.434818+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:39.54209+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:10.262437+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:28.217703+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:48.124335+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:55.164317+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:37:55.339232+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:38:37.583093+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:38:42.896179+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:48.306341+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:38:58.773846+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:00.146815+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:30.127861+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:34.421485+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:59.585928+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:18.90452+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:47:56.571992+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:47:57.519509+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:48:00.665733+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:07.587708+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	So many but it will depend on the market price.	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:48:07.75096+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:48:09.460994+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The music	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:48:09.510371+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:48:11.053731+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:48:15.887273+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:48:17.21144+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:48:18.894497+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:48:20.840299+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:29.437442+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fast tellers	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:48:31.353925+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:48:32.986882+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:48:34.852637+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:48:35.865511+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:48:38.905707+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:39.117424+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:48:41.736307+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:48:43.239323+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:45.638728+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:48:46.095052+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:48:49.317194+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:50.716452+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:48:54.264513+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Keeping up with the good work 	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-11 14:48:55.169749+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:48:58.914608+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:48:59.00887+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:01.888662+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:49:03.094503+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:12.368525+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:49:13.027957+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:49:15.94993+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The products 	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:49:18.675517+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:19.797779+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:49:21.090039+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:49:23.856694+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:25.76089+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More furnitures and kitchen utensils also also kids toys collection 	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:49:28.481448+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:49:29.114258+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:49:29.510703+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:32.570441+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	groceries i.e fruits and vegetables	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:49:35.608897+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:49:35.918966+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:49:39.376884+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:40.150801+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:49:41.424953+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:49:44.34961+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:49:46.301642+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:49:49.031451+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:49:50.705962+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:49:52.185315+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:49:54.686854+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:49:54.837971+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:49:57.113823+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:50:01.303213+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:50:01.405798+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:25:32.152741+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:01.239834+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:49.199887+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:34.121374+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:01.163253+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:22.909858+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Nothing in particular for now	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:29:14.405834+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:34:42.01395+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:36:12.064288+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:40:37.583644+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:40:38.395056+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:41:25.768368+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:41:50.595408+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:42:07.479802+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:42:47.854101+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	There are faster and have good service 	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:32:28.242731+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:37:57.560228+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:38:16.155551+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:38:59.022532+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:10.944247+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:41:41.620174+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:44:26.51305+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:45:02.878951+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:29:33.975452+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:29:49.227562+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:30:13.645651+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Perfumes	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:31:41.273106+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:16.831719+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:44.927413+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:33:02.658352+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:33:24.261849+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:34:12.824558+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:34:18.334679+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:34:18.528361+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:36:11.763104+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:36:55.396423+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:13.844474+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:34.000602+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:38:30.363696+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:03.999745+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:16.709944+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:38:19.531294+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:39:32.009041+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:41:01.976222+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:03.557436+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:04.566973+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	relaxation	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:41:17.100014+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:26.623358+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:33.48009+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:33.670873+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:33.860545+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:34.050603+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:34.246459+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The ambience of the room. The set up. The cleanliness.	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:42:41.64185+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:44.408464+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:04:09.207515+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:50:02.822135+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:15.95584+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, limited options	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:50:18.761916+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:30.024796+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:25:40.370502+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:08.646064+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:43.759418+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:08.298266+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:46.175874+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:14.643809+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:33.432064+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:35:01.879291+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:35:40.670663+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:38:44.974953+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase the variety products,	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:33:38.646059+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:30.206107+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:16.556367+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:30:01.631012+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:39.170886+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:33:10.725387+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:33:37.374729+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Investment in efficiency 	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:37:41.656334+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	African	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:34:24.441003+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:34:24.630813+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:34:24.834073+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:34:25.033495+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:34:25.22131+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:16.884941+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:17.074556+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:17.268785+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:17.467287+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:35:17.654654+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:36:16.461094+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:57.622063+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:37:57.824122+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:05.398884+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:16.299014+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:38:19.1859+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:57.609696+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:39:20.093495+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:41.721526+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:39:49.340757+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:40:50.12139+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:40:50.508445+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:23.491293+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:30.779963+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:41:47.976645+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:48.644198+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:51.711972+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:06.699839+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:20.406269+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:29.219089+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:42:52.696069+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:43:04.00433+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:43:17.435804+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:44:01.338865+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:50:03.01306+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:42.028336+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:25:50.07253+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fruits	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:26:24.350468+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:21.328917+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:27:52.830578+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Walking around	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-11 19:28:56.136636+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:35:25.84568+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:40:04.198408+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:40:50.452372+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:41:12.064456+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:41:58.260921+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:42:15.834525+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more counters	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:34:54.518561+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:37:50.301584+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:38:06.820817+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:38:41.862681+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Expensive	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:38:48.792311+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:38:58.686699+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:37.390977+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:42:43.897435+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:42:52.546102+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:43:51.55142+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:46:02.690828+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:46:37.349885+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Organization - Clearly labeled sections and isle will make it faster to locate items	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:51:24.979642+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:30:27.907007+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:31:49.541695+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:10.172907+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:23.142821+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:53.300932+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:34:03.718281+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Affordability 	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:34:32.029296+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Service 	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:36:30.932702+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:10.597351+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:53.363469+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:39:02.320085+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:39:20.747627+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:39:09.400003+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:39:37.550161+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:04.298107+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:24.804525+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:35.640904+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:41.405921+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:43.095307+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:43.648517+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:44.461985+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	im good	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:42:43.739259+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:44.812299+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:43:10.182364+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:43:33.721439+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:44:17.662348+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:20.439066+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:45:39.476431+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:45:39.666216+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:45:39.857101+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:07.01108+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:50:09.610687+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:50:10.65058+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:50:32.223317+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Ambiance, very well stocked shelves 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:50:36.460524+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:50:39.291489+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:50:42.956682+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yeah i would like to see more pet foods	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:38:37.598375+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:39:20.189165+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was poor	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:40:23.782951+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:41:38.819491+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:42:35.321721+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	pet food	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:43:06.982732+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:37:35.861161+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:38:20.263086+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:18.359451+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:44.719258+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:50.645672+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:06.955872+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:25.022791+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:46.719009+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:41:05.594977+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Quality products 	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:41:31.799054+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	So far they are good	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:42:10.178133+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:42:26.325352+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:43:10.002211+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:44:16.190892+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:45:54.469962+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:46:28.349295+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Product Knowledge - Train staff to be knowledgeable about products and able to offer guidance, or suggest alternatives when items aren’t available.	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:53:49.783805+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:01.393412+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:32:31.039475+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:33:51.374579+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase the number of counters and the speed in which they operate 	3ca33325-2cac-4895-a875-71e4e3a6e931	2024-11-13 15:35:13.894228+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:37:02.939994+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:26.980911+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No everything was in order	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:42.279703+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:39:10.48939+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:47.453876+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:53.286297+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:38.501147+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All is explicitly perfect 	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:41:42.857503+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:49.710606+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:41:51.909591+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:55.931676+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:01.817805+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:42:08.816285+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:42:16.488977+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:42:39.162571+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:44.026818+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:44.217213+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:44.599452+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	None	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:44.810555+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:43:06.222876+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:44:10.3283+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:50:07.874077+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:48.964802+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	It was fine.i got everything i needed	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:43:41.348035+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:45:51.687624+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I would recommend  that you indicate where one can reach certain products with ease without struggling	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:46:03.251578+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:46:27.122096+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:48:28.800096+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:49:04.424983+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	So far am comfortable 	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:38:39.981203+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:39:12.661986+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:39:27.500867+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:39:58.645801+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:40:55.747009+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:41:13.116821+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hardware/Home Improvement section 	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:41:25.966016+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Introduce more Kenya art in your store	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-12 07:41:57.453431+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:44:04.52939+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:44:39.011957+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:45:35.996061+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Helpful staff, availability of most items, proximity to my residence 	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-12 07:48:51.227199+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:10:59.310776+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:11:21.823154+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:13:55.310057+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:15:22.544737+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:15:30.472364+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:15:44.976884+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:17:05.218138+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:22.415315+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:52.027234+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:08.756889+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:11.852505+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:41:34.529633+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:39.602168+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:41:59.820065+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:43:22.407256+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:43:29.483804+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:43:50.335424+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:28.161274+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:47.439456+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:47.63349+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:47.827155+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:48.016673+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:48.209367+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:51:04.965712+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Food staff 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:51:31.817818+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:54:58.44066+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:42.332208+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	For the african cuisine..make a whole lot of variety upto and including all traditional foods	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:02:07.240152+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:28.973262+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:29.168089+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:29.368738+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:29.563383+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:05:50.656538+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:06:26.810773+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I enjoyed the swimming pool and the food	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:10:13.437585+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:50:19.415719+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:50:21.794046+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:21.920081+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-11 14:50:33.402404+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:50:34.559618+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	As it stands its ok unless a new product listing	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:50:49.512383+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:50:58.085996+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:51:01.437777+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hair care products 	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:51:02.777284+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 14:51:03.755648+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:51:04.133079+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:05.847691+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	 Maybe some very calming music 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:51:06.52984+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:14.938457+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:51:20.780628+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:51:21.493236+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:51:22.950365+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:23.539718+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 14:51:27.370452+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	For me I like line of baking,bread snacks and so on.	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:51:27.779551+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:51:31.994095+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:32.180317+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:51:39.155952+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:51:40.744921+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:41.419669+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:49.375948+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:51:51.089958+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, customer hospitality.	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:51:52.46194+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:51:53.587753+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:51:55.888202+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:51:56.21422+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:51:58.358417+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 14:52:00.472588+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:52:03.634559+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very good customer service 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-11 14:52:04.211445+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:52:06.025781+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:52:06.873621+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:52:07.140101+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:52:08.286541+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hospitality 	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-11 14:52:10.305625+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 14:52:10.706884+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:52:20.011653+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:52:20.87298+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Convenience	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:52:24.171687+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reduce the price of the products slightly 	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:52:25.105236+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 14:52:26.81235+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:52:29.29137+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:52:29.757698+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:52:33.424393+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:52:33.537352+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:52:39.967473+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	cleanliness\nefficient in the services especially at the counter	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:52:40.225864+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:52:42.885266+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:52:49.210261+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:52:51.505923+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Clothes and shoes	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:53:04.475643+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:53:05.79976+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:53:21.096534+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Price reduction, more promotions for items , varieties 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:53:27.394654+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:54:30.70103+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:54:40.227273+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:43:49.672011+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:45:42.667447+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:46:11.75545+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:48:06.892654+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	clean store and good attendants	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:50:38.757599+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:06:07.055215+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Expensive	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:07:07.820018+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Inefficient	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:08:59.427914+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not stocked at all	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:19.870657+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Never	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:11:02.953648+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:11:40.750619+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:13:01.215011+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:14:08.872544+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:14:28.0299+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:15:55.634903+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:38:38.258741+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:48.517312+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:38:51.776327+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:38:58.459703+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:39:06.86141+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:39:14.242465+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:41:32.128542+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming Pool	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:42:03.830019+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:14.603367+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:24.718648+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:42:30.847358+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:39.98524+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:40.182821+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:40.384096+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:07:48.604665+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Foods and beverages were good 	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:08:05.53909+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:11:42.476641+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The staff is really kind and helpful and the food was amazing 	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 14:12:34.071344+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	i am okay with it 	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:55.135774+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:17:34.919758+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:17:35.114125+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:17:35.302854+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:17:35.492416+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:17:35.722112+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:25:55.825387+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:16.406997+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:39.028248+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:48.861724+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:52.64801+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:04.763063+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:21.518316+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:35.320342+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:35.517382+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:35.706384+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:51.239018+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:53:14.917242+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more stock	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 14:53:15.555336+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:53:34.81472+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:53:43.833727+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:53:48.16801+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:53:48.277232+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:54:19.47097+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:54:41.840577+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, poor value	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:44:44.109858+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:45:12.661351+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:48:17.002008+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	quick response to any complain 	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:52:52.024012+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I couldn’t find what I needed	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:06:15.465576+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, not at all	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:06:42.642437+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:07:48.039621+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:34.755299+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:48.998731+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:11:58.036595+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Children snacks 	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:12:45.722666+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:13:07.911465+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:13:22.689452+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:13:33.610372+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:14:40.982831+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:17:18.917243+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The swimming pool was cool	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:39:33.672273+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:39:53.121755+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:42:43.930643+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:00.592109+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:18.330295+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:43:25.742738+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:33.479197+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:44.60869+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:46:36.334264+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:39.401953+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:39.59109+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:39.781554+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:40.013135+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:40.231377+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:46:48.432106+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improve customer service 	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:59.794719+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:06.21732+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:30.665339+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:47:53.643817+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:48:14.486492+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No complaints at all	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:48:33.551054+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:05.063573+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:49:19.509875+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:49:31.190775+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No,I didn't. Everything that I needed during the visit were all available at time. But please if possible you can have variety of beddings.	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:50:56.503142+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:25.618094+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:44.947535+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:03.766676+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Keep up the good work	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:56:15.946299+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:56:17.537268+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Please if possible, you can expand the lodging rooms,, Cuisine, swimming pool and also cleanliness of the hotel to be of high standard.	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:57:15.336174+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:53:20.098708+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:53:20.698233+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:44:58.326133+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:45:59.91708+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Respond to any claim as soon as possible	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-11 19:48:05.850843+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:06:33.159785+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:06:47.638469+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:07:24.993753+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:15.148246+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very unlikely	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:11:18.813451+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	cheaper pricing	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:12:47.608691+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:14:16.539051+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	It's quite ok	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:18:19.234005+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Provide customer service persons at every isle	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:18:54.58794+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:39:33.957506+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:17.255187+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:17.447526+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:17.638161+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:17.834128+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:18.022095+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:40:24.400091+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:42:23.811348+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:48.84644+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:42:57.033719+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:43:04.49817+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:43:13.658439+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:27.575567+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:58.157891+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:44:24.051462+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:44:28.423458+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:44:44.195959+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:44:44.631513+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:59.951704+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming pool 	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:46:12.754515+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:13.924504+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:05.043944+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:05.234513+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:48:08.142227+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:29.403424+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:51:29.621904+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:51:29.804842+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:51:38.667839+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:51:55.422136+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:52:04.129886+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:17.513329+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:44.001957+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:54:08.612097+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:54:20.20255+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	African	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:55:55.519192+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:55:55.90136+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:55:56.115688+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:55:56.28842+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:56:59.343622+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:57:08.124602+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Average	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:57:55.081813+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:14.545782+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:01.102522+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Open branches 	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-11 14:53:20.389558+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:53:24.068166+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:53:49.008154+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:54:10.139942+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase more staffs for efficiency especially at the cashier 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-11 14:54:10.986315+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:54:30.305201+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:48:39.7638+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:48:49.078122+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	more promotions	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-11 19:51:21.084546+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Toys	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:07:00.03483+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, very poor value	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:07:40.043575+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:08:51.833975+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:05.35015+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:25.600086+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:38.719916+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:09:43.359936+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Toy section.	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:12:11.82511+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Change customer service	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-12 08:12:30.681559+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:15:13.580157+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:39:42.664351+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:40:04.09257+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:40:46.525479+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No,100 percent satisfied 	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:41:02.914974+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:41:10.566755+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:41:28.906303+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:41:35.314201+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:41:56.602277+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:25.652467+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:38.80888+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:44.265373+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:42:51.865023+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:06.44439+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:38.536027+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:44:02.197044+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:44:39.416438+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Food and the inviroment 	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:45:32.127876+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:52.522267+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:48:45.269756+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:49:13.657644+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:50:13.632013+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:51:20.242757+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The environment and the staff 	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:44:48.536915+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:09.83078+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:59.442711+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:46:58.481712+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:47:42.079176+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Introducing new brands of items 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:49:30.504143+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:50:01.179666+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:50:50.219397+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:51:24.246977+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	no i didn't have any complain	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:06:43.162962+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:54.546678+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:07:04.196804+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:07:21.454723+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:07:49.319463+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:53:30.692503+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:54:02.536327+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:54:25.527023+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:48:11.847758+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:51:32.18414+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:14.811179+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:53:02.717922+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:53:40.121366+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:53:59.898121+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Wide range of products and dynamic prices and discounts. 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:56:05.351602+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Have more checkout points or a better way of checking out to reduce time spend at the teller especially at peak hours and peak days. 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:57:56.340857+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:53:19.159381+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:54:02.893174+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:19.283106+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:47.722094+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:56:15.67661+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:57:11.926011+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:57:43.781634+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Train staff to communicate better\n	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:59:23.110443+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The check out speed	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-14 06:17:57.18021+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:40:14.933268+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:40:30.388561+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The west African dishes can be done better	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:40:33.336115+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:40:59.665174+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:41:31.929158+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:41:48.12475+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:20.263711+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:42:28.607216+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:30.958353+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:42:33.748039+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:42:53.723649+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:12.092709+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:35.114127+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:50.175351+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:44:10.487366+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:44:20.130398+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:44:32.265623+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:23.644043+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:36.252959+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:32.475145+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The service 	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:16.429601+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	the room,cafeteria,swimming pool	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:50:41.067227+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:41.668035+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:41.860608+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:42.05602+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:42.271045+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:42.469113+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:00.267433+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:36.947119+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	nothing	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:42.097631+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:27.314746+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:53.010175+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:54:38.081937+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:56:01.598943+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:56:09.114685+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:06:46.442737+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:53:35.328803+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:54:01.529348+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:54:04.294094+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:54:11.627099+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:54:21.264285+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:54:21.828871+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:48:22.510427+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:49:22.452194+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:06.936112+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:49.969056+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:53:09.526263+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:54:38.406059+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:53:49.332308+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:54:21.312166+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Pasta , Spices\n	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:54:56.634937+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:28.811651+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:59.668448+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:56:09.765172+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:57:34.329163+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:31:38.783397+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:33:58.726546+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Electronics	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:34:45.804181+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:01.205243+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:18.326283+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:51.530576+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:37:49.24706+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is nice and the music	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:38:48.815125+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:40:38.088634+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:41:12.253794+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:41:21.601523+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:41:49.386026+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:41:58.249875+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:42:07.074101+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:20.741768+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:43:43.637331+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:43:44.720635+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:44:11.808458+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:44:16.668037+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 12:45:31.029879+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:46:57.509066+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:22.732101+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:37.039491+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:47:54.942722+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:23.759974+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:49:40.362228+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:46.945798+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:51:10.294163+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:51:45.435647+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No suggestions 	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:51:51.292521+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:51:51.415412+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:52:11.900526+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:16.937378+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:17.127551+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:17.323773+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:52:17.704535+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:17.840296+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:54.237486+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:54:43.751455+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:54:53.192666+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:54:58.755265+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:55:08.464715+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:55:11.898125+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:55:18.747151+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes,,, vegetables and fruits 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:55:24.816147+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:55:26.557053+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:55:26.896242+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:55:33.709368+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:55:36.885941+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:55:38.621673+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:55:39.337769+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:55:47.193226+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:55:49.117275+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:55:49.773296+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:55:59.17928+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:56:14.38908+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:56:17.910782+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:56:19.658905+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:56:24.294408+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:56:29.138126+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:56:41.009416+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:56:47.954146+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	That everything is under one roof	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:56:49.880503+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Discounts and always stocked liquor store	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:56:55.067799+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Soft drinks specialities	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:56:55.571825+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Chocolate \nBread\nBlueband	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:57:09.882539+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cashiers should be faster and addition of tellers	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:57:24.99103+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More of attendance audience to customers 	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:57:29.493643+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:57:48.502336+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Creat enough space and also add more general items	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:57:56.711378+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 14:57:57.422672+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:57:57.718679+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More audience to customer with smiles	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-11 14:57:59.078264+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The systems at the customer service should be faster	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-11 14:58:04.247925+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:04.659276+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 14:58:12.664188+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:15.155519+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:23.413485+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 14:58:26.948253+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:30.819218+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 14:58:38.250443+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:38.836168+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase the number of staff to help the customers whey they find difficulties accessing items they want	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 14:58:44.349779+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:46.383809+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 14:58:48.221079+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:58:57.392204+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:59:03.746587+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:59:10.302956+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:59:14.908805+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Have outspoken service personnel 	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-11 14:59:30.958646+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Clothes, fresh vegetables and fruits, legumes and more beautiful things	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 14:59:51.480693+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:00:02.173643+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 15:00:03.736688+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:00:33.578573+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:01:17.764049+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:01:43.829046+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:48.032202+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:01:58.890175+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:48:37.11745+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Coffee, specifically brand Cafè Pele 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:51:18.434024+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:51:54.694445+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:24.242729+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:42.90432+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:53:22.388295+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:54:50.885251+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:54:13.389482+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:02.536517+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:09.451545+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:56:41.18908+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:57:20.189772+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cheap Prices for Drinks and beverages 	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:58:09.821406+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:31:43.590425+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:33:53.510382+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:35:43.84017+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:26.829102+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:57.517043+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:46:57.076512+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:27.633076+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:11.205536+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:20.174505+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:37.789332+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Instant Reply	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:50:14.521106+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:41:11.353178+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:41:18.352143+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:41:28.861956+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:41:38.256398+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:42:14.708081+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:42:15.568151+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:42:42.64591+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:46:16.055731+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:46:26.867434+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:46:43.062969+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:46:56.12266+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:48:01.88745+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:14.175456+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:19.351692+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I never had	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:48:53.03072+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:13.434671+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:49:38.77011+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	fb293319-b39f-4132-8284-22f66da56937	2024-11-18 12:50:05.57325+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:07.803375+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Beach sites, Swimming pool and Cafeteria\n	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:52:47.520989+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 12:57:28.216858+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:57:38.349675+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No,	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:59:09.327698+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:41.627937+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:54.018145+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:00:49.262984+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:00:07.270742+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:00:25.126131+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:00:33.77003+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:02:22.939264+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:27.119811+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:38.947444+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:48:59.314817+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:52:35.068826+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:55:00.48704+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is excellent. 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-12 00:59:08.861766+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:55:37.812321+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:56:33.010517+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:56:46.383705+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reduce prices on essential items like tissue soap and toothpaste\n	dca92a17-18d7-49e2-9019-71c897ac13ec	2024-11-12 08:58:57.745766+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:32:38.189506+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:05.611442+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:15.038838+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:37:55.625865+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not at All	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:39:04.582031+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Give out giveaways	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:39:54.349535+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I couldn’t find what I needed	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:05.471141+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:50.892315+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:41.509384+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:45.803481+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very unlikely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:53.440381+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Free delivery	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:49:35.39936+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:21.626532+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:52:31.750582+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:36.733277+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:54:14.570992+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:54:47.14853+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:54:51.191369+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:54:51.378938+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:54:51.567545+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:54:51.756427+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 12:54:51.951603+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:54:58.601073+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:55:09.835096+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:55:43.832089+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:59:21.149866+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:29.140337+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:34.685176+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:00:55.219542+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The amenities offered were up to standard and adequately okay for me during my stay	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:01:13.782267+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:21.132776+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:01:59.305862+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:01:59.494504+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:01:59.685651+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:01:59.877402+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:02:00.070131+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:06:08.139353+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:06:55.995319+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:09:20.131001+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:09:33.649837+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:09:43.637654+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:01.478128+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes most of the beauty products	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:00:11.320853+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:00:14.794641+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:00:23.427089+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:00:36.314358+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:31.270769+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:01:35.790661+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:41.276997+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:01:46.056303+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:47.530509+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:55.375069+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:35:43.851269+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:36:31.697685+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fresh fruits 	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:00.799249+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:23.850303+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:41.427757+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Inefficient	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:05.906379+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:19.708552+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:39:28.604982+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Proximity 	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:40:25.034177+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More efficient customer service 	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:41:30.958878+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:27:06.872054+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:27.852435+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:34.082465+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:47.8173+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:53.815271+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:30:15.677013+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:30:23.272534+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:30:30.100952+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:31:03.974848+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:26.839734+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:38:47.172036+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Gather and Act on Feedback	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:41:45.540238+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:42:31.113452+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:42:53.73137+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-12 09:43:56.313377+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:44:55.436971+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:11.184412+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:22.795513+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:30.598507+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:38.321829+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:41.29726+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-15 07:36:47.776617+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:08.795523+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:53:15.240908+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No I was okay 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:00.874537+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:39.095426+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I enjoyed myself, I don't have any suggestions 	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:46:48.971485+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:50:27.168254+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:53:26.117079+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:53:31.974918+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Hotter meals, morre support staff for efficiency	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:55:06.390327+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:56:45.087654+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:56:59.818567+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:15.826987+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:16.380266+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:42.961481+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:09.336472+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	By making it more affordable and accessible 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-11 15:00:31.766687+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:00:48.672064+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:09.925403+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:23.009852+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	everything is in conduct i dont think so....\n	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:01:28.36462+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:28.724742+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:02:44.597396+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:02:56.896054+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:35:54.313523+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, limited options	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:36:21.212618+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:56.301154+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:49.77812+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:39:07.921991+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Unlikely	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:39:42.465727+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More commissions and bonuses	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:41:07.837705+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:27:25.605821+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The fresh produce 	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:00.474111+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:40.484171+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:30:08.286364+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:35:52.026652+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:35:54.474281+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, More varietes of suits	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:36:39.976918+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:36.430758+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:42.692866+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:50.738355+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:34.316253+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The Conveniency it offers	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:53.395378+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No at the moment	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:39:06.305252+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:42:48.124944+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:43:38.432117+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:44:02.860595+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:44:48.961652+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Drinks 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:45:03.634159+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:06.197166+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:11.50437+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:18.290286+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, not at all	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:23.302405+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:01.222457+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:14.959795+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:30.076678+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 12:54:20.467173+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The food	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:54:32.561122+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:55:19.920868+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:55:30.106759+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:55:55.709779+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 12:55:56.098897+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 12:56:22.383568+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:56:31.479005+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:56:49.87986+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:57:44.497278+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:22.145353+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:46.78682+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:00.363119+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The usual minimum 	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:25.860653+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:14.637857+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:17.898603+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:00:47.262977+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Household goods 	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:01:02.237852+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:01:10.730934+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:01:30.296566+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:06.423217+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:36:11.694148+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Expensive	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:12.646934+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:41.516383+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:39:01.878027+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:39:17.571503+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:28:05.466057+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:28:43.03257+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:20.509838+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:35:22.982795+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:36:45.496317+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:36:53.092824+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:36:53.848661+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:09.187636+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:10.188098+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:33.939428+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:49.413796+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:54.912313+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:03.794428+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:12.312109+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:43:53.302963+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:44:13.756502+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:44:40.006431+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:00.797567+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:17.853725+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Men Clothing	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:46.490766+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:47:58.05336+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:05.094588+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:08.359506+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:23.937563+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:33.048903+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Never	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:48:49.796005+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer Service	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-15 07:49:10.630772+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:56:45.847786+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:57:14.967556+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:57:19.200094+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:57:39.183317+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:14.254158+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:59:30.673151+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:00:44.925142+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:00:59.543541+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:07.829266+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:47:19.763358+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The service was definitely good 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:48:06.415934+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:50:22.29595+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:50:36.143062+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Checking in and check out 	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:52:31.161786+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:52:44.765189+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The service is at it's best	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:53:04.027106+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:56:51.332323+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:07.018905+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:23.109435+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:29.073256+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:00:48.332409+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:01:27.802591+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:01:56.08159+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:03.489871+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:09.492083+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:15.38041+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:02:18.663975+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:02:35.823944+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:35.971198+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:44.589132+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:02:53.025225+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:03:07.038813+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:07.337038+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:19.292032+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:03:20.862332+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:27.580835+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:33.528756+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:03:38.465148+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:44.944316+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I get very good offers on the items I normally purchase 	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:03:45.143842+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:03:55.136498+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:03:58.882839+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:04:04.281502+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:04:10.858194+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	At the moment I think am okay	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:04:24.869145+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:04:26.343851+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Clear communication and transparency \nDigital customer support \nProactive assistance in the supermarket	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-11 15:04:31.95708+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	some food stuffs and some home items	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:04:33.926779+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:04:45.125934+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	giving out discount	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:04:53.832294+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:05:06.955293+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Kids clothes and shoes	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:05:14.099627+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:05:20.614476+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:05:25.590331+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	being friendly with customers and offering alternative goods incase a customer lacks the specific good he or she came for	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-11 15:05:57.474582+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Dissatisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:05:59.73295+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:06:10.550591+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:06:20.528763+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	If we can get more attends while shopping to help 	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-11 15:06:29.810115+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was average	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:06:35.23614+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:06:44.210795+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:07:39.845227+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:07:48.749335+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:07:59.68986+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:08:10.30301+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:08:20.39595+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:08:21.983782+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:08:31.473811+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:08:32.186937+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:08:45.51619+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:08:45.613497+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:08:53.770596+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:01.914521+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:09:08.276876+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:09:18.330589+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Appliances	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:20.284226+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:53.827739+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:28.378673+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:10:46.020738+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:50.59782+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:12:20.833733+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	You could add more tellers since the lines are usually crazy during peak hours	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:12:50.128827+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Electronics 	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:12:53.597033+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:14:05.693364+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:14:13.953355+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:14:33.750972+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:07.54466+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Through putting price tags on various goods to avoid wastage of time by customer. Enhancing loyalty programs.	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:15:48.072161+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:37:34.539501+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:12.556034+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-12 03:38:29.422032+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:28:14.590104+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:28:23.613269+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:08.914773+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:29:59.134655+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:31:38.900974+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Improve on the availability of goods	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:33:02.440242+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:35:31.815024+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:35:44.173822+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:36:01.073053+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:36:37.194825+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:42:37.177623+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:43:01.440832+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:43:34.871716+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:46:58.219694+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:06:06.289734+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:06:34.901508+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:27.440229+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:02.262397+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:59.685383+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Quality of products 	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:10:53.80734+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:04.372433+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:58:24.720455+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:58:24.909365+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:58:25.098616+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:58:25.289326+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:58:25.480838+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:28.795382+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:58:52.07125+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:07.833845+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:51:52.478278+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:52:12.960369+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:53:09.815987+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:53:26.313498+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:53:26.502782+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:53:26.690465+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:53:26.880847+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Somewhat	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:36.123767+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:58:02.864582+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:07:05.936967+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:07:39.766244+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:30.64009+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:36.66329+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:59.585665+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:11:22.68626+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The prices are reasonable and the employees are very helpful	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:12:15.229115+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:17.326604+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:35.591363+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:14:04.149295+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:00.337436+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:31.518968+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:50:07.920107+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:56.599706+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:04.650395+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fair prices	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:53:15.37182+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fasten the return and refund process 	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:55:12.130904+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:28:35.034259+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:30:47.967206+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:31:47.586547+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Convinient in terms of store location	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:32:31.335214+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Introduce loyality points	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-12 09:33:41.449324+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:36:45.172899+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:01.051375+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:02.054527+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:28.389493+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:29.27905+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:06:14.842916+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Nivea for men	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:07:16.645605+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:07:40.922489+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:02.627972+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:36.750349+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:54.086711+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good lighting 	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:11:31.147352+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Offer juice and snacks while checking in 	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 12:59:09.108201+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 12:59:21.376901+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:52.988666+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:00:26.067207+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:00:35.642791+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:01:25.263091+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:37.744744+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:26.402954+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:40.881504+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:44.539343+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:34.396744+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:34.584728+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:34.772967+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:34.962313+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:35.152296+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Expand swimming pool 	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:04:58.416797+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:53:50.97575+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:55:55.872046+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:50.632194+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:57:50.821889+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:57:58.418738+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:35.647802+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 13:59:08.391392+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:48.736579+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:09:35.145927+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:46.950482+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Inefficient	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:16.623321+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:23.219761+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:43.306752+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:11:11.134406+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Motivated by promotions, discounts and loyalty programs hence give an opportunity to save more money on my everyday purchase.	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:11:20.081245+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The prices are slightly fair	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:12:58.579171+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:01.559064+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Advertisement of goods and the ones with promotions and discounts so that you can attract more customers.	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-11 15:13:27.656126+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:28.120577+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:47.142324+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:13:49.598675+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:13:55.707428+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:14:23.518139+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Have readily available attendants along the isles. \n	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:14:51.739585+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:18.070182+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-11 15:15:21.116583+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:40.390188+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-11 15:15:41.579877+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-11 15:15:53.884173+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:50:17.798588+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:20.056069+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:38.985506+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:51.203964+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:56.38444+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:17.712255+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:20.774152+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:37:24.098572+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 09:37:40.005915+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-12 09:38:19.471152+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Beauty products 	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:43:16.1358+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:43:21.002715+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:44:29.385188+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:45:14.125785+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:06:23.562546+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:19.655089+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:13.899667+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:35.304318+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 12:59:46.51132+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 12:59:57.458673+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:00:19.518549+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:11.184198+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:01:20.069614+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:37.939687+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:47.910565+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:54.120834+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Food	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:03:18.760948+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improve on staff relations and timely efficiency 	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:04:39.771609+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:06:47.30502+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:07:15.440154+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:08:09.942849+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:09:11.009894+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:09:26.072971+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Dissatisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:09:37.468181+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:10:57.431805+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:11:14.699032+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:11:23.698796+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more appliances..	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:13:12.06806+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:14:47.472876+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:50:25.859043+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:50:56.884722+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cereals 	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:29.004289+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:09.096446+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:12.989423+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:18.070793+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:41.995002+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:48.181732+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:25.090112+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Availability 	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:46:06.922841+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:46:37.544011+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:49:32.404438+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:09:56.927326+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:10:56.727664+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:10.601237+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:46.804989+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:12:55.684894+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:06:45.06571+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:07:26.189848+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:07:52.141101+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:11.120457+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:08:44.944049+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:25.577594+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:09:46.057517+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	General items 	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 08:10:31.414278+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Serene environment 	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:00:56.274082+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:03.105874+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:01:10.486524+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:05.818709+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:49.111239+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:06:50.31319+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:06:50.501587+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:06:50.699059+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:06:50.887217+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:06:51.07602+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:06:59.800418+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:07:07.353208+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:07:50.229535+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:09:33.640701+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Indian food can be done better	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:10:00.309794+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:01.287293+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:01.669213+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:11.344484+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:28.187322+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:32.65846+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:47.738382+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:08.340631+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:00.760688+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:18.819644+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:16.572915+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:24.768671+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:10:02.369887+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:11:30.394921+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-11 15:11:42.041088+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Ensure to have enough people packing the items.\nReward points should have more value.	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-11 15:14:18.177456+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-11 15:14:51.672532+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Milk	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:15:57.785951+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more different types of diapers 	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:16:34.182454+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:16:57.89174+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, limited options	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:17:07.814177+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:17:17.874287+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more paying counter's 	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-11 15:17:18.653888+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:18:38.797339+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:18:47.339418+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:18:54.900846+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:04.691266+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:11.657102+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Skin care	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:24.505286+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	gluten free bread	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:19:28.868409+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:31.532903+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:38.618239+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:19:39.772578+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:47.088399+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:52.968414+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:19:58.425276+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:05.429382+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:11.296518+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:15.804535+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:25.620939+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:31.030994+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:38.581144+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:50.559191+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:20:56.109569+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:21:06.743919+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:21:19.313847+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:21:26.467678+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Snacks 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:21:42.992507+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Checking on labeling 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:22:06.40295+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Considering everyone a priority 	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-11 15:22:23.588047+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:15.228358+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:27.31136+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:34.013766+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:40.630284+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:50.117757+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:23:57.264588+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:23:59.960177+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:05.291512+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:13.645632+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:24:19.259174+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:24.309708+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:33.103571+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:24:37.298603+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:46.72064+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:24:48.700291+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:24:57.183229+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:24:59.643449+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:25:06.01881+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:25:14.804243+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Ingram lotion	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:25:42.26245+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:26:24.41758+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:26:47.514884+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:27:25.666693+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:27:40.457874+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:28:13.701107+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Product availability 	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:29:25.564958+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes...stock more products	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:29:43.313863+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:48.584394+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:24.9975+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:37.426803+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:31:21.060632+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:31:34.320877+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:31:47.324217+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:33.013707+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:51:46.827514+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:00.191747+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:23.45919+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:29.448712+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:52:35.914996+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Maybe customer service 	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-12 03:54:26.368044+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:45:25.368216+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:31.156179+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:45:48.574659+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:49.609548+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:51:08.634201+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:51:43.896105+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:51:50.248096+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:17.777736+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:01:26.679089+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:36.462365+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:02:58.24571+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 13:03:06.746756+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:07:35.439814+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:07:48.877721+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:07:56.247561+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:08:20.529592+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:09:16.050048+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 13:09:41.593178+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:23.74683+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:40.386328+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:11:55.345635+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:11:55.541032+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:11:55.920769+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:12:03.358452+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:12:33.545633+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The staff's hospitable accordance and the food.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:12:57.009191+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:40.444437+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:52.344031+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:16.764918+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:30.137496+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really .. the workers were very helpful 	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:06.051419+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:11.17582+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:18.982836+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:00:55.31957+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:25:24.751267+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:26:03.82919+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:27:49.708441+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:28:57.164752+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:12.864327+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:06.686105+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:58.252615+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:32:00.180868+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:32:17.004516+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is best ☺️	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:32:39.664014+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Restocking frequently 	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:33:24.459638+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:19:56.462671+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:23:57.251434+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:24:06.610564+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:24:52.453469+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:43.66369+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:46:50.247014+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:49:45.340353+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:49:56.252604+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:51:19.722564+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:51:32.497588+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:07:44.082368+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:20.998673+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:12:24.456444+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:12:42.66254+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:58:24.772254+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:24.959361+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 13:59:34.686549+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:56.601023+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:56.813776+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:57.01494+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:01:20.309017+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:03:32.845254+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:03:53.650244+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:04:09.609127+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:04:22.275856+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:04:57.948954+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:05:22.88336+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:05:32.392711+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:39.682501+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:06:01.337043+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:11.889212+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:07:44.141176+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:08:35.437483+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:08:46.594651+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	quick service 	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:09:02.41758+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:09:37.169326+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:12:21.203071+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:12:21.39101+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:12:21.580311+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:12:21.78137+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:12:21.976288+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:17.859611+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:18.051322+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:18.28944+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:18.502859+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:13:18.70098+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:25:52.516259+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	n/a	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:26:22.442589+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:26:39.075703+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	stock more items	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:27:02.477949+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:27:02.659587+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:28:22.997381+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:28:40.600736+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:32:03.520476+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:20:10.705306+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:21:26.944214+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:16.294473+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:22:22.936317+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:42.288321+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:08.885354+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:18.952469+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	no	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:24:35.360978+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:45:57.179112+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Wider range of goods	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:46:27.960105+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more staff	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-12 09:47:07.242095+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:47:09.545175+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-12 09:49:25.234546+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:05.477635+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:23.756453+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:01.85897+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:10:02.048335+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The reception and the services being offered were top notch	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:10:06.979091+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No complaints, I was well attended to.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:16.423374+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:11:55.733121+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:11:56.111183+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:11:56.212319+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:29.495267+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:29.684728+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:29.874947+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:12.717925+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:28.03568+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The workers are very friendly and qualified for customer service 	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:16.355757+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:00:40.58866+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:04:50.538089+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:05:05.961956+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:05:18.633659+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:05:56.596876+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:06:13.257729+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:06:21.847895+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:07:53.74869+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:08:00.423221+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:08:11.458944+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:08:19.319759+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:09:16.761493+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	add more cuisine	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:18:01.337777+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:10.043003+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:26:29.829037+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:10.444769+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:43.44693+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:27:47.504527+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	N/A	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:03.904022+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:07.888822+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	very friendly people	212a1408-70b6-4592-be49-d4ba81008add	2024-11-11 15:25:59.201698+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:26:14.558577+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:27:14.648558+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:30.656274+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:31:11.343358+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Have membership points	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:31:17.171066+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:31:28.24221+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:31:43.228646+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:31:55.942714+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:33:28.607159+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:33:44.828867+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:33:46.896483+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:20:23.287345+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Seeds and nuts	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:21:06.030464+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:22.939703+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:48.145058+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:55.055045+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:00.059845+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:47.000927+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:23:48.560948+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Affordable prices 	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:24:17.23544+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Stock more on seeds and nuts 	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:25:20.320852+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:25:26.586711+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:25:35.856841+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:25:45.550247+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:09:30.118089+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:09:39.166869+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:10:04.109348+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:22.753475+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:12:24.504825+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:13:20.929023+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:29.335496+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:47.529244+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:24.608543+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The toilets were dirty	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:50.411315+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:54:06.034816+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:54:24.504089+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:41.43439+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:41.623764+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:41.831039+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:42.031142+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:42.228818+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:47.070556+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:52.433586+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:31.843908+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:11:33.780197+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:45.870017+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:12:33.542115+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:39.394867+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:39.593998+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:56.173048+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:13:11.144138+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:13.634854+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:13:27.591819+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Never	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:13:42.658247+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:14:14.495115+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:15:20.40533+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:28:02.872871+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:28:47.447197+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-11 15:29:02.367818+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:05.38031+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No , am satisfied 😊	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:33.223594+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:41.386147+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:29:59.369621+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:17.872615+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:30:46.28952+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Everything is awesome 	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-11 15:32:56.173108+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:33:12.905733+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:33:32.849445+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:33:53.271665+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:33:58.912146+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:33:58.94566+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:34:08.392713+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:34:12.160267+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:34:27.088795+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Maize Flour	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:34:31.606451+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:34:44.050863+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	PeaNut Butter.\n	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:34:56.407134+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:34:57.470409+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes... Kids cloths 	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:34:59.394101+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:35:08.755954+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:35:10.1372+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:10.628558+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:17.508128+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:35:18.112649+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:35:18.34706+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:25.182501+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:35:28.846003+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:33.770674+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:35:34.591566+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:40.471345+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:47.661363+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:35:51.534867+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:35:52.457087+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:35:57.385213+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was average	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:36:03.836974+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:36:04.934609+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:36:06.584441+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:36:13.866163+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:36:16.796531+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:36:27.523235+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:36:27.928522+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:36:36.665151+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:36:39.258353+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:36:44.539607+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:36:50.122573+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:36:53.979063+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:36:58.876944+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:01.379563+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:37:04.01507+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:08.981935+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:09.65071+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:37:16.124233+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:18.836841+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:21.635575+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:37.207172+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Carbonated drinkks	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:37:45.505203+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:38:53.386506+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:39:02.884789+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The availability of fresh fruits and vegetables 	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:39:43.316451+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Helping people especially the pregnant ladies and the sick	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:41:23.72383+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:41:28.63204+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:41:37.068245+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:07.560404+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:31.66326+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:46.539313+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:57.109324+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:26.823579+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:42.997038+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Put more security on expensive items	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:43:47.96258+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient communication 	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:44:19.481373+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:20:34.847118+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:20:44.464582+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:21:14.917563+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:29.281773+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:10:17.306346+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:10:50.238993+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:05.321171+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:27.415633+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:31.896853+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:12:38.642803+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:12:57.045053+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:13:02.198074+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:13:13.327082+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:52:40.497045+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:02.344668+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:02.602176+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:02.792717+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:02.982857+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, not at all	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:57.721523+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:54:13.884247+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:56:41.175117+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:05.754238+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:33.273467+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:57.446298+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Great customer service 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:59:29.888947+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:08.881571+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:09.083707+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Indian	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:09.281345+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:09.472032+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:09.668883+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:12:54.782699+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:13:01.497173+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:56.20372+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:01:12.024329+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:01:48.805771+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:02:59.035713+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:03:07.363544+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:03:36.164958+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:03:50.366534+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:29.869199+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:52.874033+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:38:09.706505+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:38:37.210234+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:39:46.956945+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:40:53.621628+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:41:02.490398+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:41:12.360653+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Adding more tellers to reduce queuing 	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:41:35.318413+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I would like to see more of make up and hair products 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:03.118362+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:42:07.8664+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:40.027487+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:45:52.366074+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:21:39.895298+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 04:22:05.606046+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:22:34.462639+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:37.159681+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:23:58.361074+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Nothing 	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-12 04:24:44.302579+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More vegetables 	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:10:43.637889+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:15.688124+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:40.516233+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:11:55.231133+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:12:45.805945+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:13:05.689225+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Dissatisfied	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:15.642539+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not sure	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:54:43.658814+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:56:58.545433+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:45.688251+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:15.638229+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:15.837052+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:27.998406+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:33.283769+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:58.063942+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:09:48.581165+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:09:50.631327+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:01.049571+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:34.021958+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:10:59.154167+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:02.828164+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:08.703073+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:26.854791+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:12:11.296251+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:22.905068+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:36.693078+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:13:11.981429+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:13:35.339487+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:18.463411+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:18.66103+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:18.859271+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:14:42.045092+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:14:43.032054+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:14:50.45222+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:14:58.464079+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:15:01.155842+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No  complains	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:15:24.068037+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:31.714354+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:47.223599+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	All good	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:38:08.237299+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:38:20.376172+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	All good	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-11 15:38:20.853949+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The cleanliness 	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:43:07.184847+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:16.02405+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The kindness and helpfulness of the staff	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:44:12.358072+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:13:56.331932+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:22:58.528829+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:23:11.398525+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Expensive	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:24:12.947809+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:24:30.424959+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	good	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:30:09.380377+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:12:32.867902+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:53:35.501716+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:54:34.074698+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The cuisine was nice.	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:55:05.889052+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:12.494667+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:19.09646+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:40.847824+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:51.090179+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:22.444627+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:59:12.142308+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:34.407497+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:43.97968+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	My stay was well and I was satisfied.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:15:28.602077+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Being able to access goods easily	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:25:16.074655+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:26:44.157099+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:26:44.344966+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:26:44.534267+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:26:44.723626+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:26:44.913885+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Facebook	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:27:59.689783+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:41.930189+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:04.928951+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:30.465571+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:30:07.188228+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:30:29.64993+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:31:18.094946+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, not at all	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:53.00568+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:37:19.417341+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:19.613663+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Maybe online ordering and delivery 	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:37:30.491285+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:38:07.333122+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No complain	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:38:14.483673+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:38:48.22158+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:39:10.609184+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	no	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:21.478464+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:30.513544+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:40:47.402458+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:49.730733+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:40:49.93208+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:40:50.311226+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:40:50.704538+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:50.802912+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:37:41.510572+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:37:56.056432+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:38:03.510702+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:39:08.459321+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:39:58.610507+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The music and quickness of the cashiers\n	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:39:59.309949+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Addition of cashiers\n	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:40:21.523214+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:30.46491+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:39.110745+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:40:46.212334+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:59.000453+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:23.76408+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:10.311176+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I think everything is perfect 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:44:34.722222+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:14:20.367433+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	cakes 	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:23:58.365327+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:24:56.881751+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Poorly stocked	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:26:00.193057+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	just to be fair when it comes for payment 	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:31:39.625113+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:09.448296+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:34.435984+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:09.483691+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:22.354279+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:29.397075+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:43.260502+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:16.847394+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The customer service is top notch and the store is very organized 	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:13:26.941044+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Continue with the good work 	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:14:10.924773+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:12.704828+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:59.882454+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	To improve on the cleanliness 	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 11:56:20.606141+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:57:27.297986+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:47.855626+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:59:05.881781+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:09:25.209554+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:09:35.76445+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:09:39.783432+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:22.002232+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I feel like they prey on or kind off disrespect student tenants or young tenants.	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:17:23.527907+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The pool to be warm during morning hours	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:39.873094+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:17:48.907129+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:50.528693+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:55.621697+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:18:08.485978+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The room service was always on time. The swimming pool and club are very good amenities. And they are very fast with resolving issues	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:18:52.43293+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:18.416606+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:14:44.202156+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:14:44.97366+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:00:56.399358+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:02:03.516426+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The wifi speed was so slow	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:08:27.178658+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:08:29.328436+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:08:41.333707+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:25:44.973274+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:38:34.226437+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:40:36.289891+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:47.113873+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:41:09.708773+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:41:46.764565+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:19.094233+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:35.98271+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:42:39.157388+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:42:53.147658+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:03.681835+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:21.849964+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:43:33.00984+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:22:43.286506+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:24:46.845193+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:25:08.241648+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:25:21.857462+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:25:30.988364+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:25:40.531431+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 05:26:06.203822+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:26:17.291249+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:27:20.918407+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:27:55.025037+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:28:51.147693+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Everything is great	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-12 10:13:44.545125+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:59.968025+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:29.045191+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:16:06.53862+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	None	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:41.012635+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:58:52.654283+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 11:59:17.33017+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improve on the food options 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:00:24.830003+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:53.99294+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:58.860712+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:29.879327+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:12:44.119476+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:48.417972+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:35.451655+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:43.821037+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:44.816938+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:55.504206+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:14:09.55997+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:14:26.491653+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:14:37.002368+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Nothing I was fully satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:44.006059+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:14:44.108995+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:14:53.621574+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:05.152973+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:08.782616+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:15:09.65004+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:10.850428+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:15:22.142607+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:16:03.90642+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:14:44.391712+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:14:44.582817+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:14:44.781938+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Top notch services	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-18 13:18:03.960787+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:19:08.086548+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-11 15:39:17.517684+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Baby oil	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:39:35.14543+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:08.854939+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:40:18.086974+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes... Kids clothing 	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-11 15:40:24.450784+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:41:54.995872+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-11 15:42:22.498506+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	By increasing more tellers to avoid wasting time 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-11 15:45:48.266711+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:46:08.451817+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:46:26.674981+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, limited options	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:46:39.233209+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:46:51.935276+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Plantains and Cassava.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:47:53.114384+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:48:01.509457+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:48:08.902567+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:48:17.161959+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:48:29.631858+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:48:54.612818+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:02.496468+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:09.394255+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:26.270367+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:40.58602+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:49.611701+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:49:58.514379+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:50:24.188327+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:51:00.806791+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:51:09.203794+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:51:19.535426+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:51:27.604154+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:51:30.08916+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:51:36.804038+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral\n	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:51:43.546499+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:51:44.97637+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:51:54.466432+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:52:03.734547+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Add more root tubers at the groceries stalls.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:52:30.234067+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Diary products 	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:52:30.51634+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service was OK.	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-11 15:52:46.730662+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:53:15.900162+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:53:27.00799+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:53:37.062011+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:53:44.396363+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:53:53.7944+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:00.727483+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:14.358051+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:20.805069+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:30.902538+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:38.603979+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:54:46.44329+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:55:15.293055+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:55:21.965803+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:55:32.038658+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:55:39.637633+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	b4f75ba7-7b1e-45b7-bcc6-cbbbdbf9c268	2024-11-11 15:55:45.455974+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:57:16.911741+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:57:31.591275+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:00:34.212673+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:57:39.971463+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:58:00.828721+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	milk	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:58:20.499435+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:58:37.935867+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 15:58:53.958287+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:01.48433+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:54.490663+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:02:08.292136+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	more customer care services	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:02:44.190023+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:03:31.272377+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:03:59.79544+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cosmetics category 	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:06.221256+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:16.550002+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:47.544612+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:06.728465+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:16.584003+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:24.674281+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Food	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:31.952231+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Be more polite	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:57.486036+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	add more staffs to increase service efficiency	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-11 16:39:06.294793+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:26:08.744784+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:27:10.258235+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	just be kind enough to understand customerrs	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:33:04.193206+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:00.998334+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:19.627528+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:48.318892+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:56.480828+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:26.294807+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:44.611552+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Availability of variety of products 	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:57:10.942821+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Willingness of the staff to help	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:58:53.597386+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	 Vegetables 	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:07.420983+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:25.111551+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:46.656745+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:10.263419+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:20.628459+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:54.836531+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:16:35.86895+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good customer service 	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:17:05.421328+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Everything is okay	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:17:24.726552+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:09:32.093555+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:09:55.80327+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:03.254413+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:07.987423+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:19.325312+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:10:31.717992+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:57.988319+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:11:08.248109+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:24.487735+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:11:24.973369+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:48.896565+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:12:11.589773+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:17.715163+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:12:22.672454+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:12:32.139003+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:39.192773+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:57:49.120538+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Traditional vegetables	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:00:25.185792+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:30.886291+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:39.510668+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:01:15.065348+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	convenience 	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:01:15.79653+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:01:41.390835+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:02:18.935991+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:02:35.797896+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:02:47.965264+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:03:22.815833+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:05:45.181446+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:22.268739+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:30.586365+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:38.784034+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:11.833676+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-12 05:28:07.92143+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:16.922411+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:36.175129+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:55:49.595103+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:01.283679+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:07.186239+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:38.732005+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:56:50.029202+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Save time at the payment point 	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:57:47.552091+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:38.086549+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:14:55.31257+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:04.823173+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:15:41.427958+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:16:21.856475+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Keep up with the good work 	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-12 10:17:49.113296+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:09:43.869367+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:11.573525+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:17.903571+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:10:59.555997+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:11:16.25072+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:17.298218+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:01.30245+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:11.912125+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:13:19.917998+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:14:04.575375+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:14:14.579463+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:18.042795+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:14:24.759078+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:43.04356+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:16:09.656549+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:16:15.510756+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:16:50.712151+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:17:09.119376+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:19.951006+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:19:24.698268+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:19:45.124578+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Expansion of car parking area	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:20:22.79919+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:14:56.090801+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The environment around 	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:15:32.331301+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:24.767639+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:09:03.343463+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:58:31.241494+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:22.793623+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:52.203572+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:00:56.387839+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:01:28.48921+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	yes	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:01:38.811158+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:03:44.358868+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:04:09.706973+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:05:26.687281+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Discounts\nFresh vegetables and fresh meat\nI get most of everything on my shopping list	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:05:44.672461+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Stock a wider range of traditional vegetables	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:06:24.112892+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:58.994523+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:27.198016+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-12 05:54:57.425195+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:01:37.158201+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:03:47.148948+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:09:39.464328+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:10:40.526098+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:10:48.859109+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:13:41.65223+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Electronics	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:20:41.663748+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:13.295865+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:31.261264+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:45.658587+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:59.324839+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:24:38.785128+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hire more staff	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:28:40.525727+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:40.810659+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:10:45.374375+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:11:18.388934+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:11:36.153698+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:11:44.357566+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:12:04.315614+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:08.431064+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:51.020275+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:14:46.573227+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:14:47.533341+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:21.77312+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:15:40.713477+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:15:53.238741+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:16:09.231956+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:15.427562+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:16:17.145908+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:16:17.932116+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	no	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:53.303431+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:16:55.358422+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:04.61859+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:04.81723+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:05.015886+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:05.203034+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:17:05.397079+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:06.291986+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I suggest that you provide more offers	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:17:11.704369+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:15.647977+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:46.80465+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:24.318495+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 15:58:33.48698+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 15:59:15.187305+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 15:59:25.743591+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:33.314743+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:46.530844+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:23.838848+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:00:36.793928+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:01:57.550063+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:03:04.27461+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:05:19.411776+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:10.421201+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is okay, I have not had a bad experience so far.	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 16:07:17.503359+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Cleanings 	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:42.046574+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:24:34.236993+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:01:55.336628+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:03:37.74618+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:10:51.580076+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:10:56.02392+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:12:21.999472+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:12:40.903681+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:13:23.942163+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:26.518593+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:27.134204+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:14:18.263655+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The service is good😊	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:14:34.327796+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:14:50.679369+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:14:52.328043+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:14:57.417164+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:52.797704+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:52.986213+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:58.194705+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Consider on pricing 	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:16:01.404651+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The jazz music in  the pool was lovely 	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:16:02.443254+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:09.1142+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:27.3868+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:39.773397+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:17:43.254019+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:17:48.372891+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:17:55.241837+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:19:18.508382+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:15:06.113949+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:19:51.528732+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:51.72376+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:21:11.886471+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:22:11.81697+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:24:06.94706+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:24:34.353196+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Manage the lines	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 13:27:17.960814+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:18.783433+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:34.302901+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:34.847815+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:30:59.35779+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Best services	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:31:42.271368+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Best services , top notch services	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:33:52.293905+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:34:42.48298+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:34:55.066223+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-11 15:59:05.296263+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:10.303867+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 15:59:40.575509+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:03.933699+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:16.323863+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-11 16:00:47.965482+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:05:32.046052+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:05:40.094945+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:26.655413+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:34.269618+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:44.103028+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:06:51.602869+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-11 16:07:21.022446+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:46:43.887095+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:46:53.761852+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:47:08.98084+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:47:18.504043+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:47:31.166861+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Breakfast cereals 	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:49:09.425271+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:49:22.536916+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:49:40.77734+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:50:56.507863+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:51:07.637901+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:51:21.516459+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:51:28.683575+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:51:36.870829+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	batter	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:51:55.697979+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:10.973157+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:23.967338+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:32.803528+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:38.195277+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:45.58267+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:52:55.943005+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:53:06.950806+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:53:15.996857+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:53:24.198069+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:53:40.496472+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:54:02.088562+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 16:54:06.452707+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 16:54:10.24633+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:54:19.255005+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:54:25.833677+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:54:42.548714+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:54:51.963112+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:54:56.103287+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:54:59.244856+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:06.384243+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:55:11.420686+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:13.933553+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:20.085245+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	foods	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:55:24.309495+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:25.121008+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:33.503596+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:40.925133+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:47.620977+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	easy of arrangements 	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:55:54.727451+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:55:59.091954+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:56:06.558755+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	order 	3e9c4be0-d7fc-4d75-8fdc-bfefe3b7b66d	2024-11-11 16:56:12.613349+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:56:14.016665+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good discounts and prices of goods and services 	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:57:07.751297+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:01:55.166202+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:02:35.256493+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:03:04.215487+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:03:54.73854+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:04:29.153801+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:04:56.988681+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:06:00.499591+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:06:53.618735+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:42.430306+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Arrangement of products is very aesthetic,the comfort is good and service is amazing 	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:10:16.537196+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:14:11.791956+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:16:40.188077+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:17:04.130313+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:17:20.462341+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:17:40.248147+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Confectionarry	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:17:52.954293+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:29.664016+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:37.162941+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	All products are well presented. 	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:27:10.31589+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:33:16.488795+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:33:52.523611+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:06:02.101113+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:07:28.14591+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:10:07.762391+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	everything i need 	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 11:10:19.256374+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	its good	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 11:10:32.143177+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	its good	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-12 11:10:44.468303+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:12:39.298326+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:12:49.72555+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:13:00.807873+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:05.193628+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:06.848051+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No\n	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:17.919397+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:20.123037+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:13:23.097204+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The cafeteria was fantastic nice food the aesthetic it was pleasing 	51d92d75-a817-476c-9477-7327d748bb91	2024-11-18 12:13:23.97496+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:13:34.425189+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:13:34.964475+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:13:55.495283+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:14:03.32705+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:14:11.02461+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:14:33.920223+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	That the rooms could be clean later when a customer has gone outside not to.be woken up from sleep so that the room can be cleaned	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-18 12:14:34.238205+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:00.282485+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:15.107049+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:52.575378+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:53.175809+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:04.193806+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:19:12.51319+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:19:36.879825+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:20:52.797134+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:20:52.986072+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:56:21.906984+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:56:30.975082+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Maximizing the number of counters to ensure less time when paying 	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:58:57.311979+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 16:58:57.460303+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 16:59:25.411285+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 16:59:50.446125+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:00:09.562497+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fruits 	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:01:36.465201+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:02:49.115429+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:04:41.739016+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:04:59.294957+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:05:49.629707+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:03.070875+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:59.816617+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:08:39.269933+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:09:01.161524+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:16:26.080032+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:16:28.612202+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:16:52.2088+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hair products	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:17:12.631562+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:18:01.313809+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:18:16.515703+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:23.845794+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:46.819006+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Convenient 	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:20:02.715347+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:27:56.490204+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:06:40.040848+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:07:08.601054+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:09:28.266525+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:10:17.591616+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:10:26.012949+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:12:32.52591+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:13:04.333106+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good 	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:14:15.998015+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	None	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:14:29.399168+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming pool 	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:14:35.868264+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:15:34.83096+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:34.972517+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:16:08.049477+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:16:24.549223+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:19:18.899116+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sodas	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:20.063958+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:31.98138+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:23:58.197344+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:08.142757+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:26.314051+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:51.398932+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:08.615513+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:14.695518+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:38.1523+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:56.302272+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:30:13.106587+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:32:50.086217+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:32:50.308041+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:32:50.496518+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:32:50.685924+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:34:42.89053+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Advertising about online shopping since I wasn't conversant with it	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-11 16:57:56.412173+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:04:09.857098+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:05:22.899511+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:05:46.366923+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:06:09.524627+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:06:30.558993+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes natural herbal cosmetic products like fenugreek powder and maca root	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:06:44.737249+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:08:27.022836+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:08:49.294762+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-11 17:08:51.212959+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Availability of  excellent products in the store	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:09:05.918898+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Addition of extra cashiers during end month and peak hours to avoidi long ques	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:10:54.200765+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Station support staff  with experience to handle specific items eg Detergents, body products beverages etc	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:13:58.510981+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:14:47.460762+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:15:25.261816+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:16:06.473096+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:16:18.265575+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:16:38.291405+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:16:48.248029+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:17:26.949318+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:17:35.404725+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:17:48.733372+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:16.644662+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:18:31.565115+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:33:34.127694+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:34:34.079909+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:08:34.118265+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:09:53.405592+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:11:45.290715+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:20:03.20223+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:21:03.970578+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:23.31278+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:39.009337+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:23:51.568382+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:24:14.524965+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:26:04.877254+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Make it a 24hr store	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:28:05.248406+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:15:27.897591+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:15:28.103738+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:15:28.292695+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:15:28.481271+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	14713925-327a-4233-8a54-c0f61d673205	2024-11-18 12:15:28.676373+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:15:37.117892+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:15:46.579008+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:15:47.01259+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:15:55.778456+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:16:03.139605+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:16:24.7438+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:16:26.089957+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:16:26.281276+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:16:26.514142+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:16:26.718191+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:16:26.918384+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:43.91585+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:16:44.037407+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:02:19.916796+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Pricing of products could be better 	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:10:44.254888+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Customer service is top notch 	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:11:00.746989+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:13:41.703948+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:16:08.543933+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:17:31.331971+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, poor value	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:18:30.050938+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:55.72833+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:18:56.94937+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:19:14.350176+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:19:22.98656+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:19:30.173019+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:19:51.017822+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:34:13.690916+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:11:32.972899+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Speed	41b23501-8877-4a01-8152-f67094581304	2024-11-12 11:15:29.239161+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:19:42.7842+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:20:18.93097+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:20:48.884575+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:24:04.770808+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:25:03.72893+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	It was convinient	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:27:36.06173+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:16:22.662734+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:23.53661+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:36.119633+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:20:45.288766+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:21:35.2703+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:21:51.679658+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:23:06.723494+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Best services	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:25:38.190122+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Adding other counters for quick move of people	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:27:04.099853+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:32:49.846508+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:12.376421+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:36:51.344261+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:11.927554+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:18.150172+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:39:19.16956+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:39:50.640871+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:39:56.942808+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:40:56.766297+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:40:59.236379+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:41:11.202986+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:30.138648+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:42:53.879177+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:43:04.54479+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:02:27.317904+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:02:34.991536+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:03:10.579335+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:04:06.831796+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:04:23.917604+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:04:34.112038+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:04:34.245169+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:04:48.452947+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:05:07.387801+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:05:49.979746+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 14:09:28.964293+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-18 14:09:45.741917+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:03:37.595887+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:05:12.884373+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:05:26.005792+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-11 17:06:50.972297+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:12.355555+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:19.390193+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:07:28.653766+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:08:06.51614+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:08:17.43932+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:09:09.595443+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:09:19.427411+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-11 17:09:25.711643+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:15:06.237165+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:17:33.077362+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:18:08.343083+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:18:40.416841+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Inefficient	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:19:04.432409+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:19:16.611724+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:19:39.841996+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More discounts 	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:20:22.749263+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	More friendly 	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-11 17:20:37.626422+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:22:02.577021+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:22:25.342108+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:23:05.75707+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:23:06.333482+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:23:23.995403+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:23:38.483441+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:23:48.997211+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:23:49.43184+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:23:57.353346+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:24:06.630975+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:24:13.293769+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	None at the moment 	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:24:20.475522+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:24:27.295185+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:24:35.524644+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:24:47.569206+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:24:58.865806+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:25:02.161195+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:06.218231+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:12.914154+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:19.532188+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:25:22.335203+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:26.162594+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:32.584853+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:38.84695+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:45.797268+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:51.791488+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:25:54.805363+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:25:57.456473+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:26:04.06626+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:26:09.787415+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:26:19.844616+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:26:35.596627+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:26:46.41654+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	They goods are on low budget 	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:26:47.901678+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good and am happy	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:27:00.932765+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:27:14.654901+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	None at the moment	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:27:25.670514+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	None at the moment 	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-11 17:27:48.126319+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:33:04.277905+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:37:00.569842+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:55.428821+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:38:51.008758+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:39:12.460096+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Finding small things like spices 	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:41:40.386399+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:34:47.766545+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:19:52.992345+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:16:32.22002+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:16:32.914729+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:00.293466+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:17:01.46341+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:17:29.357831+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	pool	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:05.130891+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The service offered by the waitres	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:18:29.069832+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:45.605112+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:45.801373+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:45.989411+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:46.179207+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:18:46.37799+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:18:54.774554+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:19:01.395091+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	faster services 	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:19:01.901106+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:19:45.800632+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:19:45.993746+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:19:46.184948+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:19:58.774061+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:07.463446+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:20:24.238889+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:20:26.3253+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:26.773193+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:20:53.175118+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:20:53.364682+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:20:53.555044+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:21:47.275382+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:22:06.888872+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Be more keen on the airbns. Like sanitary, towels change etc\n	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:22:26.231771+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:23:15.744627+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:23:15.909575+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:28:55.506689+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:23.748594+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-18 13:29:47.261619+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:34:59.088219+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:35:18.252718+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:19.390379+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:40.819777+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:35:44.132485+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:59.986794+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:36:15.516499+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:36:17.128827+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:36:24.718014+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:36:50.852051+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:01.38387+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:07.338799+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Room	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:38:11.837177+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	To have some goods that are available 	f9bd0d46-0c09-4694-91fb-f83e900af5e2	2024-11-11 17:28:45.079487+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:32:00.502809+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:32:14.557761+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Poorly stocked	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:32:32.346619+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:32:42.171914+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:32:56.464194+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:33:10.758912+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:35:21.898509+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:36:15.332012+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:36.469572+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:46.445876+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:39:39.298341+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:41:49.895129+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Establishing a customer complaint policy	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:47:00.506488+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:18:07.054238+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I would appreciate if a variety of skin care product brands were available.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:18:54.782386+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:32.191464+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:40.124603+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:21:16.707676+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficency and more discounts.\n	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:24:05.366103+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:41:00.791252+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:42:58.49332+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:43:12.374086+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:43:27.945207+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:43:36.577964+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:43:44.019424+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:25.442758+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:58.749069+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:46:01.871258+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:46:10.31675+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	All good for now 	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:16.301145+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:46:32.531545+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:50.45743+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:43.607832+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not Applicable	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:24:31.934788+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-12 11:25:58.235998+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:17:30.529396+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:18:01.563704+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:18:02.736156+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, I enjoyed perfectly fine.	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:18:46.981449+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:19:34.250332+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:19:45.610205+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	West African	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:19:46.462011+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The respect of employees to younger tenants. 	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:20:00.388516+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:20:17.130499+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Stress free from congestion 	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:35:20.112739+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:25.825479+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:36:26.297479+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:36:39.053969+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:39:04.59046+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:41:35.899703+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:41:41.539084+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:43:23.368911+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:45:39.28767+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:45:40.047628+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-18 13:45:48.63466+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:32:19.687638+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:32:42.504502+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:36:03.270885+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Dissatisfied	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:36:48.540059+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:03.944692+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	\n\nNothing	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:37:22.804835+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:27.471373+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Same as before	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:38:05.921644+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:41:14.732183+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:42:13.360603+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:44:09.933255+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:45:00.17414+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The variety of drinks	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:40.47313+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:21.288945+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:47.737072+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:59.447609+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:04.227728+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Everything is alright 	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:48:27.714758+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:48:52.468739+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Dissatisfied	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:01.129072+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:06.859486+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:40.561743+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very unlikely	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:53.975931+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 06:59:15.774306+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:05:45.451527+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, poor value	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:10:48.630428+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:10:57.523371+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:48.12553+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:12:22.421165+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:19:58.035783+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:20:26.605911+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Time	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:21:56.498501+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:22:54.346265+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:02.02849+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:13.771571+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-12 07:23:24.128449+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:27:28.882572+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes I would 	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:28:02.860876+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:30:07.121676+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:31:12.250362+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-12 07:31:34.969782+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:01:48.878287+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:02:17.258341+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mobile phones,Tv sets	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:05:22.707646+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:05:49.161019+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:21.065547+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:33.955082+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:45.072706+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:07:43.439563+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:08:11.938409+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Utensils	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:11:09.749762+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:19:40.740695+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:19:40.929166+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:19:41.117181+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:19:41.309018+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:19:41.502957+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:19:50.588652+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:20:02.923742+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:35:39.014518+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Vegetables 	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:35:54.494999+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:36:28.637695+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:36:36.439606+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:36:49.317209+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:37:11.897905+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:37:20.423153+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Hire more attendants	01939367-739e-4fac-b0a6-cb01a8067a79	2024-11-11 17:37:48.934695+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:39:04.362446+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-11 17:39:24.891412+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:17:24.788466+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:17:38.282443+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:17:48.088582+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:17:59.239333+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:02.147588+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:10.502359+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:22.190841+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:41.273653+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:50.589053+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:19:56.770958+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:02.726676+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:08.704468+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:18.33369+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:27.729986+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:20:49.102447+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:21:05.557729+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:21:23.564996+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Great discounts and efficiency.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:22:28.271985+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Appreciated the services, would appreciate even the more if a variety of skin care brand products were available.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-11 18:23:40.751786+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:25:07.414588+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:25:16.175321+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:25:25.648628+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:25:34.244579+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:25:41.268301+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Drinks	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:07.340842+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:14.085052+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:21.689365+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:30.969559+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:40.210554+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:48.88231+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:26:54.979557+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:02.465316+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:08.446506+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:16.100739+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:22.812038+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:31.335275+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:43.657831+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	1	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:27:51.603108+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:28:04.139996+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:28:12.195677+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:28:18.91871+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Good customer service 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:28:31.311882+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sell more brands 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:28:50.996448+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	It's perfect 	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-11 18:29:09.663003+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:32:25.630068+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:32:38.334337+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:32:47.771232+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:32:58.688544+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:54.228041+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	2	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:21.555987+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:35:05.590856+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:36:23.105707+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The cashier payments points\n	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:36:53.366306+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:42:27.363067+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:43:27.860788+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:44:25.044857+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:04.039073+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:45:18.477984+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:45:21.625251+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:32.770185+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:54.483843+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:21.517696+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:02:02.820643+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:05:41.285417+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:01.686238+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:07:29.868815+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:08:47.676273+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Lower the prices of various products	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:11:53.23899+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:20:30.147856+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:16.169+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:32.928249+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:42.235521+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:22:56.678723+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	A drink to be offered at the gate for a warm welcome	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:23:04.740916+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The food and the services customer care services were amazing	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:23:21.544737+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:32.835584+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:23:48.420131+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:01.951465+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:24:16.44654+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:24:16.591513+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:20.58352+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:26.280325+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:41.755023+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:24:45.181764+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:24:48.851813+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:25:12.270179+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:19.714676+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:22.675746+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:23.726938+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:25:26.195147+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:25:40.988327+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:25:53.285479+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:35:33.488462+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Not really so far\n	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:35:48.605639+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:36:02.316655+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:43.287669+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:49.974047+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:38:11.189249+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:38:25.042936+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:24.500891+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:34.253462+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The ambience 	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:39:38.494415+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:05.931792+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly dissatisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:40.239565+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:35:03.178534+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:35:11.236517+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Frequently (about 70% of time)	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:35:29.598423+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The promotion s and the grocery store has fresh produce	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:36:25.318247+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:43:54.428986+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:44:55.0944+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:45:09.720775+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fresh produce 	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:45:14.701532+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:34.095095+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Every time	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:36.208604+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:02:47.785436+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:12.171705+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:07:07.844174+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	By recruiting well-trained customer care personnel.	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:14:40.617681+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:34.974532+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:48.616304+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:21:18.027056+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No everything went well	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:21:54.920877+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:22:01.88887+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:22:31.422845+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:23:21.575489+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:23:40.567631+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:20.839174+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:22.299884+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:22.487708+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:42.755217+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:24:53.785983+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:24:54.239983+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:01.903191+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:25:02.303941+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:55.799108+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:25:57.454439+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:26:06.094775+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:06.230918+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:14.636256+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:29.001643+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:36.72974+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:52.082925+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 12:26:59.982556+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	good accommodation 	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:01.058927+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 12:27:34.850763+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:37.766823+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:41.259183+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	put more entertainment features for kids	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:52.851316+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:00.595687+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:28:11.487111+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:36:55.45563+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No I don't have	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:37:34.698027+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:41.035938+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:37:56.56303+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:37:56.667367+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 13:38:05.054433+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 13:38:31.814248+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:39:03.529898+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Nooo	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:16.802341+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:48.409185+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Some items	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:35:46.26303+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:44:44.985979+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:19.198752+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:45:43.439015+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Genuine and high quality products. 	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-12 06:45:49.147062+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:45:53.94637+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:12.162662+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:38.286306+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:43.102888+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:11.291611+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:18.507425+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:29.787727+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:48:13.396177+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:48:30.57828+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	None for now 	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:48:55.410979+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:50:03.085505+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly likely	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:50:24.277638+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:13.372484+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sauces	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:32.909646+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, excellent value	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:52.225552+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:57.762679+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:10.528806+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:17.832728+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:36.883603+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Speed	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:58:05.976573+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Make it abit more pocket friendly 	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:58:29.633016+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Ensuring every customer is attended to	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:58:53.666716+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:05:02.570151+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but it was average	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:06:15.758242+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:06:58.837789+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:07:08.570537+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:07:31.559573+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:08:03.392002+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:09:56.561722+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:10:28.892655+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:10:47.170445+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:27.266392+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:55.702166+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:03:04.206787+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:05:30.900183+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:06:56.561328+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:07:18.189271+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-12 12:08:55.867934+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:41.793333+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:21:24.794455+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:21:38.224385+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:22:01.66372+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:09.915282+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:23:41.501425+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:08.2663+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:16.660332+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	African	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:21.904742+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:24:29.312708+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:24:34.914586+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:25:36.629646+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Expensive	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:33:28.949689+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I was not assisted	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:07.535069+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:15.09475+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:28.551361+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:37.358247+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:35:44.515787+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:36:30.812936+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:44:49.749786+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:44:50.711968+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:45:29.820771+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:45:50.290815+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:06.159895+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was excellent	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:18.754141+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:26.596077+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:46:32.532035+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:46:41.075407+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:46:41.208101+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:05.780503+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:13.987825+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:29.741532+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Likely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:43.644602+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:49:22.769715+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Convinence	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:50:44.046936+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	N/a	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:50:55.041383+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 06:59:52.51186+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:01:24.269286+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Food stuff	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:04:10.347133+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:05:29.025564+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:07:17.271386+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	We need to have all products under one roof eg baby formula for the different animals in all supermarkets.	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:10:04.559553+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-12 07:11:40.7071+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-12 17:50:41.982143+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:20:54.906092+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Club and swimming pool 	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:20:57.797846+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:22:01.661879+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:22:02.098599+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:22:02.295778+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:22:02.482935+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:10.58046+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:22.110251+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 12:24:22.685098+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:24:27.614393+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 12:24:35.739841+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:24:36.171445+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:24:59.856384+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:25:00.50549+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:25:09.322948+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 12:25:09.552402+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:03.095626+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:26:06.572966+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:26:18.503134+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:26:33.875506+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:26:34.63319+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:26:41.09+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ec4b09e2-a645-425c-b43b-b59f19525056	2024-11-18 12:27:09.061962+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	the cool and fresh air. the view and the nature was just awesome	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:27:14.290107+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:50.130921+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:34:58.344266+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:35:19.226658+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:36:12.753824+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Fresh produce 	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:37:15.492393+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:37:23.165433+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Increase the line attendance staffs	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-11 18:37:26.397439+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:37:40.794745+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:38:15.630022+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:38:30.654189+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:38:38.036513+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:38:43.001596+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:39:20.472219+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:39:21.153395+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Average	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:39:29.650554+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:39:30.41099+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:39:36.070899+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:39:38.496947+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:39:42.938943+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:39:52.124452+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:40:01.615276+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:40:23.985919+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:40:40.626067+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:40:46.419151+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:40:52.512837+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	I would like to see more of electronic devices 	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:41:00.86506+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:41:17.027227+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:41:26.32939+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Neutral	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:05.294982+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:13.109965+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Occasionally (about 30% of the time)	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:42:16.049884+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:28.600992+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly unlikely	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:42:29.35617+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Efficient	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:37.866414+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:47.373816+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:42:56.648882+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Mostly stocked	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:43:07.599232+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The shelves 	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:43:36.160592+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:43:45.721007+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Most of the items	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:44:00.289969+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reduce the lighting 	fb293319-b39f-4132-8284-22f66da56937	2024-11-11 18:44:06.714324+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:44:13.872398+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	51d92d75-a817-476c-9477-7327d748bb91	2024-11-11 18:44:24.407159+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, definitely	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-11 18:44:26.438364+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:47:53.164506+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The shopping environment setup	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-12 06:47:57.630268+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:48:20.712681+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Somewhat stocked	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:48:37.890063+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	All aspect	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-12 06:48:39.013941+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Sometimes (about 50% of the time)	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-12 06:50:13.352395+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	No, I couldn’t find what I needed	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:55:53.894398+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:21.239281+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very Reasonable	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:56:38.445029+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	2adc2ecb-d68d-4fe7-94b4-3300b7ab43bb	2024-11-12 06:57:21.902934+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:00:16.695916+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	3	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:02:11.857105+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-12 07:04:30.217458+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:14.73294+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:32:17.093241+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:33:12.355724+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:34:01.677589+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:35:07.315637+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:39:02.023996+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:39:02.233648+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:39:02.442963+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:39:02.655512+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:39:02.865785+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Consider Long check out time\nClean the pool early 	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:40:20.610076+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:32.483578+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:44.875782+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:33:01.193416+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Food took time to be prepared 	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:34:52.958247+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:36:12.785758+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:36:38.052157+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Food	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:37:00.877489+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:28:38.83824+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Adjust on check out time 	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:50.170022+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:20.460643+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:14.843402+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:29.540239+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:43.961276+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:21.572075+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:50.465548+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:46:03.295243+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:47:38.688383+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:49:48.556031+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:50:55.493959+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming pool	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:51:44.72165+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:52:49.10039+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:52:49.288473+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:52:49.477785+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:52:49.675443+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:52:49.863005+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:56:37.358949+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:24.767117+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:45.261155+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The serenity of the beach and hygiene of the rooms	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:58:53.313987+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:33:44.935348+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:36:28.927683+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good maintenance and top notch hygiene level 	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:29:34.030713+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:22.994296+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:23.193321+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:23.393292+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:23.585411+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	ffce55fe-67cf-479b-93cc-a7eae65375c5	2024-11-18 14:30:23.840702+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:36:36.450476+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Email Booking	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:36:44.980432+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:14.888947+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:26.391105+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:44.996243+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:50.553039+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:37:59.942694+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:24.460067+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:38.241573+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:38.432816+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:38.63046+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:49.422385+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:38:56.997715+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	WiFi connectivity was spotty	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:15.121731+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:27.007868+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:31.826246+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:39:59.348262+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:04.815696+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The aesthetics and views	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:19.307536+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:42.559268+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:42.756661+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:42.947641+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:43.14056+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:40:43.37088+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	More connectivity points	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:41:01.361978+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:45:38.705057+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:45:48.348556+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:46:18.683805+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:46:42.939299+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:47:07.924751+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:47:16.206046+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:47:50.77346+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:48:02.043631+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:48:15.674985+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:48:38.645845+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:48:48.329757+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:49:03.795272+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:49:18.278244+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:50:16.160675+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:50:28.890895+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:50:42.432576+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:51:04.846137+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:51:11.935339+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improve in security 	41b23501-8877-4a01-8152-f67094581304	2024-11-18 14:54:22.983362+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:55:32.933529+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:55:41.892445+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:55:49.851803+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:55:59.508051+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:56:46.916346+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:56:53.771463+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	no\neverything was okey	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:12.626411+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:33.883805+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:56.954861+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:58:02.490127+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:59:46.203748+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:59:46.392625+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:59:46.583725+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:59:46.773482+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:59:46.971843+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:35:20.423928+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:35:31.31801+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 14:57:18.975629+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	increase number of staffs	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 15:04:01.652416+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:24:48.392938+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:24:48.606722+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Indian	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:24:48.798958+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:24:48.988366+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:24:49.179099+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	You could add a baby pool 	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:26:04.36258+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:30:44.729666+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Email Booking	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:30:59.202942+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:31:16.602732+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:31:22.645653+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:31:38.840869+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:31:58.12921+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:01.719367+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:06.323206+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:12.350705+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:16.181239+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:22.153278+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:35.218133+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:44.937047+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:48.419834+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:32:53.701335+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	N/A	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:11.835957+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:17.838534+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:21.196302+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:25.75596+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:30.847638+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:34.270445+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:33:38.07495+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent services	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:05.776157+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:56.356746+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:56.556336+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:56.754544+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:56.94391+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:34:57.163452+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:09:22.601061+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:09:37.724198+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:10:07.060646+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:10:20.651154+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:10:29.827915+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:10:40.620817+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:10:51.563475+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:11:06.931652+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:11:19.658487+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:11:38.197284+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:11:55.351713+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:12:07.401923+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:12:19.274164+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:12:28.369392+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:13:13.71269+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No Complains	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:13:41.151973+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:13:54.873643+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:14:02.78048+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:14:11.158112+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:14:22.137115+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:17:14.457719+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:14:32.683807+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:14:44.68244+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:18.548117+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Facebook	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:19:44.843487+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:30.034453+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:20:41.432372+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:51.960334+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:01.01302+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:06.558907+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming 	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:35.586908+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:49:25.804059+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:53:46.0555+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:55:15.568477+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:57:04.492109+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:57:47.228538+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:00:36.794459+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:01:13.440469+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:04:02.681506+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:04:02.873856+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:04:03.063339+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:04:03.250339+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:04:03.439663+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All services offered were good and efficient. Keep it up	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:15:43.088457+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:16:20.148927+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:16:39.057667+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:17:04.766396+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:17:45.189937+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:17:45.384366+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:17:45.576254+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:17:45.775716+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:17:45.974845+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:26.642863+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:19:17.639446+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:19:42.15431+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:02.873104+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:20:20.899625+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:21.353795+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:44.444489+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:58.880521+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:11.475139+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:26.28566+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:40.242021+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:57.896249+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:58.103741+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:58.301891+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:58.492698+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:58.692651+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:50:16.745969+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:56:39.21186+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:57:36.692812+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:58:09.667937+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, not at all	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:00:14.737919+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:00:49.144218+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The beach 	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:01:37.031054+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:17:25.206555+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:10.30176+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:19:02.077008+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:37.766842+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:20:53.372377+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:21.416543+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good customer care 	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:23:16.85541+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:53:06.039391+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:54:52.21362+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:56:53.988133+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:17:34.119491+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:17:42.951269+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:01.117965+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:50.986254+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:51.174917+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:18:51.365224+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:19:11.339561+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	None 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:19:31.219686+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The prices were a little bit higher for a common mwananchi 	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:19:32.076023+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:20:02.874706+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:20:11.580416+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:20:33.12853+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:05.528494+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Beach, club , food	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:21:19.863069+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:20.194144+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:33.628932+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:49.328844+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:21:55.073412+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:14.281546+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-18 16:22:26.997464+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:29.862806+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:30.071162+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:30.258056+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:30.449917+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:30.639865+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Comfortable 	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:22:46.437415+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:09.521501+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:16.493703+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:33.304282+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:43.093931+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:50.282444+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:41:58.183913+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:03.746652+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:09.46955+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:17.975477+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:24.366704+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:33.189584+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:42:52.762389+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:43:00.011863+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:43:09.125301+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:43:14.461445+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:44:21.712827+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:44:31.284394+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:44:43.344059+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:44:50.693975+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:45:32.115791+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:45:38.607171+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:45:47.084696+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Tge hotel service was the best	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:46:25.316359+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:47:38.813413+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:47:39.013215+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:47:39.238156+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:47:39.42875+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:47:39.626613+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Discounts 	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:48:33.30674+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Instagram	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:06:17.757351+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:06:31.21185+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:06:41.102471+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:06:49.223861+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:06:57.318392+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:07.583629+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:16.767617+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:24.531593+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:31.915534+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:38.713682+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:43.903269+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:08:05.069185+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:08:20.612006+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:08:25.945908+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:08:33.881732+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:08:49.901457+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:06.432149+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:14.265974+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:24.07531+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:23:37.127825+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:23:58.795738+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:26.906332+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:43.292578+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:04.018043+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:29.105016+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:25.942123+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good service 	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:27:21.029491+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:54:00.12039+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:57:15.956018+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:57:56.162203+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	There was no provisions in the hotel room for the storage of valuables 	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 08:59:56.206845+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:00:28.476667+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:01:03.585424+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:07:54.61976+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:00.856593+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:18.884079+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Peace and quiet 	db118a6c-ee11-42b1-8746-d2b43890f3b5	2024-11-18 17:09:39.464435+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:23:47.847216+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:07.852625+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:15.783666+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:34.725877+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:24:51.754051+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:11.297457+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:38.467884+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:45.050459+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:25:51.320284+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:07.943055+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:17.790011+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:32.056308+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:41.237363+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:48.735102+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:26:55.508015+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:26.870112+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:27.141036+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:27.428571+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:27.61764+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:27.805262+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Ac	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-18 17:29:41.992683+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:00:51.500008+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:01:15.601204+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:01:36.180677+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:01:43.515369+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:01:52.781813+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:05.909467+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:12.053985+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:18.766422+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:28.523451+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:34.734784+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:42.157168+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:02:53.575099+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:03:07.990565+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:03:30.432115+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:03:55.377554+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All good	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:04:09.277667+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:04:25.221514+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:04:38.920501+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:04:44.575617+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:04:53.999695+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:05:03.632592+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:05:09.890593+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Cafeteria	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:05:25.935251+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:09.076457+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:09.268293+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:09.468086+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:09.666292+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:09.8749+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All good	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:23.322815+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Facebook	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:28:31.765927+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:28:38.896933+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:28:50.735312+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:28:58.417016+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:29:24.449045+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Install a safe in every room where guests can keep their valuables 	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:06:14.617788+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:29:15.174077+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:29:34.564101+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:29:43.962148+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:29:52.661558+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:00.76165+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:21.225822+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:21.416874+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:21.627037+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:21.841356+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:22.031534+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:28.985363+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:36.597117+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:30:43.718364+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, i didn't had any complain 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:10.222563+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:20.175762+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:28.334653+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:34.334215+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:40.30593+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:46.865724+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:31:52.267731+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Cafeteria, swimming pool, sleeping rooms and many more 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:32:28.122813+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:13.869573+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:14.14188+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:14.442204+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:14.647994+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:14.838065+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Maintaining the level of where you are, the service are super good 	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:33:48.901525+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:47:20.28974+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:47:42.474309+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:47:53.341086+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:48:07.46671+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:48:17.90206+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:48:31.484346+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Average	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:48:40.509203+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:48:51.736511+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:01.937735+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:12.713357+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:26.521764+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:41.610447+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:51.301716+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:49:59.177137+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:50:09.889384+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:50:21.501905+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:50:31.382687+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:50:45.650211+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:50:53.836019+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:51:04.96757+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:51:12.034392+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:51:18.842136+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The nice food and the environment is peaceful 	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:52:01.96251+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:54:49.634147+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:54:49.865062+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:54:50.10526+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:54:50.29562+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:54:50.484405+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improve on checking in	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:55:14.278174+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:05:47.658159+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:08.631274+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:11.365493+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:24.896803+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:39.717621+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:24.143843+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No complaints	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:34.17154+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The ambiance	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:09:27.210944+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:26.032557+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:13:03.965607+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:03.031804+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:23.871449+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:32.955482+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:54.305358+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:23:52.627645+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:27.431771+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:42.374127+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:08.529916+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:08.512255+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The recieption	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:34.336209+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:32:08.413982+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:32:34.399455+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:32:45.100562+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:27.389787+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:16.216143+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:30.817287+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:52.248548+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:03.532126+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:29.701825+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:29.896913+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:43.991133+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:28.062287+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Quicker services	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:02:21.021122+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:06:40.655962+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:07:47.494458+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:49.02339+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:55.321045+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:40.108062+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:56.114953+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:57.260613+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:09:13.708569+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:15.790485+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:09:15.975856+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:10:21.107776+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:15:49.262849+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:15:49.452809+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:15:49.643509+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:15:49.841502+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:15:50.063307+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:17:36.583615+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:17:58.368772+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:15.39584+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:19.826764+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:23.924108+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:40.575852+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Courteous staff	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:20:30.905798+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:21:19.175817+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:11.23065+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:20.711895+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:28.330433+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:51.094836+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:04.183594+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:32:21.343017+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:46.22162+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Ambiance 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:59.871952+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	More music in designated areas 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:50.145834+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:23.459473+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:36.786029+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:42.090483+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:36.187188+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really, everything was okay 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:06.118566+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:09.53655+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:19.524754+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:31.878782+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:35.798336+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The services in general 	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:54.525722+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:00:12.694739+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:00:12.914094+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Indian	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:00:13.14253+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:00:13.335751+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	West African	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:00:13.524947+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:04.116621+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:17.615666+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:27.483978+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:06:48.169565+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:06:57.694807+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Average	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:58.715991+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:18.845661+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:23.533475+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:32.138429+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:07:37.364536+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly dissatisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:57.930354+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:06.624339+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:07.049507+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:13.146841+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:13.925908+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:08:14.804449+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:19.006085+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:08:26.914769+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:44.239336+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:08:46.28069+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:09:06.577088+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:10.706788+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The customer seevice	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:29.901445+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:46.747552+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:46.951129+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:47.16123+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:47.350468+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:47.546506+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:10:58.884227+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:12:11.22943+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:23:45.552513+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:31.714489+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:01.335234+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:13.42807+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The checking out\n	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:27:20.618352+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:32:54.5833+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:11.252056+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:28.234691+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:11.986371+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:20.339077+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:38.178824+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:48.379413+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:56:55.951165+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:07.118393+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:15.587517+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:57:39.980107+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 18:58:13.355138+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Below Expectations	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:37.270107+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:06:46.729895+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:03.27525+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:07:32.989233+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	2	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:38.87519+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:07:46.537627+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:01.905559+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:33.693955+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:08:36.208222+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:08:46.819297+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:08:50.432076+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:08:59.970668+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:09:05.186536+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:09:25.690858+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:09:37.095966+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:09:51.435311+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:15.297192+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:15.486575+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:15.675571+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:15.866702+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:16.056995+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good wifi	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-18 19:10:22.937796+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:10:30.890187+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:10:44.265755+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No complaints 	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:11:28.116474+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:11:41.13585+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:12:19.963445+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:13:26.230796+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:13:32.841733+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Nice services and empathetic staff 	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:14:23.072469+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Make wifi connections more reliable.\n	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-18 19:16:31.350286+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:17:49.860034+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:07.975688+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:27.668854+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:37.313375+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:41.95557+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:46.168639+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:52.296963+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:18:57.125997+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:02.324283+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:35.699583+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:49.583708+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:19:59.809318+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Email Booking	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:21:30.322998+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:06.281059+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:06.482413+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:06.670359+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:06.858739+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:07.083322+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All is well 	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:22:21.838857+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:23:10.310661+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:16.115679+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:54.662427+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:54.853743+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:55.042984+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:55.231003+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:24:55.419383+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:36.887504+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:25:57.932604+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:12.830394+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:57.443757+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Chinese	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:57.633425+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Indian	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:57.850822+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:58.046037+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	West African	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-18 19:26:58.235845+00
616fee8a-dad7-473b-a667-1dce09a738f6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:50:31.300048+00
6f31b5d4-18fa-40a7-960c-3677066ce3d2	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, everything	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:50:38.162236+00
ce7dd244-f36a-42c1-8ab3-b6e8b8fbd4eb	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:50:48.693326+00
00d86e5b-dba1-49a5-8909-5c38a1479ee7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, but could improve	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:50:55.495964+00
eedbcd75-4b20-4d4d-8482-02adaf003651	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:02.297279+00
f7a7e97e-aa10-4cad-a5d0-b6dbd1f4607a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Baby products	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:24.266089+00
ff5250ca-7f87-4287-9790-8439ff79d248	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Reasonable	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:31.418405+00
ef3e2e93-7f3b-42ab-bab4-d56635d9931c	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Slightly satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:41.314619+00
1c306e71-be5e-4899-822a-3f46e526a057	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, good value	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:47.517905+00
5a49ad62-dac2-4855-9bb2-0cea3f522ac6	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:52.654141+00
a72c44ad-6b48-4ff2-94a2-dbc727b333d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, and it was good	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:51:58.494006+00
39a13775-90a4-431a-961d-0532d7da41d7	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Efficient	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:02.903117+00
82850eaa-cbfb-4b37-a00d-35cc4d484708	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:07.780699+00
4aa61947-1a09-429d-9973-43c35d78c80a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:12.660588+00
1822aefb-aaa7-4a9c-88d2-82759f647a58	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes, fully stocked	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:17.666855+00
54bb8e25-345f-46a9-864d-58c675f75d41	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	4	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:24.5718+00
dcd41437-c782-4ba1-a5a1-edb83d78ec4a	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Yes	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:30.565593+00
76f5753d-b2df-451d-ac40-1b6f6cb772d5	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:39.356311+00
cc3e5dec-8064-41d9-8b84-d2cb700cf898	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	5	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:48.005386+00
2e163b61-9cf1-452a-b384-f26704dc599e	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:52:56.049999+00
145646ce-8f1a-4d55-b284-b2c806f1d0cc	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Usually (about 90% of the time)	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:53:03.832148+00
0092186e-94a4-48c7-8b53-3382e15c71be	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Very likely	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:53:09.232309+00
73feaaed-cd7a-4ae1-9064-884362b9b97b	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	The customer service	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:53:55.799585+00
df812cdb-5e13-4641-b1ad-737f444acc92	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Introduce more variety of brands	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:54:30.725719+00
2e2639e3-a4b8-4d49-bf9c-028c04596ad1	7adba2c0-f1f2-40bd-b1b0-2ffefa755348	\N	\N	Train servers to deal with all kinds of customers better	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:55:11.282019+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:55:54.84134+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:00.956766+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:11.96991+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:20.163602+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:26.241425+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:37.711402+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:44.318252+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:52.511927+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:56:59.596159+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:10.813873+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:18.585322+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:30.444646+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:38.341072+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:45.263424+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:57:52.468282+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:05.321674+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:11.381877+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:42.123061+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The environment was conducive for relaxation\n	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:13.041589+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:05.541747+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:19.20737+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:33:39.786517+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:04.992254+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:05.224835+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:20.169844+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not at all 	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:44.981008+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:34:55.098296+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:05.828297+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:30.409476+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:35:43.8109+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:19.740554+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	African	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:10.43637+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:10.627184+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:10.828989+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:11.019604+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-22 17:38:11.211105+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:34.532889+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:58:48.333373+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:56.323364+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:56.518664+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Indian	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:56.71616+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:56.910825+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	West African	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 19:59:57.115922+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Other	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:14.723632+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:32.574398+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:49.817676+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:03.733179+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:21.810578+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:49.77976+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:17.167599+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:38.418078+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Provide better security for valuable items	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 20:00:37.028745+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:15:19.796472+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:15:29.563119+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:15:37.652585+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:15:50.014453+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:16:01.850126+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:16:17.95161+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:16:26.752624+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:16:37.693185+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:16:46.786161+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:17:15.590645+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:17:27.162225+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:17:47.566147+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:17:47.790886+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:01.020302+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:10.578316+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:18.485324+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	None	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:33.976455+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:45.979334+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:18:56.694821+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:19:05.837173+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:19:16.713125+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:19:25.774074+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:19:37.731547+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Customer service 	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:19:53.731316+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:20:37.502323+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:20:37.713749+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:20:37.914009+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:20:38.1066+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:20:38.297805+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Improv on internet speed	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:21:21.703709+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:37:37.184736+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:37:50.097693+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:37:59.075462+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:08.861204+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:17.03103+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly dissatisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:26.373861+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Below average	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:34.050292+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Somewhat	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:44.689459+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:38:53.47413+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Rarely	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:39:07.995857+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:39:19.012549+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:39:32.124086+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:39:43.23453+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:39:51.002492+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:40:00.36926+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	There were no full length mirrors.\nThe breakfast buffet had very limited options.  	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:41:12.348679+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No, not at all	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:41:20.11442+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not really	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:41:46.985171+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	3	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:41:53.586449+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:42:02.338804+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:42:10.07503+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not sure	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:42:23.114809+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The size of the beds and room. Hot water shower	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:42:49.868674+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:43:37.224688+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:43:37.423507+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:43:37.623303+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:43:37.823335+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:43:38.023354+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:19:54.146352+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:11.797884+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:31.918163+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:08.877308+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:21.035809+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:56.606116+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:22:06.411845+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very generous waitress	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:22:25.485454+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:39:50.368924+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:05.226215+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:15.53137+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:51.308517+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:03.229304+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:16.105335+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:41.472749+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:03.961677+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:04.151837+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:04.341966+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:04.532118+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:04.733413+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:26.493095+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:43.943122+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:16.723103+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	N/A	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:09.071233+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Friendliness of the staff	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:09.270878+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:58.461041+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:58.658999+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:58.84901+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:59.038609+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:19:59.235965+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The menu should have variety. \nAdd mirrors in the rooms	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:44:25.383383+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Facebook	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:19:46.598171+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:03.982582+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:20.782185+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:38.889072+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:45.97248+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:51.990405+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:20:58.462657+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:04.511839+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:14.93971+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:24.60337+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No,I was comfortable 	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:38.976458+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:48.205103+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:21:52.162396+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly satisfied	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:22:01.726594+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not sure	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:22:11.4072+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:34:37.826142+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:39:54.768384+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:00.078578+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:11.575591+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:22.47651+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:29.08806+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:36.122879+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:40:57.090659+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:09.032869+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Everything was fine and okay.	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:34.75778+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:48.330278+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:52.942312+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:41:57.048368+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:42:00.814061+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:42:04.29667+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The swimming pool was awesome.	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:42:21.899604+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:09.426601+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:09.623494+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:09.821487+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Spanish	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:10.011248+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:10.216639+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	So far everything is great 	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 11:43:18.930105+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Ensure a smooth change of the cuisines 	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:34.885694+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:47:54.923801+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:47:58.793726+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Dissatisfied	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:05.19566+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:09.147688+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:12.059753+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:17.346233+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Below average	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:23.53177+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:26.846095+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:30.093638+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:33.227111+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:38.481516+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:48:45.120564+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Dissatisfied	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:50:50.728991+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:50:55.160367+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:50:58.383529+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	To much noise in the bar Lounge\n	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:33.794746+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:38.798023+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:41.880601+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:51.263942+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:58.179957+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:42.760844+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:42.95326+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:43.152334+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:43.34434+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:43.534573+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:39.793688+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:59.667777+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:33.300315+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:02.952417+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:17.495729+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:38.098241+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:43.901882+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:25.943975+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:45.520914+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	N/A	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:20:13.226312+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:46.728059+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:51:54.86424+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The swimming pool area\n	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:52:17.898345+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:34.594124+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:43.696237+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:56.550239+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:16:55.976327+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:10.882311+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:36.250203+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:36.447518+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:36.645549+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:17:55.431833+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:32.074694+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:18:50.462427+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Increase offers\n	cd81dc40-36f1-4399-b5dd-65a0b43b0fec	2024-11-19 11:53:00.044086+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:02.772505+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:12.655327+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:29.375847+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:36.823964+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:59.2668+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:07.674249+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No\n	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:32.316153+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:57.6557+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:57.847323+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:58.037275+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:58.228742+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:58.419486+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:52:10.76577+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:52:18.431202+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:52:50.755124+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:13.681402+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:22.128618+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:58.873069+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:55:10.060611+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Cleanliness 	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:57:06.612715+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:31.459811+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:47.589876+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:53:52.956497+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:05.8512+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:22.941857+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:23.133519+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	af686cfe-a18a-436e-bb8d-fc7b540dd9f9	\N	Club 	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:23.324849+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:23.524764+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:23.716762+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes poor customer service\n	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:54:55.002154+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:13.24797+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:55:25.273134+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	nj	d70f8ac6-7f00-4dec-9b7c-7c3e804eecfb	2024-11-19 11:56:05.009913+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:50:46.005797+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:51:07.073288+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:51:15.578331+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:51:31.345626+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:51:52.577912+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:52:06.501155+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:52:21.684761+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:52:30.001177+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:52:47.016521+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:52:56.612394+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:53:03.516008+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	b45a9231-30c7-42c5-b5cb-ca9d7a57b471	\N	Cafeteria	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:53:18.341311+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:53:25.35676+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:53:33.758159+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:53:41.852014+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not at all, it was to my satisfaction	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:54:25.02868+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:54:33.136546+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:54:43.112054+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:54:50.527718+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:54:56.869401+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:55:05.607215+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:55:11.28415+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The services were very good	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:55:48.089645+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:56:40.419599+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:56:40.612141+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:56:40.805583+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:56:40.993948+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:56:41.184846+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	All was well with me	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 12:57:49.551709+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:32:43.34315+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:32:52.447546+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:04.416501+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:10.45966+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Exceeded Expectations	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:15.601104+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:22.506392+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:27.965689+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:33.267455+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:40.836653+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:46.591746+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:33:53.681204+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:02.389033+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:08.311068+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:13.602543+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:17.537627+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:29.973722+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:50.920951+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Keep doing the good work 	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:40.849384+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:52:32.060685+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:31.541917+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:43.311239+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:27.402232+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:45.190591+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Swimming pool 	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:55:24.57981+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:24.211811+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:34:39.493526+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:35:02.023187+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:35:15.791591+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:52:41.834925+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:05.531931+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:11.814937+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No\n\n\n	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:39.416736+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:49.889027+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:55:04.726866+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:35:10.752254+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Meals	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:35:30.012027+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Somewhat	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:23.544279+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:53:37.634254+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:18.14356+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:54:54.158155+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:13.35006+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:13.542704+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:13.733088+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Spanish	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:13.920818+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	1e91527b-44e5-4939-9eb0-3dd0d61499d0	2024-11-19 13:37:14.112227+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Facebook	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:01:48.127693+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:01:55.633065+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:03.771712+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:11.207766+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:18.181549+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:26.310269+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:33.408358+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:41.879758+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:50.212109+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:02:57.986422+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:03:09.139367+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:03:19.500905+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:03:30.683994+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:03:43.558161+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:03:52.081906+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	I didn't have any complaints, I was well attended to.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:18.251545+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:30.575775+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Mostly	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:38.31208+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:44.668725+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:52.272138+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:04:59.377625+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:05:05.596494+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The swimming pool and the meals. The staff was also very professional.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:05:41.576777+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:06:37.740507+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Chinese	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:06:38.021024+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:06:38.294226+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:06:38.492696+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	West African	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:06:38.693463+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Discounts would be more friendly. I would also request limited restrictions when it comes to taking photos.	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:07:35.45991+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:56:23.618676+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Travel Agency	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:56:38.413746+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:56:46.389617+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:56:59.264526+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:57:15.246661+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly dissatisfied	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:57:41.230208+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:57:55.84177+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:58:08.837168+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:58:33.425401+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:58:44.575887+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:58:53.681773+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3684ed4d-2a2a-4925-ac27-6246b9380c5d	\N	Swimming pool	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:59:09.123921+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:59:26.521449+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:59:38.027031+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 17:59:48.534491+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The customer service should find a better way to communicate without moods	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:00:53.415157+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:01:03.094307+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:01:29.743144+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:01:42.010244+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:01:51.367863+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:02:17.351031+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Probably	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:02:39.689619+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:04:24.308488+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:04:24.499617+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:04:24.697576+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:04:24.905667+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:04:25.098167+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Don't downside anything 	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:05:43.90674+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	African	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:56:50.839305+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	Chinese	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:56:51.04088+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Indian	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:56:51.259908+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	Spanish	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:56:51.455023+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	West African	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:56:51.644122+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The cleanliness of the place 	667a67bf-51fe-4df3-b523-00ae295a68ce	2024-11-19 18:03:49.848634+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Search Engine	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:13.295433+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:18.577727+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Slightly dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:32.456805+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:37.573025+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:49.64755+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very dissatisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:40:57.06706+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:41:04.324707+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:41:09.879284+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:41:13.990382+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:41:58.211988+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:42:04.268815+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	4092e30f-d282-4a9a-b1cd-9ea1ea908082	\N	Game Park	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:42:10.186642+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:42:21.794752+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:42:26.658083+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:42:30.695188+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes the customer service	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:43:22.15816+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Not Applicable	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:43:29.835749+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:43:36.638372+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:43:43.461756+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:43:49.717366+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Rarely	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:44:18.760531+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely not 	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:44:26.383834+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The Music in the background	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:44:48.403348+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	African	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:45:02.757921+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Chinese	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:45:02.957843+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Indian	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:45:03.15659+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Spanish	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:45:03.357186+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	West African	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:45:03.580409+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Increase the number of reservation agents	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:46:24.432428+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:38:35.518664+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Phone call / Message	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:38:43.588151+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:38:49.471968+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:38:54.530164+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Met Expectations	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:00.796482+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:07.115074+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Excellent	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:12.6095+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:17.218165+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:22.489507+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Always	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:28.110105+00
7aa0af03-71b1-412a-8b8c-059089d9b787	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	4	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:32.580001+00
17fc096c-7011-440b-be4a-31dcbfe61735	c082054d-46e4-4bdf-ac24-810d17406e7c	3ef8cff7-4235-4207-907c-df275d0adbf8	\N	Beach	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:40.614334+00
28baf7ff-c10a-4542-9eef-80d74fc15f4c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:47.879679+00
4913caa6-d942-45cb-801a-1ee44063e57e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, Completely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:39:53.766055+00
eac2877d-915d-4ce4-a32d-49dee271a5c8	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:03.574645+00
c73beb62-6926-4658-a35a-d2842132f801	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	No	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:10.517154+00
aaf3f226-d2ca-4d94-af5a-ac85430776bd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:17.195326+00
89ed9510-835a-4bd4-a820-005bce2562b6	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:23.267227+00
bc9e725f-6408-4f1a-8200-c9d1362d666f	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	5	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:28.788246+00
1ba11149-69ba-49e4-87c4-e042d53baf08	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Very satisfied	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:35.577709+00
8544dd09-4d10-4dc7-84e6-7d24e26bb870	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:43.875759+00
3ba2ad30-cfe4-4170-a84f-5bed2fbdcba0	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Definitely	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:49.65332+00
d41f61b5-b726-4640-bd7a-8854fe06b025	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	The beach	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:40:59.639399+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	5	African	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:35.663431+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	3	Chinese	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:35.888895+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	2	Indian	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:36.091228+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	4	Spanish	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:36.280835+00
a516e0b8-d38d-4b30-bded-33b39cf340c7	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	1	West African	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:36.475096+00
f02b7365-be16-44bd-937c-a8e6549b5465	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Increase the food	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:41:48.943268+00
6f1dab70-7d1a-4438-9157-b585af2467d9	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Referral	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:29:37.992495+00
0becfbe6-5830-4630-b986-a8b71ec9e75c	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Online - Website	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:29:58.215073+00
e5dfbf0b-1e68-4abc-a914-01daf0b8f31e	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:30:19.196039+00
7ba4fc9c-8ad6-4f17-b993-8a8ad1598697	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Yes, completely	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:30:34.645416+00
78c0d15c-2db5-47f3-affe-7fe610d40123	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:30:56.016765+00
32118821-ad59-4d5c-9213-d48a2069c3dd	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Satisfied	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:31:07.908987+00
400d4591-701a-434d-a818-d48a26302a57	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Good	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:31:19.695779+00
eb6c2812-2a76-4a33-a8ff-d5641a564090	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Neutral	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:31:35.662158+00
22016b7c-fea7-4c30-b90d-8a977be7a511	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Most of the time	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:31:46.009895+00
d6c4a584-d1fb-4511-81e6-b608b5de6914	c082054d-46e4-4bdf-ac24-810d17406e7c	\N	\N	Sometimes	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:31:58.006338+00
\.


--
-- Data for Name: branching_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."branching_rules" ("rule_id", "question_id", "selected_option_id", "next_question_id", "created_at") FROM stdin;
\.


--
-- Data for Name: consumer_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."consumer_details" ("consumerid", "email", "company_name", "phone", "county", "sub_county", "sector", "disabled", "created_at") FROM stdin;
c1bde176-582a-4028-888e-a70875a11f51	christinestaicy@gmail.com	Aliquant Limited	0795057553	Nairobi	Kinango	Others	f	2025-02-02 13:21:20.73+00
75b87d71-3545-4032-adcb-64700e7456f7	ubermatchvlaad212@gmail.com	CSNRU	+254743962943	Taita-Taveta	Taveta	Education	f	2025-02-28 17:38:15.884534+00
\.


--
-- Data for Name: price_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."price_table" ("id", "title", "one_pack", "six_pack", "ten_pack", "max_qns", "max_responses", "demographics", "api", "branding") FROM stdin;
\.


--
-- Data for Name: consumer_package; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."consumer_package" ("id", "consumerid", "package_id", "package", "package_type", "invoiced", "expires", "transaction_code") FROM stdin;
\.


--
-- Data for Name: consumer_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."consumer_transactions" ("transaction_code", "trans_amount", "org_account_balance", "msisdn", "first_name", "middle_name", "last_name", "trans_time", "id", "bill_ref_number") FROM stdin;
SKM6OIUYPK	54000	1779.00	402245c9753c24c46690c36a90e845733a5ceb0cde9a057720f3d4f01a611add	CLIFF	\N	\N	2024-11-22 10:22:46+00	1	0799725093
SKQ28DJ5NY	10	1469.00	402245c9753c24c46690c36a90e845733a5ceb0cde9a057720f3d4f01a611add	CLIFF	\N	\N	2024-11-26 19:09:56+00	2	0799725093
TBP4F3JRGY	10	1379.00	402245c9753c24c46690c36a90e845733a5ceb0cde9a057720f3d4f01a611add	CLIFF	\N	\N	2025-02-25 16:22:38+00	3	0799725093
\.


--
-- Data for Name: email_verification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."email_verification" ("user_id", "email", "token", "verified", "recieved_email") FROM stdin;
\.


--
-- Data for Name: ext_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ext_answers" ("questionid", "surveyid", "option_id", "rankid", "answer", "updated_at") FROM stdin;
\.


--
-- Data for Name: old_surveys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."old_surveys" ("surveyid", "client_id", "survey_title", "survey_desc", "status", "target", "created_at") FROM stdin;
7adba2c0-f1f2-40bd-b1b0-2ffefa755348	c1bde176-582a-4028-888e-a70875a11f51	ALIQUANT RETAIL SUPERMARKET	Aliquant Limited is a retail supermarket dedicated to providing a wide selection of groceries, fresh produce, and household essentials to meet the daily needs of its community. To enhance customer satisfaction and continue improving the shopping experience, Aliquant Limited is conducting a survey to gather valuable feedback. This survey aims to understand customer preferences, assess service quality, and identify opportunities for growth. Your input will help Aliquant Limited better serve you by refining product offerings, optimizing store layout, and enhancing overall service.	Closed	408	2024-11-11 13:23:24.447124+00
c082054d-46e4-4bdf-ac24-810d17406e7c	c1bde176-582a-4028-888e-a70875a11f51	Amber Peak Lodge	The main of the survey is to help me understand what people think about my hotel and what recommendations they can give to ensure Amber Peak Lodge delivers the best services to her guests	Closed	417	2024-11-18 07:46:56.906996+00
\.


--
-- Data for Name: password_reset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."password_reset" ("id", "email", "token") FROM stdin;
1	anungopamphil@gmail.com	1860ea0e-4e4a-4646-bccf-1a0f599402c6
3	aliciamwisangwe@gmail.com	7d3eaad8-faf0-4ae7-b3aa-93de37cdd1f6
5	awesitdorcas00@gmail.com	f534cf09-83e2-487f-a452-7b550a93b30e
7	rophineopwapo4@gmail.com	c8755a83-282b-4cea-996f-e3bc717279b5
\.


--
-- Data for Name: payout_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."payout_requests" ("payout_id", "agent_id", "payout", "status", "created_at", "processed_by", "processed_at") FROM stdin;
b35a050c-aabe-4412-9271-4a776bcefd41	93325eb3-6c9e-4bd0-854a-88abf48f9887	50	complete	2024-11-18 09:50:07.18718+00	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 09:50:07.141+00
e5ee623f-d80c-4d38-9a8c-52dfd4f458d8	93325eb3-6c9e-4bd0-854a-88abf48f9887	50	complete	2024-11-18 12:00:26.869054+00	93325eb3-6c9e-4bd0-854a-88abf48f9887	2024-11-18 12:00:26.824+00
3775c6b1-5106-4778-985b-23b4ec2a2cf7	23a17622-a50f-47b2-8d10-6769e4acf30a	50	complete	2024-11-18 12:01:04.648361+00	23a17622-a50f-47b2-8d10-6769e4acf30a	2024-11-18 12:01:04.606+00
fb58487f-25be-4d6d-a653-a826f3a63165	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	50	complete	2024-11-18 12:17:56.375672+00	ee3323cf-3e6b-4fb8-a02d-e57e2680d38e	2024-11-18 12:17:56.337+00
62cebcc5-cfb3-408b-82b1-f75fbb58b7b5	edcf5863-e044-48b3-a6b7-69ffa7f265c2	50	complete	2024-11-18 12:19:39.146273+00	edcf5863-e044-48b3-a6b7-69ffa7f265c2	2024-11-18 12:19:39.107+00
32639c0e-aaa9-4182-99d8-93d64e330e04	d5864654-8e03-459f-9641-67cc53e0a1d6	50	complete	2024-11-18 12:20:30.084373+00	d5864654-8e03-459f-9641-67cc53e0a1d6	2024-11-18 12:20:30.04+00
47e80b36-6f0e-4ec0-926a-3023ac0476f5	d420e7c7-3fca-4984-9a7a-e254039ed9c9	50	complete	2024-11-18 12:24:22.701521+00	d420e7c7-3fca-4984-9a7a-e254039ed9c9	2024-11-18 12:24:22.663+00
fede0ab8-f3e3-4b43-a4e8-f38811164406	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	50	complete	2024-11-18 12:26:54.797208+00	182cb6c1-cc48-4d31-9a06-c4b4fe7bd2ea	2024-11-18 12:26:54.729+00
9f58b984-8c81-4cd2-9f4d-c7f15776602e	0b29de00-c97e-444c-8640-87fee3330781	50	complete	2024-11-18 12:28:12.153171+00	0b29de00-c97e-444c-8640-87fee3330781	2024-11-18 12:28:12.114+00
7a30beef-9fca-470e-beb0-7ce59544673b	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	50	complete	2024-11-18 12:28:18.520049+00	25ad8bad-e01b-48ce-ade1-f4abf05b1eb3	2024-11-18 12:28:18.474+00
ad6e2d32-2eb9-42af-ac7a-78a25c0b9d54	f71951ad-c751-4e1c-9a01-bea44b935e86	50	complete	2024-11-18 12:32:57.807259+00	f71951ad-c751-4e1c-9a01-bea44b935e86	2024-11-18 12:32:57.767+00
d3e1797e-2286-4d03-a978-c7ff14fed8b1	3f5d3c7f-4993-48c1-8499-fba142eb8b49	50	complete	2024-11-18 12:42:20.130103+00	3f5d3c7f-4993-48c1-8499-fba142eb8b49	2024-11-18 12:42:20.089+00
c44a1f68-0941-404d-b15f-f42a1c265bef	69bee2d7-0255-44e7-bd56-24a4f137827e	50	complete	2024-11-18 12:54:06.843289+00	69bee2d7-0255-44e7-bd56-24a4f137827e	2024-11-18 12:54:06.801+00
a70007d4-60ea-4320-8756-5e66a4a5710b	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	50	complete	2024-11-18 12:57:38.875964+00	f0e6fa0a-21d3-4a14-98de-f9105b5f569a	2024-11-18 12:57:38.832+00
5b0dca6b-539c-4bcf-a6e5-c7e4a28c23cb	b2715e1a-0cc2-4e7a-9128-045c0c688611	50	complete	2024-11-18 13:01:36.592643+00	b2715e1a-0cc2-4e7a-9128-045c0c688611	2024-11-18 13:01:36.549+00
f014797e-71e7-4070-b7ac-49682cf49222	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	50	complete	2024-11-18 13:02:53.992532+00	3fcdaf3b-1016-4d3a-b114-f1991e06eab9	2024-11-18 13:02:53.947+00
4e96f601-7559-4630-802d-d6a64058a0a9	4398d0a9-933e-4efd-9906-b920e390c872	50	complete	2024-11-18 13:06:13.191186+00	4398d0a9-933e-4efd-9906-b920e390c872	2024-11-18 13:06:13.147+00
912f6004-3a5a-4081-85c4-55e8c3a15ea3	1dc74f31-a53e-461a-aef1-fb2488b86736	50	complete	2024-11-18 13:12:21.453333+00	1dc74f31-a53e-461a-aef1-fb2488b86736	2024-11-18 13:12:21.406+00
507a1788-57e7-4298-ae0b-967269ea3e3a	815533a5-6869-4118-9d2b-8d094faa6f90	50	complete	2024-11-18 13:16:09.529265+00	815533a5-6869-4118-9d2b-8d094faa6f90	2024-11-18 13:16:09.484+00
434df65e-52bd-48a9-a14d-f19ee347c2f5	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	50	complete	2024-11-18 13:33:55.839536+00	9cf2cf48-c595-4ed0-9d46-d4da1acb1c7f	2024-11-18 13:33:55.793+00
1533eeac-e9ce-4513-9458-f379e146989c	af2caf3e-5a28-491a-bc5f-f869ccc09f38	50	complete	2024-11-18 13:40:37.108326+00	af2caf3e-5a28-491a-bc5f-f869ccc09f38	2024-11-18 13:40:37.065+00
6bbf5c74-b237-45c4-ace3-6a83061d3014	f47f2950-4c39-4fe3-9c63-78042db0f6bf	50	complete	2024-11-18 13:43:33.397931+00	f47f2950-4c39-4fe3-9c63-78042db0f6bf	2024-11-18 13:43:33.355+00
eda44f38-16db-4ab2-a6ca-474f4f99a9f6	f522d6fc-340d-4878-871a-a39aff2431a1	50	complete	2024-11-18 13:43:41.917641+00	f522d6fc-340d-4878-871a-a39aff2431a1	2024-11-18 13:43:41.875+00
f83cb255-7262-4972-8d9b-6adc79e3e779	c087535c-2607-4622-902a-51b6e1dae5f3	50	complete	2024-11-18 13:47:24.872182+00	c087535c-2607-4622-902a-51b6e1dae5f3	2024-11-18 13:47:24.827+00
282b7a37-665d-44fd-907b-950cd72c7b76	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	50	complete	2024-11-18 13:58:06.756256+00	96b9d28c-4d4c-452f-a3e7-9f7580cc4322	2024-11-18 13:58:06.709+00
609c5512-de31-469a-81db-337494127fa8	b6f08194-a214-48f0-858c-435a84c1eb2e	50	complete	2024-11-18 14:03:04.448974+00	b6f08194-a214-48f0-858c-435a84c1eb2e	2024-11-18 14:03:04.4+00
67876c94-5906-470c-98be-3fde2b5129cb	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	50	complete	2024-11-18 14:14:36.816561+00	1423b0b1-d059-430d-9dfb-2bf7bc8b1b59	2024-11-18 14:14:36.771+00
ca485e38-3991-4749-96dc-f3d90165c34a	d618da68-10ac-4822-a536-ec15839c3c77	50	complete	2024-11-18 14:19:17.465099+00	d618da68-10ac-4822-a536-ec15839c3c77	2024-11-18 14:19:17.42+00
81cba2ba-a302-44f5-b2f2-2c62e3d22328	af1e06f0-6143-4474-804a-35d8ac3cd650	50	complete	2024-11-18 14:30:12.195324+00	af1e06f0-6143-4474-804a-35d8ac3cd650	2024-11-18 14:30:12.15+00
6974131d-fbf3-4403-b9a4-78add78c5292	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	50	complete	2024-11-18 14:31:31.595135+00	3bca75f1-bba8-4e61-8a2c-60e9c96863cb	2024-11-18 14:31:31.549+00
954e9ec9-e987-4e0f-960a-42facacd5ab6	5a980e05-778c-40b9-a623-31035b5b7f1f	50	complete	2024-11-18 14:53:07.271709+00	5a980e05-778c-40b9-a623-31035b5b7f1f	2024-11-18 14:53:07.225+00
8f1443cc-af68-4ef4-850b-25d918de2499	4b937413-4084-48a1-b6b2-8f856442f7ae	50	complete	2024-11-18 14:59:22.716477+00	4b937413-4084-48a1-b6b2-8f856442f7ae	2024-11-18 14:59:22.671+00
9d9fe749-3f4d-4be3-ab7c-2fa6a44451b8	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	50	complete	2024-11-18 15:04:40.211919+00	d0f1b707-51f2-4e1c-a9b6-a2e53be83141	2024-11-18 15:04:40.166+00
50c03360-083e-465d-89d5-fa224a260a08	500ca188-07bf-474d-89fc-bfadd41cd7d3	50	complete	2024-11-18 15:16:40.5034+00	500ca188-07bf-474d-89fc-bfadd41cd7d3	2024-11-18 15:16:40.459+00
adfdb17e-3710-40fb-9c3e-22723cc9a50e	58d3c3cb-0914-4516-bf95-ceef24429241	50	complete	2024-11-18 15:26:36.321485+00	58d3c3cb-0914-4516-bf95-ceef24429241	2024-11-18 15:26:36.277+00
8419f1cf-89c5-41e5-a79f-521ab100b923	212a1408-70b6-4592-be49-d4ba81008add	50	complete	2024-11-18 15:39:13.925449+00	212a1408-70b6-4592-be49-d4ba81008add	2024-11-18 15:39:13.883+00
df106834-dccd-41f8-843c-efb9c7ab38e3	b73c1522-4204-426a-82e8-6d201d06f1eb	50	complete	2024-11-18 16:20:09.746414+00	b73c1522-4204-426a-82e8-6d201d06f1eb	2024-11-18 16:20:09.693+00
74ab1488-7542-47cb-a5e5-30bbaf8f28dd	5624a568-b393-4e62-a56c-1673b0482c1c	50	complete	2024-11-18 16:24:12.117659+00	5624a568-b393-4e62-a56c-1673b0482c1c	2024-11-18 16:24:12.071+00
c5b6db3e-f6ed-488b-a63b-a20fc9417476	e3fc0be9-1068-4a67-a933-b13d4e13daa9	50	complete	2024-11-18 16:49:14.462508+00	e3fc0be9-1068-4a67-a933-b13d4e13daa9	2024-11-18 16:49:14.417+00
15e2515e-3c94-4946-8949-44b642a2f2a0	e6dd5228-a780-4b6e-94da-626d32fb8190	50	complete	2024-11-18 17:30:43.581378+00	e6dd5228-a780-4b6e-94da-626d32fb8190	2024-11-18 17:30:43.537+00
dbfdc49a-28df-497c-bba5-4308202628ca	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	50	complete	2024-11-18 17:31:56.248866+00	97f03cbb-2462-44e3-bee4-ea20c5f5ff33	2024-11-18 17:31:56.205+00
bdd71e02-4c8a-4169-885b-f69cd245f3a7	12059b01-c2cd-4ec0-a640-c4f80728ab8e	50	complete	2024-11-18 18:06:47.70401+00	12059b01-c2cd-4ec0-a640-c4f80728ab8e	2024-11-18 18:06:47.657+00
7a0588b2-f7ac-4d78-907e-7da15a3d1ba2	24a31c60-e722-46e4-b5c9-4f514987267c	50	complete	2024-11-18 18:06:54.86975+00	24a31c60-e722-46e4-b5c9-4f514987267c	2024-11-18 18:06:54.821+00
137f1a87-efa2-40b8-a276-6c38cc2b21fa	68427b34-46ba-40e0-b01c-6336ab006d94	50	complete	2024-11-18 18:34:35.95391+00	68427b34-46ba-40e0-b01c-6336ab006d94	2024-11-18 18:34:35.906+00
d8ccc195-5283-43fb-8b13-90eb40d7a4c5	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	50	complete	2024-11-18 18:55:56.070467+00	a82b8e1e-faa2-4fce-817b-a6fd656ba4f6	2024-11-18 18:55:56.021+00
59a2cddb-f1ba-4ce3-96ca-14e742bb6841	41b23501-8877-4a01-8152-f67094581304	50	complete	2024-11-18 18:59:05.201503+00	41b23501-8877-4a01-8152-f67094581304	2024-11-18 18:59:05.142+00
1210f066-4877-4b86-a6f8-584688c842dd	edfb1b6c-3230-4a79-a6e0-004ded923356	50	complete	2024-11-18 18:59:07.669418+00	edfb1b6c-3230-4a79-a6e0-004ded923356	2024-11-18 18:59:07.614+00
77919749-519e-4385-8e3e-2ea576b4188c	7ca7d821-22be-4834-84b2-c80e5a5361cf	50	complete	2024-11-18 19:03:17.294302+00	7ca7d821-22be-4834-84b2-c80e5a5361cf	2024-11-18 19:03:17.246+00
42e78e8f-b20e-4397-9d54-5c24079ba866	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	50	complete	2024-11-18 19:07:08.542177+00	fd8a6e5d-cb3e-4a91-a04b-9c4cacb6b09a	2024-11-18 19:07:08.495+00
380ecf40-0f0a-45c2-bce6-1e66a4c44e92	49c5437e-d309-4abe-96e9-23fa7398d776	50	complete	2024-11-18 19:10:56.081973+00	49c5437e-d309-4abe-96e9-23fa7398d776	2024-11-18 19:10:56.035+00
dd99102a-e438-41bf-9065-a3047ae2137d	44663c0d-e051-4cfc-9803-211def0c67cc	50	complete	2024-11-18 19:23:15.228591+00	44663c0d-e051-4cfc-9803-211def0c67cc	2024-11-18 19:23:15.18+00
7aee37f8-55e1-479f-9a0f-128684b0975b	4b07c44e-a189-4fb7-bf08-18414c44f187	50	complete	2024-11-18 20:01:14.717246+00	4b07c44e-a189-4fb7-bf08-18414c44f187	2024-11-18 20:01:14.628+00
f08c2bae-6ebd-47d9-84fa-b99662fc1f36	d91dee2c-782d-4f5d-96a5-79287b8a8daf	50	complete	2024-11-19 00:22:13.936323+00	d91dee2c-782d-4f5d-96a5-79287b8a8daf	2024-11-19 00:22:13.879+00
d61a7d0f-8c39-4031-ac46-92032e255526	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	50	complete	2024-11-19 05:00:20.580883+00	1280a7c8-3af8-4fa7-bb97-5bb989dccf56	2024-11-19 05:00:20.538+00
fa0ae5a3-5fad-4d18-a748-be221d2cca04	f20f511a-1581-48b9-976a-3574c7dac6cb	50	complete	2024-11-19 07:23:17.095853+00	f20f511a-1581-48b9-976a-3574c7dac6cb	2024-11-19 07:23:17.056+00
e6596abd-1c93-44db-93cf-403e3b46da45	75fcfe69-fa3e-4462-a4be-ea438612cb6b	50	complete	2024-11-19 07:46:32.926232+00	75fcfe69-fa3e-4462-a4be-ea438612cb6b	2024-11-19 07:46:32.889+00
a3646952-9dd7-4828-a6f7-0e21ddbd69a7	84a74d7e-c01e-463b-9a0f-6b7c38531c00	50	complete	2024-11-19 10:44:47.109868+00	84a74d7e-c01e-463b-9a0f-6b7c38531c00	2024-11-19 10:44:47.062+00
e12ebae7-68d7-4227-9844-e49daa26a089	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	50	complete	2024-11-19 11:43:56.374589+00	f5d69fc0-e80b-4c25-ba76-60fe1eccf3a8	2024-11-19 11:43:56.326+00
a43aee22-b615-49b1-95cf-ee8e2ee4bacd	4dcd4071-5314-4bea-874c-e4c072f25f3c	50	complete	2024-11-19 12:13:00.96857+00	4dcd4071-5314-4bea-874c-e4c072f25f3c	2024-11-19 12:13:00.921+00
f884e15d-caee-4878-80d4-bc03de278ee0	cedcb55f-d753-485b-ac19-72225d399bc9	50	complete	2024-11-19 13:03:52.481176+00	cedcb55f-d753-485b-ac19-72225d399bc9	2024-11-19 13:03:52.435+00
b3c6d9df-cfe8-4326-85cb-b29e060b5d15	51d92d75-a817-476c-9477-7327d748bb91	50	complete	2024-11-19 16:07:04.449168+00	51d92d75-a817-476c-9477-7327d748bb91	2024-11-19 16:07:04.407+00
7f8a9290-fba5-48ac-a97e-14b74f128494	431841a4-269e-4fa9-a265-476836e7369f	50	complete	2024-11-19 17:08:15.651146+00	431841a4-269e-4fa9-a265-476836e7369f	2024-11-19 17:08:15.594+00
f4ea7bb7-5367-4d97-92f5-070f2f5bf6e3	fe77139a-17e2-4d68-b0e5-29b401ee03cb	50	complete	2024-11-20 04:46:49.604051+00	fe77139a-17e2-4d68-b0e5-29b401ee03cb	2024-11-20 04:46:49.557+00
5822ff31-b771-4873-b6da-623c2354314d	121f945d-4974-4a74-97e0-2bb9cdadb25b	50	complete	2024-11-20 06:19:18.376317+00	121f945d-4974-4a74-97e0-2bb9cdadb25b	2024-11-20 06:19:18.33+00
5f682c3f-78e5-4f89-975c-46ef90c04d4c	a1b48c81-a072-4c55-ac64-b8027b889b7a	50	complete	2024-11-20 06:55:07.208724+00	a1b48c81-a072-4c55-ac64-b8027b889b7a	2024-11-20 06:55:07.162+00
8c6dcac2-004d-4d92-80f9-5850be8653ed	220c3547-0541-45e1-b769-e4a02cee8945	50	complete	2024-11-20 10:26:06.529131+00	220c3547-0541-45e1-b769-e4a02cee8945	2024-11-20 10:26:06.483+00
9233dbc6-a37c-4ffd-8d74-6e97dfb72ab2	32b3005d-61e7-4b06-b4e5-742b070968e3	50	complete	2024-11-20 10:26:48.095424+00	32b3005d-61e7-4b06-b4e5-742b070968e3	2024-11-20 10:26:48.046+00
6d318430-ff35-4135-8aee-a189ec2e97df	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	50	complete	2024-11-20 14:42:10.967358+00	8a33d66f-89ed-41d9-8d5c-95ca9f74fb9d	2024-11-20 14:42:10.921+00
de6b0e4c-62fa-4e77-af4b-16375384a5bf	4de64e92-dc71-4005-a0de-f46e4df56f27	50	complete	2024-11-20 17:41:06.601944+00	4de64e92-dc71-4005-a0de-f46e4df56f27	2024-11-20 17:41:06.549+00
1bfbef52-0882-4b91-939e-92df3449f21d	52432a7c-8874-41c9-8e22-23fb1c7823d0	50	complete	2024-11-21 10:05:27.485027+00	52432a7c-8874-41c9-8e22-23fb1c7823d0	2024-11-21 10:05:27.439+00
af56f9b6-4944-420c-a47b-d78761c1b9a6	818831a5-b451-4c20-bbf0-024669cf7577	50	complete	2024-11-21 13:44:12.619573+00	818831a5-b451-4c20-bbf0-024669cf7577	2024-11-21 13:44:12.572+00
6c42ae91-e95e-4cf4-b731-c15288ea5883	eeeae060-fa85-48a8-8b91-6a952d6f158e	50	complete	2024-11-22 09:07:38.044894+00	eeeae060-fa85-48a8-8b91-6a952d6f158e	2024-11-22 09:07:38+00
e1ee4d90-3306-45e5-b35d-abb059e7b24c	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	50	complete	2024-11-23 05:54:24.855957+00	79e0b32b-5650-4c8c-8d73-71f3e1302ba5	2024-11-23 05:54:24.81+00
a04f25ea-e861-4bff-adb4-21a18c592bb2	4615f82c-0260-4aa4-ae6b-999dcce70f3d	50	complete	2024-11-24 10:20:43.738581+00	4615f82c-0260-4aa4-ae6b-999dcce70f3d	2024-11-24 10:20:43.694+00
092655bc-dd5c-42c2-9cc2-ab3ba6ba9354	e83a0142-c342-40de-aad2-835e5d614ccc	50	complete	2024-11-24 13:29:17.705774+00	e83a0142-c342-40de-aad2-835e5d614ccc	2024-11-24 13:29:17.661+00
f34a8547-c606-453d-87da-3777a8c5aef5	a2d5b801-5a09-415e-afc7-e4e16400eca2	50	complete	2024-11-24 18:57:49.897017+00	a2d5b801-5a09-415e-afc7-e4e16400eca2	2024-11-24 18:57:49.851+00
1314191c-e204-4e1b-b584-73f5056be321	14713925-327a-4233-8a54-c0f61d673205	50	complete	2024-11-25 15:22:18.541102+00	14713925-327a-4233-8a54-c0f61d673205	2024-11-25 15:22:18.496+00
001330e9-7b4e-41f8-a7ab-b519f9638e24	bf12e948-da47-4690-8772-efb6ce2e7fe5	50	complete	2024-11-18 12:45:47.687855+00	bf12e948-da47-4690-8772-efb6ce2e7fe5	2024-11-18 12:45:47.646+00
0b14c792-62c4-4bcb-8c30-53d02b13e2aa	667a67bf-51fe-4df3-b523-00ae295a68ce	50	complete	2025-01-20 13:22:40.559471+00	667a67bf-51fe-4df3-b523-00ae295a68ce	2025-01-20 13:22:40.505+00
\.


--
-- Data for Name: sms_verification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sms_verification" ("user_id", "phone", "verified", "recieved_sms") FROM stdin;
\.


--
-- Data for Name: survey; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."survey" ("surveyid", "consumer_id", "title", "description", "status", "max_responses", "survey_expires") FROM stdin;
7adba2c0-f1f2-40bd-b1b0-2ffefa755348	c1bde176-582a-4028-888e-a70875a11f51	ALIQUANT RETAIL SUPERMARKET	Aliquant Limited is a retail supermarket dedicated to providing a wide selection of groceries, fresh produce, and household essentials to meet the daily needs of its community. To enhance customer satisfaction and continue improving the shopping experience, Aliquant Limited is conducting a survey to gather valuable feedback. This survey aims to understand customer preferences, assess service quality, and identify opportunities for growth. Your input will help Aliquant Limited better serve you by refining product offerings, optimizing store layout, and enhancing overall service.	Closed	408	2024-11-11 13:23:24.447124+00
c082054d-46e4-4bdf-ac24-810d17406e7c	c1bde176-582a-4028-888e-a70875a11f51	Amber Peak Lodge	The main of the survey is to help me understand what people think about my hotel and what recommendations they can give to ensure Amber Peak Lodge delivers the best services to her guests	Closed	417	2024-11-18 07:46:56.906996+00
\.


--
-- Data for Name: user_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_sessions" ("id", "user_id", "expires_at") FROM stdin;
3d80520ea09436c90d84118f4a1676b8afd2e05be0fc566a073ca96f3b40700c	c893fe46-c3d7-40c0-8035-b20c940b9d90	2025-02-25 16:26:12.911+00
348c5f6c90dfb9e34f5a72a1c5813a459140cfe58de2dea2a1bc013f69f901bd	c893fe46-c3d7-40c0-8035-b20c940b9d90	2025-02-25 16:26:35.317+00
f84f0a00ab262299ff019b31c7a61b82eec543b4436817b2f1812498268326e1	c1bde176-582a-4028-888e-a70875a11f51	2025-02-28 13:30:47.693+00
53be4cbabd187a4f121337353a2255b9784cb9a44a041132bd957e228250b526	c1bde176-582a-4028-888e-a70875a11f51	2025-02-28 18:46:45.743+00
417707b4891ee411cf2338953c64f1fcf528cf209a79cbd5fb8eddfd87b0dc97	c1bde176-582a-4028-888e-a70875a11f51	2025-03-01 16:41:09.309+00
16ad76ccec57173d6f7d9720c69aff31d9b77d153fe3ba417daf47e997f678f9	c1bde176-582a-4028-888e-a70875a11f51	2025-03-01 23:17:40.814+00
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: client_transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."client_transactions_id_seq"', 3, true);


--
-- Name: consumer_package_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."consumer_package_id_seq"', 1, false);


--
-- Name: password_reset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."password_reset_id_seq"', 16, true);


--
-- Name: price_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."price_table_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
