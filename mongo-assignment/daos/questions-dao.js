const questionsModel = require('../models/questions/questions-models.js')
const findAllQuestions = () => questionsModel.find();
const findQuestionById = (qid) => questionsModel.findById(qid);
const findQuestionsForQuiz = (qzid) => questionsModel.find({quizId: qzid});
module.exports = { findAllQuestions, findQuestionById, findQuestionsForQuiz }
