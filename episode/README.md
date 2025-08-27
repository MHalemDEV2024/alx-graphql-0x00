# Episode Query

This query fetches the details of a specific episode by its ID.

## Query File
- `episode-1.graphql`
```
{
  episode(id: 1) {
    id
    name
    air_date
    episode
  }
}
```

## Example Output


- `characters-page-1-output.json`
```
{
  "data": {
    "episode": {
      "id": "1",
      "name": "Pilot",
      "air_date": "December 2, 2013",
      "episode": "S01E01"
    }
  }
}
```