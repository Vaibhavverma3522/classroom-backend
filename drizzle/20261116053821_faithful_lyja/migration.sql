ALTER TABLE "subjects" DROP CONSTRAINT "subjects_id_departments_id_fkey";--> statement-breakpoint
ALTER TABLE "subjects" DROP CONSTRAINT "subjects_pkey";--> statement-breakpoint
ALTER TABLE "subjects" ADD PRIMARY KEY ("id");--> statement-breakpoint
ALTER TABLE "subjects" ALTER COLUMN "department_id" DROP IDENTITY;--> statement-breakpoint
ALTER TABLE "subjects" ALTER COLUMN "id" ADD GENERATED ALWAYS AS IDENTITY (sequence name "subjects_id_seq" INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START WITH 1 CACHE 1);--> statement-breakpoint
ALTER TABLE "subjects" ADD CONSTRAINT "subjects_department_id_departments_id_fkey" FOREIGN KEY ("department_id") REFERENCES "departments"("id") ON DELETE RESTRICT;