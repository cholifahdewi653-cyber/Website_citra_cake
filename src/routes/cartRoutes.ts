import { Router } from "express";
import { authMiddleware } from "../middleware/auth";
import {
  addToCart,
  deleteCart,
  getAllCart,
  getCartById,
} from "../controllers/cartControllers";

const router = Router();

router.get("/", authMiddleware(["USER"]), getAllCart);
router.post("/", authMiddleware(["USER"]), addToCart);
router.delete("/:cartItemId", authMiddleware(["USER"]), deleteCart);
router.get("/:cartItemId", authMiddleware(["USER"]), getCartById);


export default router;
