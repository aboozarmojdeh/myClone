const express = require("express");
const pool = require("../db");
const router = express.Router();


// Get all questions
router.get('/',async (req,res)=>{
    try {
      const allQuestions=await pool.query('SELECT * FROM questions');
      res.json(allQuestions.rows)  
    } catch (err) {
        console.error(err.message)
    }
});

// Get un answered questions
router.get('/unanswered/:id',async (req,res)=>{
    try {
        const {id}=req.params;
        console.log('id',id)
      const unAnsweredQuestions=await pool.query(`SELECT question_text FROM questions EXCEPT ALL SELECT question_text FROM answeredquestions where foreign_user_id=$1`,[id]);
      console.log(unAnsweredQuestions.rows)
      res.json(unAnsweredQuestions.rows)  
    } catch (err) {
        console.error(err.message)
    }
});

// Get a questions
router.get('/:id',async (req,res)=>{
    try {
        const {id}=req.params;
      const aQuestion=await pool.query('SELECT * FROM questions WHERE question_id=$1',[id]);
      res.json(aQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});

// create a questions
router.post('/',async (req,res)=>{
    try {
       
        const {question_text,answer_text}=req.body;
      const newQuestion=await pool.query('INSERT INTO questions (question_text,answer_text) VALUES($1,$2) RETURNING *',[question_text,answer_text]);
      res.json(newQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});

// update a questions
router.put('/:id',async (req,res)=>{
    try {
        const {id}=req.params;
        const {question_text,answer_text,is_answered}=req.body;
      const updateQuestion=await pool.query('UPDATE questions SET question_text=$1,answer_text=$2,is_answered=$3  WHERE question_id=$4 RETURNING *',[question_text,answer_text,is_answered,id]);
      res.json(updateQuestion.rows[0])  
    } catch (err) {
        console.error(err.message)
    }
});


module.exports = router;