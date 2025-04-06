## Logging Filters in Google Cloud

### Basic Filters
Basic filters provide a straightforward way to search log entries within Google Cloud Logging. With basic filters, you can:

- Perform a **field search** against any field (except `timestamp`).
- Search for log entries containing specific values:
  - Find entries with `foo` in any field.
  - Find entries with either `foo` or `bar` in any field.
  - Find entries containing both `foo` and `bar` in any field.

> **Note**: Basic filters do **not** support wildcards, `timestamp` field searches, range operators, or Boolean operators.

### Advanced Filters
Advanced filters enable complex searches across a subset of logs in your project, supporting **Boolean operators** and **targeted queries**. With advanced filters, you can:

- Filter by **resource type** and **label types**.
- Use structured syntax for flexible and powerful querying.

#### Best Practices for Advanced Filters
1. **Avoid Substring Matches**: Instead of partial matches on service names or resource types, use exact values to improve search performance.
2. **Utilize Index Fields**: Specify exact values for fields such as log entry name, resource type, or resource labels for faster searches.
3. **Leverage Advanced Filter Syntax**: For more refined queries, apply advanced filter expressions directly to match specific log entries.

> Advanced filters provide more control and efficiency in querying, making it easier to identify specific log entries quickly within your project logs.
