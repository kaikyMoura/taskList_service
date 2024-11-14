-- DropForeignKey
ALTER TABLE "Task" DROP CONSTRAINT "Task_userId_fkey";

-- AlterTable
ALTER TABLE "Task" ALTER COLUMN "description" DROP NOT NULL,
ALTER COLUMN "userId" DROP NOT NULL;

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "createdAt" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Task" ADD CONSTRAINT "Task_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
