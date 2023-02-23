const express = require('express');

const authRouter = express.Router();

authRouter.post('/api/signup', (req, res) =>{
    const {email, password, name} = req.body;

    // post data in database

})

module.exports = authRouter;