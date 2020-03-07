Data quality: 

* Data quality dimensions

* Data quality Measures: Qualitative or quantitative assessments that describe data quqlity dimensions: Summa

* Data quqlity rules

  

  which of the following statements are true: 

  * Data quality measures are grouped into data quality dimensions   (**True**)
  * A data quality measure may appear in multiple data quality dimensions  (**True**)
  * A data quality rule uses a data quality dimension to determine if a data quality measure is acceptable  
  * A data quality dimension determines if the ETL programming was done correctly  

  

**Intrinsic data quality**

**Fitness for use** 



By far missing data is the most common data quqlity issue

## Data profiling for data quality assessment

White rabbit tool: 

Data profiling tools provide insights into data quality by? 

* Revealing unusual distributions of data values  

* Revealing issues between two or more variables  

* Revealing errors in ETL mappings  



## data quality assessment using SQL 

SQL alone is not  often used for computing data quality measures. Some of the reasons for  not using SQL only are (all that apply):  

* SQL cannot perform the same range of computations as can a programming language  
* SQL is optimized for extracting data, not for computation  

Imagine a plot of of Length of Stay (in days) on the X-axis and the number of patients on the Y-axis. Imagine that there was a large spike in the plot at exactly 30 days. Which of the following could explain this finding (all that  apply):  



* The patient’s insurance only approves admissions in increments of 30 days  



## Callahan and Khare rules

* Prespicified  limits: 
  * warnings
  * red flags
  * hard stop rules
* Global rules: Intrinsic data quality 
  * High level overview
* Use case specific rules: fitness for use
  * very specific measures and rules 

Which of the following statements are true regarding data quality rules

* Rules provide insights into potential data quality issues  

We provided an  example of the distribution of data quality errors in a data network  across twelve ETL iterations. At every iteration, there were always a  non-zero number of data quality rules that were triggered. Which of the  following could explain this finding (all that apply):  

* More complex rules were added between ETL iterations that examined features of the data that were not previously checked  
* Updates to the source system database caused previously correct ETL code to break  
*   Changes to the ETL code had unintended side effects in other parts of the ETL processing  



## OHDSI Achilles and Acilles heel

