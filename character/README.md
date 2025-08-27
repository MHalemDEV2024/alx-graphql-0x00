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



# Characters List – Rick and Morty GraphQL API

This task demonstrates how to fetch a paginated list of characters using the `characters(page: Int)` field.

## Queries
- `characters-page-1.graphql` → List of characters, page 1
- `characters-page-2.graphql` → List of characters, page 2
- `characters-page-3.graphql` → List of characters, page 3
- `characters-page-4.graphql` → List of characters, page 4

## Fields Retrieved
- `id`
- `name`
- `status`
- `image`

## Example Query
```graphql
query {
  characters(page: 1) {
    results {
      id
      name
      status
      image
    }
  }
}