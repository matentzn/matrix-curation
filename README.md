# MATRIX Curation

A repository to organise all data curation activities, from modelling sources, and the development of quality assurance strategies to the implementation of feedback on data quality issues.

## Library of Competency Queries / Questions

Here we collect a number of competency questions (CQs) and implement them as Cypher and SQL queries.

The CQs serve two purposes:
1. to ensure that we are collecting all the relevant information to model drug repurposing modes of discovery (DRMD). DRMDs describe how a drug repurposing was identified, e.g. through side effects, similar diseases etc.
2. to ensure a minimal quality standard in our raw data:
  1. Anti-pattern queries encode known quality issues as queries, and allow us to monitor these quality issues
  2. Competency questions allow us to monitor data we rely on for our modelling, for example by ensuring a the amount of available records does not vary in unexpected ways across versions.

## Minimal QA checklist for data submissions

We are developing a [minimal checklist](https://docs.google.com/document/d/1tZqtzaOvojMU883AITximNJ21K2ocDVQnyYdsgIgfkk/edit) for the deposition of source data for the Matrix KG.

The goal of this checklist is to define a minimal quality standard for KG sources, delivered in the form of a minimal checklist of criteria which all participating KG components must comply to. The idea is that the product owners of the various KG components, be they partner organisations or internal, are responsible for delivering their components adhering to the checklist. It is important to understand that the goal of this checklist is not to exhaustively define the ideal set of metadata provided for every association type (which should be done in the context of Matrix KG schema development, see Matrix KG Schema), but to provide a minimal quality threshold to ensure seamless integration into the Matrix KG from a technical perspective. This means that we can expect Matrix ETL tools not to fail when loading a valid KG component file.

## Matrix KG Schema

TBD.
