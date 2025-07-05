# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Random partitioning sends observations randomly over available boats,
without checking the timestamp or content of the data.


## Partitioning by Hour

Partitioning by hour allows for efficient range-based queries on time,
since all data from a specific hour is stored together.


## Partitioning by Hash Value

Partitioning by hash value ensures that observations are evenly distributed across all boats,
regardless of what time they were collected.
