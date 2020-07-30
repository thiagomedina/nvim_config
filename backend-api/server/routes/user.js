import express from "express";
import user from "../controller/user";

const router = express.Router();

router.route("/").get(user.getAll);
router.route("/:id").get(user.get);
router.route("/").post(user.post);
router.route('/').put(user.put);
router.route('/:id').delete(user.del);

export default router;
