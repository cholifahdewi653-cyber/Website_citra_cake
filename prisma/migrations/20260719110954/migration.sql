-- CreateEnum
CREATE TYPE "PaymentMethod" AS ENUM ('TRANSFER', 'COD', 'PICKUP');

-- AlterTable
ALTER TABLE "CartItem" ADD COLUMN     "rasa" TEXT;

-- AlterTable
ALTER TABLE "CustomCake" ADD COLUMN     "foto" TEXT,
ADD COLUMN     "fotoPublicId" TEXT;

-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "adminFee" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "bank" TEXT,
ADD COLUMN     "cancelRequestCount" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "deliveryDate" TIMESTAMP(3),
ADD COLUMN     "expedition" TEXT,
ADD COLUMN     "paymentMethod" "PaymentMethod" NOT NULL DEFAULT 'TRANSFER',
ADD COLUMN     "proofOfDelivery" TEXT,
ADD COLUMN     "proofOfDeliveryId" TEXT,
ADD COLUMN     "rejectReason" TEXT,
ADD COLUMN     "resi" TEXT;

-- AlterTable
ALTER TABLE "OrderRequest" ADD COLUMN     "refundStatus" TEXT,
ADD COLUMN     "refundType" TEXT,
ADD COLUMN     "settlementType" TEXT;

-- AlterTable
ALTER TABLE "Review" ALTER COLUMN "productId" DROP NOT NULL;
