# Character Queries – Rick and Morty GraphQL API

This task demonstrates how to fetch a specific character by `id` using the Rick and Morty GraphQL API.

## Queries
- `character-id-1.graphql` → Rick Sanchez
- `character-id-2.graphql` → Morty Smith
- `character-id-3.graphql` → Summer Smith
- `character-id-4.graphql` → Beth Smith

## Fields Retrieved
- `id`
- `name`
- `status`
- `species`
- `type`
- `gender`

## Example Query
```graphql
query {
  character(id: 1) {
    id
    name
    status
    species
    type
    gender
  }
}
