class User < ActiveRecord::Base
	has_many :answers
	
	has_many :answered_questions, :through => :answers, :source => :question
    
    has_many :followup_questions, :class_name => "Question", 
    :finder_sql => '
         SELECT
            AQ.name
         ,  AQ.answered_question_id
         ,  AQ.answered_question_body
         ,  AQ.answer_body
         ,  QC.id
         ,  QC.followup_question_id
         ,  Q.body 
         FROM       (
                        SELECT    
                              U.id AS user_id
                            , U.name as name
                            , Q.id AS answered_question_id
                            , Q.body AS answered_question_body    
                            , A.body AS answer_body
                        FROM       Users AS U 
                        INNER JOIN Answers AS A    
                        ON A.user_id  = U.id 
                        INNER JOIN Questions AS Q 
                        ON Q.id = A.question_id 
                    ) AS AQ 
         INNER JOIN Question_Correlations AS QC     
         ON QC.question_id = AQ.answered_question_id
         INNER JOIN Questions AS Q                  
         ON Q.id = QC.followup_question_id 
         LEFT  JOIN (
                        SELECT    
                              U.id AS user_id
                            , Q.id AS answered_question_id
                        FROM       Users AS U 
                        INNER JOIN Answers AS A    
                        ON U.id = A.user_id 
                        INNER JOIN Questions AS Q  
                        ON Q.id = A.question_id 
                    ) AS AQ2                        
        ON AQ2.user_id = AQ.user_id
        AND AQ2.answered_question_id = Q.id
        WHERE 
            AQ2.answered_question_id IS NULL
            AND AQ.user_id = #{id}
        '
end
	