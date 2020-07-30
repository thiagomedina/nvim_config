import express from 'express';
import user from './user';

const router = express.Router();

router.get('/api-status', (req, res) => {
    res.json({
        status: "ok"
    })
});

router.use('/user', user);

export default router;