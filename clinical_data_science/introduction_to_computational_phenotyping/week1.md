# Identifying patient Populations

A computaional phenotyping algorithm is an automated process to define a population of interest

To start a CP process, you have to determine 

​	1- Population of interst 

​	2- Inclusion and exclusion criteria

​	3- Provide a definition for the cases and controls

True cases can be identified based on different sources.  

 

## Manuel record review

In most cases of Computational Phenotyping, we validate the performance of the algorithm with a smaller subset of patients, say 1-200 records. Then once the algorithm has been validated, we can apply it to the total study population. This is the most important step in identifying patient population.

> A gold standard population is a set of records that you have manually  reviewed to determine the truth about whether they have the condition of interest. 

### Who will perform the review and which records will be reviewed

#### Who will perform the manual review

Determine the level of expertise:

* Simple: e.g verifying existing diagnosis: limited medical knowledge OK 
* Complex: identify new diagnosis: need advanced medical training 

#### How many people should review each records 

depends on the complexity of the cases. 

In case of disagreement you have the choice of using: 

1. joint review -> Consensus
2. Add 3rd reviewer as Tie-Breaker
3. Use "expert" reviewer's assignment 

#### Which records should be selected to be reviewed 

There is two methods: 

* **Gold-standard** Creating a gold standard population from a set of records: reviewing is made on all these documents or on a random subset of these documents. 
* **Iterative approach** The data scientists (1) create a prototype of the algorithm (2) randomly select case/control subset by the prototype (3) review the records to see how the algorithm performed (4) tune the algorithm until getting a satisfactory results (5) do the final assessment based on a validation review cohort to calculate performance. 



|          | gold standard                                                | iterative review                                             |
| -------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Benefits | convenient: all the review happens in one time               | longer review period You can test many algorithms efficiently |
| Drawback | easy to over fit: it could be avoided by separating the gold standard population into test/training | Biased performance at the iterative stages                   |

### Tools and techniques for manual reviewing

There are three main methods for performing  manual record review that you should be familiar with: 

* Creating a review instrument
* developing a review protocol
* assessing the quality of your manual review.

#### Creating the review instrument

This is the tool to use to record the manual review (e.g excel file).

recommendations for creating RI : 

1. write down all variables of importance then make them as survey questions
2. Review few records to see how well the questions perform in real life
3. refine and simplify instrument and then re-review  some other records
4. iterate 2 and 3 

Once the review instrument is complete:

* use a secure instrument like *electronic data capture tools* (REDcap).
* Use restrictive rule to avoid data mis-entering .

#### Developing a review protocol 

The review protocol describes how to perform manual review. 

* the RP is created in parallel with the review instrument. 
* it involve the entire review team (Questions, different opinions)
* Update during review

#### Assessing the quality 

determine the **Interrater Agreement**  (kappa statistics)
$$
\kappa = \frac{ObservedAgreement - ProbabilityOfAgreement}{1-ProbabilityofAgreement}
$$






