const express=require('express');
const cors=require('cors');

const app=express();

// middlewares
app.use(express.json());
app.use(cors());


// ROUTES

// register and login routes
app.use('/auth', require("./routes/jwtAuth"));

// dashboard routes
app.use('/dashboard', require("./routes/dashboard"));

// models route
// app.use('/models',require("./routes/models"))

// restaurants route
// app.use('/api/v1/restaurants',require("./routes/restaurants"))
app.use('/api/v1/models',require("./routes/models"))




// main page route
// app.use('/',require("./routes/home"))

// questions routes
app.use('/api/v1/questions',require("./routes/questions"))


// answeredquestions routes
app.use('/api/v1/answeredquestions',require("./routes/answeredquestions"))







app.listen(5000,()=>{
    console.log('Server is listening to PORT 5000')
})