import { z } from "zod";

export const addToCartSchema = z.object({
  type: z.enum(["PRODUCT", "CUSTOM_CAKE"]),

  productId: z.string().min(1, "productId wajib diisi").optional(),

  productSizeId: z
    .string()
    .min(1, "productSizeId wajib diisi")
    .optional(),

  customCakeId: z
    .string()
    .min(1, "customCakeId wajib diisi")
    .optional(),

  rasa: z.string().optional(),

  qty: z.number().int().min(1, "quantity minimal 1").default(1),
});

export const deleteCartItemSchema = z.object({
  cartItemId: z.string().min(1, "cartItemId wajib diisi"),
});

export type AddToCartInput = z.infer<typeof addToCartSchema>;
export type DeleteCartItemParams = z.infer<typeof deleteCartItemSchema>;