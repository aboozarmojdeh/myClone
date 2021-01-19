const express = require("express");
const pool = require("../db");
const router = express.Router();


// Get all answeredquestions
router.get('/',async (req,res)=>{
    try {
      const allAnsweredQuestions=await pool.query('SELECT * FROM answeredquestions');
      res.json(allAnsweredQuestions.rows)  
    } catch (err) {
        console.error(err.message)
    }
});



// Get an answeredquestions
router.get('/:id',async (req,res)=>{
    try {
        const {id}=req.params;
      const answeredQuestion=await pool.query('SELECT * FROM answeredquestions WHERE answeredquestion_id=$1',[id]);
      res.json(answeredQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});


// create an answered questions
router.post('/answered',async (req,res)=>{
    try {
       
    const {foreign_user_id,question_text,answer_text,is_answered}=req.body;
      const answeredQuestion=await pool.query('INSERT INTO answeredquestions (foreign_user_id,question_text,answer_text, is_answered) VALUES ($1,$2,$3,$4) RETURNING *',[foreign_user_id,question_text,answer_text,is_answered]);
      res.json(answeredQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});

// update a answeredquestions
router.put('/:id',async (req,res)=>{
    try {
        const {id}=req.params;
        const {question_text,answer_text,is_answered}=req.body;
      const updateQuestion=await pool.query('UPDATE answeredquestions SET question_text=$1,answer_text=$2,is_answered=$3  WHERE answeredquestions_id=$4 RETURNING *',[question_text,answer_text,is_answered,id]);
      res.json(updateQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});


module.exports = router;