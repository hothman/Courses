# Introduction to databases

A spreedsheet does not work well with multiple evens

Variables are stored in columns

records are stored in rows 



```sql
SELECT distinct gender FROM `mimic3_demo.PATIENTS` 

/* matching to a regexp */ 
SELECT LONG_TITLE FROM mimic3_demo.D_ICD_DIAGNOSES 
  WHERE lower(LONG_TITLE) like "%diabetes%"
  GROUP BY LONG_TITLE
  
/* count distinc entries*/   
SELECT count(distinct SUBJECT_ID) FROM mimic3_demo.ADMISSIONS

/* Join in google big query */
SELECT * except(ROW_ID) FROM mimic3_demo.PATIENTS a
    INNER JOIN mimic3_demo.ADMISSIONS b using(SUBJECT_ID)
    
/* including raw iD */ 
SELECT a.ROW_ID, * except(ROW_ID)
FROM `mimic3_demo.DIAGNOSES_ICD` a
INNER JOIN `mimic3_demo.D_ICD_DIAGNOSES` b using( ICD9_CODE )

/*  using nested query*/
SELECT * FROM mimic3_demo.PATIENTS 
  WHERE SUBJECT_ID in 
        (SELECT SUBJECT_ID FROM mimic3_demo.INPUTEVENTS_CV GROUP BY SUBJECT_ID)

```

