# Query Report


## Duplicate Diseases
- **Type**: qc
- **ID**: disease-name-duplicates

- **Database**: neo4j

- **Description**: Find diseases with the same name.

### Query:

```cypher
MATCH (n:`biolink:Disease`) WHERE n.name IS NOT NULL AND n.id IS NOT NULL WITH toLower(n.name) AS lower_name, COLLECT(n.id) AS ids WHERE SIZE(ids) > 1 RETURN lower_name AS Name, SIZE(ids) AS Count, apoc.text.join(ids, '|') AS IDs ORDER BY Count DESC, Name ASC

```


## Disease not subclass of Disease in MONDO
- **Type**: antipattern
- **ID**: disease-not-subclass-of-disease-in-mondo

- **Database**: neo4j

- **Description**: Find diseases which are not subsumed under MONDO:0000001

### Query:

```cypher
MATCH (d:`biolink:Disease`) WHERE NOT EXISTS {
    MATCH (d)-[:`biolink:subclass_of`]->(:`biolink:Disease` {id: "MONDO:0000001"})
} RETURN d

```


