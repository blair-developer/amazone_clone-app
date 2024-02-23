
const express = require('express');
const authRouter = require('./routes/auth');
const mongoose = require('mongoose');
const adminRouter = require('./routes/admin');

const PORT = 3000;
const app = express();
const DB = `mongodb+srv://blairdeveloper:blair@cluster0.kc3tcab.mongodb.net/?retryWrites=true&w=majority`

//middleware:: client-server-client
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

//connect to db
mongoose.connect(DB).then(() => {
    console.log("connection successful");
}).catch((e) =>{
    console.log(e);
})

app.listen(PORT, "0.0.0.0",() => {
  console.log(`connected at port ${PORT}`);
});

