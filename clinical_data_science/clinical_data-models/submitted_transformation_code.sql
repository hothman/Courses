i
/* How many unique visit_occurence_id in the visit occurence_table */ 
SELECT count(*) 
FROM (select visit_occurrence_id 
  from `mimic3_demo_omop.visit_occurrence` 
  GROUP BY visit_occurrence_id ) ;
/* Result = 129 */ 

/* ==========================================================  
 What is the maximum number found in  visit_occurence_id column   */ 
SELECT max(visit_occurrence_id)
  from `mimic3_demo_omop.visit_occurrence` ;  
/* Result = 129 */ 

/* ==========================================================  
 How many Unique HADAM_ID we have in MIMIC ADMISSIONS  */ 
 SELECT count(*) 
  FROM (SELECT HADM_ID
  FROM `mimic3_demo.ADMISSIONS` 
  GROUP BY HADM_ID) ;
/* Also Result = 129 
Then we have to generate a new column corresponding to visit_orrurence_id 
that start from index 130 until 130+129= 259 
*/ 


SELECT hadm_id as condition_occurrence,    /* I choose to tranfer the ids from hadme_id to condition_occurrence, no conflict exists  */
      person_id, 
      concept_id as condition_concept_id, 
      condition_start_date, 
      condition_start_datetime, 
      condition_end_date,
      condition_end_datetime,
      visit_occurrence_id, 
      ICD9_code as condition_source_value
      
FROM 
( SELECT  *    
from ( WITH subtable_mimic AS (
              SELECT  * , TIMESTAMP(ADMITTIME) tsadmit, TIMESTAMP(DISCHTIME) tsdish
              FROM `mimic3_demo.ADMISSIONS` 
              LEFT JOIN  (SELECT  HADM_ID, ICD9_CODE                                             /*add the ICD_code 9 to the table from mimic */
                     FROM `mimic3_demo.ADMISSIONS` 
                     LEFT JOIN `mimic3_demo.DIAGNOSES_ICD` using( HADM_ID ) )  using(HADM_ID)
                        ), 
      
/* This is a subquery that returns a table of concept_id and transformed ICD9_code from OMOP (decimal point was removed from 
the ICD9 code to harmonize the foreign key with MIMIC)  */ 
      subtable_concept AS (SELECT concept_id, regexp_replace(concept_code, '[^a-zA-Z0-9]', '') ICD9_code
                           FROM  `mimic3_demo_omop.concept`  
                           WHERE vocabulary_id like "ICD9CM"  ),
                           
/* this block serves to create a unique identifier visit_occurrence_id */
  subtable_VOI AS (
     SELECT *
     FROM ( SELECT *, ROW_NUMBER() OVER() AS idNum 
            FROM (SELECT HADM_ID 
                  FROM `mimic3_demo.ADMISSIONS` 
                  GROUP BY HADM_ID )   ) 
            LEFT JOIN ( SELECT visit_occurrence_id,  ROW_NUMBER() OVER() AS idNum 
                    FROM UNNEST(GENERATE_ARRAY(130, 259)) AS visit_occurrence_id ) using(idNum)   
                    )

select * 
FROM (select SUBJECT_ID person_id, 
       HADM_ID,
       hadm_id condition_occurrence_id,
       admission_type , 
       admittime condition_start_datetime, 
       dischtime condition_end_datetime, 
       ICD9_code,        /* this will become condition_source_value */ 
       DATE(tsadmit) condition_start_date, 
       DATE(tsdish  ) condition_end_date,
from subtable_mimic
)
LEFT JOIN subtable_concept using(ICD9_code) 
LEFT JOIN subtable_VOI using(HADM_ID) 
) )


