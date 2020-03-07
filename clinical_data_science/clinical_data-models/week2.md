## MIMICIII

s illustrated in the previous slide, MIMIC does not attempt to harmonize similar data elements from different clinical systems, in this case CareVue versus MetaVision, as would a complete data warehouse

### Querying 

`SUBJECT_ID` always refers to a patient

`HADN_ID` always refers to an admission

`ICUSTAY_ID` always refers to an ICU episode



`D_XXX` are dictionary tables used to convert codes into human meaningful text



