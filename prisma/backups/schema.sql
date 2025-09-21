
\restrict CdYGn7iQaRMhEucYCjfa6JI706DVeKUkM7bWI7ABSQ9gjgSYv9aTupWRPeTbpdQ


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


CREATE EXTENSION IF NOT EXISTS "pg_cron" WITH SCHEMA "pg_catalog";






CREATE EXTENSION IF NOT EXISTS "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";






CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."QuestionType" AS ENUM (
    'Single',
    'Optional',
    'Multiple',
    'Ranking',
    'Rating',
    'Likert'
);


ALTER TYPE "public"."QuestionType" OWNER TO "postgres";


CREATE TYPE "public"."UserRole" AS ENUM (
    'ADMIN',
    'CLIENT',
    'AGENT'
);


ALTER TYPE "public"."UserRole" OWNER TO "postgres";


CREATE TYPE "public"."processed_status" AS ENUM (
    'pending',
    'complete',
    'declined'
);


ALTER TYPE "public"."processed_status" OWNER TO "postgres";


CREATE TYPE "public"."status" AS ENUM (
    'Draft',
    'Live',
    'Closed'
);


ALTER TYPE "public"."status" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."agent_data" (
    "agent_id" "text" NOT NULL,
    "agent_email" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "dob" "text",
    "county" "text",
    "subcounty" "text",
    "income" "text",
    "employment" "text",
    "education" "text",
    "sector" "text",
    "total_pts_earned" integer DEFAULT 0 NOT NULL,
    "total_pts_paid" integer DEFAULT 0 NOT NULL,
    "total_points_payable" integer DEFAULT 0 NOT NULL,
    "external" boolean DEFAULT false NOT NULL,
    "reset" boolean DEFAULT false NOT NULL,
    "referall_by" "text"
);


ALTER TABLE "public"."agent_data" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agent_progress_table" (
    "agent_id" "text" NOT NULL,
    "surveyid" "text" NOT NULL,
    "current_ix" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."agent_progress_table" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agent_surv_table" (
    "agent_id" "text" NOT NULL,
    "surveyid" "text" NOT NULL,
    "survey_completed" boolean DEFAULT false NOT NULL,
    "points_earned" integer NOT NULL
);


ALTER TABLE "public"."agent_surv_table" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."agent_transactions" (
    "agentid" "text" NOT NULL,
    "originator_conversation_id" "text" NOT NULL,
    "mpesa_conversation_id" "text" NOT NULL,
    "amount" integer NOT NULL,
    "processed_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."agent_transactions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."answers" (
    "questionid" "uuid" NOT NULL,
    "surveyid" "text" NOT NULL,
    "option_id" "uuid",
    "rankid" "text",
    "answer" "text" NOT NULL,
    "agent_id" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."answers" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."consumer_transactions" (
    "transaction_code" "text" NOT NULL,
    "trans_amount" integer NOT NULL,
    "org_account_balance" "text" NOT NULL,
    "msisdn" "text" NOT NULL,
    "first_name" "text",
    "middle_name" "text",
    "last_name" "text",
    "trans_time" timestamp with time zone NOT NULL,
    "id" integer NOT NULL,
    "bill_ref_number" "text" NOT NULL
);


ALTER TABLE "public"."consumer_transactions" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."client_transactions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."client_transactions_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."client_transactions_id_seq" OWNED BY "public"."consumer_transactions"."id";



CREATE TABLE IF NOT EXISTS "public"."consumer_details" (
    "consumerid" "text" NOT NULL,
    "email" "text" NOT NULL,
    "company_name" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "country" "text" NOT NULL,
    "state" "text" NOT NULL,
    "sector" "text" NOT NULL,
    "disabled" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."consumer_details" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."consumer_package" (
    "id" integer NOT NULL,
    "consumerid" "text" NOT NULL,
    "package_id" integer NOT NULL,
    "package" "text" NOT NULL,
    "package_type" "text" NOT NULL,
    "invoiced" timestamp with time zone NOT NULL,
    "expires" timestamp with time zone NOT NULL,
    "transaction_code" "text" NOT NULL
);


ALTER TABLE "public"."consumer_package" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."consumer_package_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."consumer_package_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."consumer_package_id_seq" OWNED BY "public"."consumer_package"."id";



CREATE TABLE IF NOT EXISTS "public"."email_verification" (
    "user_id" "text" NOT NULL,
    "email" "text" NOT NULL,
    "token" "text" NOT NULL,
    "verified" boolean DEFAULT false NOT NULL,
    "recieved_email" boolean DEFAULT true NOT NULL
);


ALTER TABLE "public"."email_verification" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."old_surveys" (
    "surveyid" "text" NOT NULL,
    "client_id" "text" NOT NULL,
    "survey_title" "text" NOT NULL,
    "survey_desc" "text" NOT NULL,
    "status" "public"."status" DEFAULT 'Draft'::"public"."status" NOT NULL,
    "target" integer,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."old_surveys" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."password_reset" (
    "id" integer NOT NULL,
    "email" "text" NOT NULL,
    "token" "text" NOT NULL
);


ALTER TABLE "public"."password_reset" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."password_reset_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."password_reset_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."password_reset_id_seq" OWNED BY "public"."password_reset"."id";



CREATE TABLE IF NOT EXISTS "public"."payout_requests" (
    "payout_id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "agent_id" "text" NOT NULL,
    "payout" integer NOT NULL,
    "status" "public"."processed_status" DEFAULT 'pending'::"public"."processed_status" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "processed_by" "text",
    "processed_at" timestamp with time zone
);


ALTER TABLE "public"."payout_requests" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."price_table" (
    "id" integer NOT NULL,
    "title" "text" NOT NULL,
    "one_pack" "text" NOT NULL,
    "six_pack" "text" NOT NULL,
    "ten_pack" "text" NOT NULL,
    "max_qns" double precision NOT NULL,
    "max_responses" double precision NOT NULL,
    "demographics" boolean DEFAULT false NOT NULL,
    "api" boolean DEFAULT false NOT NULL,
    "branding" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."price_table" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."price_table_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."price_table_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."price_table_id_seq" OWNED BY "public"."price_table"."id";



CREATE TABLE IF NOT EXISTS "public"."question_branching" (
    "branchid" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "surveyid" "text" NOT NULL,
    "questionid" "uuid" NOT NULL,
    "optionid" "uuid" NOT NULL,
    "next_questionid" "uuid" NOT NULL
);


ALTER TABLE "public"."question_branching" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."question_options" (
    "optionid" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "questionid" "uuid" NOT NULL,
    "option" "text" NOT NULL,
    "order_index" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."question_options" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."response_table" (
    "questionid" "uuid" NOT NULL,
    "surveyid" "text" NOT NULL,
    "option_id" "uuid",
    "rankid" "text",
    "answer" "text" NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "id" integer NOT NULL
);


ALTER TABLE "public"."response_table" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."response_table_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."response_table_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."response_table_id_seq" OWNED BY "public"."response_table"."id";



CREATE TABLE IF NOT EXISTS "public"."sms_verification" (
    "user_id" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "verified" boolean DEFAULT false NOT NULL,
    "recieved_sms" boolean DEFAULT true NOT NULL
);


ALTER TABLE "public"."sms_verification" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."survey" (
    "surveyid" "text" NOT NULL,
    "consumer_id" "text" NOT NULL,
    "title" "text" NOT NULL,
    "description" "text",
    "status" "public"."status" DEFAULT 'Draft'::"public"."status" NOT NULL,
    "max_responses" double precision NOT NULL,
    "survey_expires" timestamp with time zone NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."survey" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."survey_qns_optimum" (
    "questionid" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "surveyid" "text",
    "question_type" "text" DEFAULT 'Single'::"text" NOT NULL,
    "question" "text" NOT NULL,
    "likert_key" "text",
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."survey_qns_optimum" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_analytics" (
    "id" integer NOT NULL,
    "surveyid" "text" NOT NULL,
    "level_of_education" "text" NOT NULL,
    "sector" "text" NOT NULL,
    "country" "text" NOT NULL,
    "state" "text",
    "client_address" "text" NOT NULL,
    "has_completed" boolean DEFAULT false NOT NULL,
    "sub" "text"
);


ALTER TABLE "public"."user_analytics" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."user_analytics_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "public"."user_analytics_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."user_analytics_id_seq" OWNED BY "public"."user_analytics"."id";



CREATE TABLE IF NOT EXISTS "public"."user_sessions" (
    "id" "text" NOT NULL,
    "user_id" "text" NOT NULL,
    "expires_at" timestamp with time zone NOT NULL
);


ALTER TABLE "public"."user_sessions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "text" NOT NULL,
    "fullname" "text" NOT NULL,
    "email" "text",
    "is_email_verified" boolean DEFAULT false NOT NULL,
    "password" "text",
    "userole" "public"."UserRole" DEFAULT 'AGENT'::"public"."UserRole" NOT NULL,
    "age" integer,
    "gender" "text",
    "profile_pic" "text",
    "disabled" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"(),
    "google_id" "text",
    "update_registry" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."users" OWNER TO "postgres";


ALTER TABLE ONLY "public"."consumer_package" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."consumer_package_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."consumer_transactions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."client_transactions_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."password_reset" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."password_reset_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."price_table" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."price_table_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."response_table" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."response_table_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."user_analytics" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."user_analytics_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."agent_data"
    ADD CONSTRAINT "agent_data_agent_id_unique" PRIMARY KEY ("agent_id");



ALTER TABLE ONLY "public"."consumer_transactions"
    ADD CONSTRAINT "client_transactions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."consumer_details"
    ADD CONSTRAINT "consumer_details_pkey" PRIMARY KEY ("consumerid");



ALTER TABLE ONLY "public"."consumer_package"
    ADD CONSTRAINT "consumer_package_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."password_reset"
    ADD CONSTRAINT "password_reset_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."payout_requests"
    ADD CONSTRAINT "payout_requests_payout_id_unique" PRIMARY KEY ("payout_id");



ALTER TABLE ONLY "public"."price_table"
    ADD CONSTRAINT "price_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."question_branching"
    ADD CONSTRAINT "question_branching_pkey" PRIMARY KEY ("branchid");



ALTER TABLE ONLY "public"."question_options"
    ADD CONSTRAINT "question_options_pkey" PRIMARY KEY ("optionid");



ALTER TABLE ONLY "public"."response_table"
    ADD CONSTRAINT "response_table_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."survey"
    ADD CONSTRAINT "survey_pkey" PRIMARY KEY ("surveyid");



ALTER TABLE ONLY "public"."survey_qns_optimum"
    ADD CONSTRAINT "survey_qns_optimum_pkey" PRIMARY KEY ("questionid");



ALTER TABLE ONLY "public"."old_surveys"
    ADD CONSTRAINT "surveys_pkey" PRIMARY KEY ("surveyid");



ALTER TABLE ONLY "public"."user_analytics"
    ADD CONSTRAINT "user_analytics_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."user_sessions"
    ADD CONSTRAINT "user_sessions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_unique" UNIQUE ("email");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."agent_data"
    ADD CONSTRAINT "agent_data_agent_email_users_email_fk" FOREIGN KEY ("agent_email") REFERENCES "public"."users"("email");



ALTER TABLE ONLY "public"."agent_data"
    ADD CONSTRAINT "agent_data_agent_id_users_id_fk" FOREIGN KEY ("agent_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."agent_progress_table"
    ADD CONSTRAINT "agent_progress_table_agent_id_users_id_fk" FOREIGN KEY ("agent_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."agent_progress_table"
    ADD CONSTRAINT "agent_progress_table_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."agent_surv_table"
    ADD CONSTRAINT "agent_surv_table_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."agent_transactions"
    ADD CONSTRAINT "agent_transactions_agentid_users_id_fk" FOREIGN KEY ("agentid") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."answers"
    ADD CONSTRAINT "answers_agent_id_users_id_fk" FOREIGN KEY ("agent_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."answers"
    ADD CONSTRAINT "answers_option_id_question_options_optionid_fk" FOREIGN KEY ("option_id") REFERENCES "public"."question_options"("optionid");



ALTER TABLE ONLY "public"."answers"
    ADD CONSTRAINT "answers_questionid_survey_qns_optimum_questionid_fk" FOREIGN KEY ("questionid") REFERENCES "public"."survey_qns_optimum"("questionid");



ALTER TABLE ONLY "public"."answers"
    ADD CONSTRAINT "answers_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."consumer_details"
    ADD CONSTRAINT "consumer_details_consumerid_users_id_fk" FOREIGN KEY ("consumerid") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."consumer_details"
    ADD CONSTRAINT "consumer_details_email_users_email_fk" FOREIGN KEY ("email") REFERENCES "public"."users"("email");



ALTER TABLE ONLY "public"."consumer_package"
    ADD CONSTRAINT "consumer_package_consumerid_users_id_fk" FOREIGN KEY ("consumerid") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."consumer_package"
    ADD CONSTRAINT "consumer_package_package_id_price_table_id_fk" FOREIGN KEY ("package_id") REFERENCES "public"."price_table"("id");



ALTER TABLE ONLY "public"."email_verification"
    ADD CONSTRAINT "email_verification_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."payout_requests"
    ADD CONSTRAINT "payout_requests_agent_id_users_id_fk" FOREIGN KEY ("agent_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."question_branching"
    ADD CONSTRAINT "question_branching_next_questionid_survey_qns_optimum_questioni" FOREIGN KEY ("next_questionid") REFERENCES "public"."survey_qns_optimum"("questionid");



ALTER TABLE ONLY "public"."question_branching"
    ADD CONSTRAINT "question_branching_optionid_question_options_optionid_fk" FOREIGN KEY ("optionid") REFERENCES "public"."question_options"("optionid");



ALTER TABLE ONLY "public"."question_branching"
    ADD CONSTRAINT "question_branching_questionid_survey_qns_optimum_questionid_fk" FOREIGN KEY ("questionid") REFERENCES "public"."survey_qns_optimum"("questionid");



ALTER TABLE ONLY "public"."question_branching"
    ADD CONSTRAINT "question_branching_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."question_options"
    ADD CONSTRAINT "question_options_questionid_survey_qns_optimum_questionid_fk" FOREIGN KEY ("questionid") REFERENCES "public"."survey_qns_optimum"("questionid");



ALTER TABLE ONLY "public"."response_table"
    ADD CONSTRAINT "response_table_option_id_question_options_optionid_fk" FOREIGN KEY ("option_id") REFERENCES "public"."question_options"("optionid");



ALTER TABLE ONLY "public"."response_table"
    ADD CONSTRAINT "response_table_questionid_survey_qns_optimum_questionid_fk" FOREIGN KEY ("questionid") REFERENCES "public"."survey_qns_optimum"("questionid");



ALTER TABLE ONLY "public"."response_table"
    ADD CONSTRAINT "response_table_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."sms_verification"
    ADD CONSTRAINT "sms_verification_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."survey_qns_optimum"
    ADD CONSTRAINT "survey_qns_optimum_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."user_analytics"
    ADD CONSTRAINT "user_analytics_surveyid_survey_surveyid_fk" FOREIGN KEY ("surveyid") REFERENCES "public"."survey"("surveyid");



ALTER TABLE ONLY "public"."user_sessions"
    ADD CONSTRAINT "user_sessions_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE "public"."agent_data" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."agent_progress_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."agent_surv_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."agent_transactions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."answers" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."consumer_details" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."consumer_package" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."consumer_transactions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."email_verification" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."old_surveys" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."password_reset" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."payout_requests" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."price_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."question_branching" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."question_options" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."response_table" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."sms_verification" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."survey" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."survey_qns_optimum" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_analytics" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_sessions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";





GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";






























































































































































































































GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_data" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_data" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_data" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_progress_table" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_progress_table" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_progress_table" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_surv_table" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_surv_table" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_surv_table" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_transactions" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_transactions" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."agent_transactions" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."answers" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."answers" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."answers" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_transactions" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_transactions" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_transactions" TO "service_role";



GRANT ALL ON SEQUENCE "public"."client_transactions_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."client_transactions_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."client_transactions_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_details" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_details" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_details" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_package" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_package" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."consumer_package" TO "service_role";



GRANT ALL ON SEQUENCE "public"."consumer_package_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."consumer_package_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."consumer_package_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."email_verification" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."email_verification" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."email_verification" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."old_surveys" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."old_surveys" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."old_surveys" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."password_reset" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."password_reset" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."password_reset" TO "service_role";



GRANT ALL ON SEQUENCE "public"."password_reset_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."password_reset_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."password_reset_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payout_requests" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payout_requests" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."payout_requests" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."price_table" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."price_table" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."price_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."price_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."price_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."price_table_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_branching" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_branching" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_branching" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_options" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_options" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."question_options" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."response_table" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."response_table" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."response_table" TO "service_role";



GRANT ALL ON SEQUENCE "public"."response_table_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."response_table_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."response_table_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."sms_verification" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."sms_verification" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."sms_verification" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey_qns_optimum" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey_qns_optimum" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."survey_qns_optimum" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_analytics" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_analytics" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_analytics" TO "service_role";



GRANT ALL ON SEQUENCE "public"."user_analytics_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."user_analytics_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."user_analytics_id_seq" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_sessions" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_sessions" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."user_sessions" TO "service_role";



GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."users" TO "anon";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."users" TO "authenticated";
GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLE "public"."users" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO "service_role";






























\unrestrict CdYGn7iQaRMhEucYCjfa6JI706DVeKUkM7bWI7ABSQ9gjgSYv9aTupWRPeTbpdQ

RESET ALL;
