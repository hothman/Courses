# Introduction to clinical data

**EHR**: medical records, radiology images, lab assays, ensures information, DNA sequence ...

**EMR** contains imited information 



Records are made to save: 

* Patient care details: Diagnosos, Medications, Allergies, Laboratory Tests, Radiology images, Provider notes.
* Billing record: What was performed, by whom, for what purpose
* Legal record: who recorded data, who saw what when, audit log 

For clinical data we need to know 4 information (4W's): 

* Who recorded the information
* When the information is recorded
* Why did they record the information
* What did they record

## Encounters 

**Outpatient encounter** ones when you are not admtted to a hospital, short time. Generate a single note to record what happened during the visit. outpatient surgeries may contain more note

**Inpatient encounter** Patient is admitted in a hospital for a ling time Days/Weeks/years. IE is defined by the *the admission time* and a *discharge time*. It contains many unstructered notes provided by many persons and produce more data.



**Phone or Electronic visits** They are considered as similar to outpatient encounter.

**Phone or Electronic messages**



## Billing data

**Procedure codes** : what the provider did. Current procedural terminology (CPT) are the most common procedure codes. CPT is a list thousands of medical, radiologic, surgical and laboratory services. Each service is represented by a 5 digit code. The complete list of codes is developed and owned by the American Medical Association. 

**Diagnosis Codes** :  They are recorded using ICD (International Classification of Disease) codes. There are two types ICD9-CM (1970-2015), ICD10-CM (2015-Present).

ICD9-CM (>14,000):    XXX . XX

​					category(digits) . Adiitional specificity(digits)

ICD10-CM: alpha numeric (70,000):       XXX . XXXX

​													category(alpha numeric). Adiitional specificity(alpha numeric)

 					

W59.22XA : strack by turtle

Medical coders

The usage of codes aims to get the maximum appropriate reinbusment for the level of healthcare provided.  



## Laboratory data

are broken in 2 categories: 

**Anatomic Pathology**: reports are un-strcutured or semi-structured

**Clinical Pathology**: Numeric or binary, Structured 

Laboratory data involves many people

​	1- Order of the Lab test: W1(healthcare provider), W2 (when they need more information to assess their patients), W3(specific question in mind and for screening).

​	2- Laboratory sample collection: W1(Lab technician), 

​	3- Analysing the sample: W1(Pathologists and lab staff), W2(either "in-house" or "sent-out"). Data are stored in Laboratory Information Management System (LIMS). 

​	4- Laboratory test resulting



## Medication record 

medication could be a prescription, record of the pharmacy dispensing or filling a drug prescription. 

* Prescription: written by a physician, practice providers or pharmacists.
* A prescription may be dispensed by a pharmacist or given as administrations in hospitals
* drug prescription mention the drug, the dose, and the duration
*  **dispensing records**: pharmacy, **administration record** in hospital
* administration record are typically performed and recorded by nursing staff



all the three types of medication record will describe: 

* the strength of the drug 
* the form of the drug 
* Route 
* Dose
* Frequency (PRN drugs does not require frequency specification )
* Duration 

## Clinical observations 

Clinical observations are measurements about a patient  recorded during an office visit or hospital stay, for example, height and weight.

They are often structured



## Demographics, Social and family history

like Age, Gender, Race & ethnicity 

Social history: life (occupation, marital status) and lifestyle(Tobacco, Alcohol ...)

Family history: useful to detect diseases of increased genetic risk. 



