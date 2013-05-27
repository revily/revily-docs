---
layout: default
title: API - Policies
permalink: /docs/api/policies/
---

## Policies

<section id="#policies-index" class="doc-section row-fluid">

## Attributes

{% param name string "The human name used to identify a policy" "Operations" %}
{% param escalation_loop_limit integer required "The number of times a policy will loop through its rules when notifying about a triggered incident" "3" %}
{% param acknowledge_timeout integer optional "The number in minutes before an acknowledged incident will re-trigger" "30" %}
{% param description string "A more thorough definition of the issue, used in email notification" "The load average on host.example.com is over 9000!" %}

## List all policies

```
GET /policies
```

### Request

```bash
$ curl {{ site.api_url }}/policies \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id":"jxG5heSY",
    "name":"Operations",
    "_links":{
      "self":{
        "href":"/policies/jxG5heSY"
      },
      "rules":{
        "href":"/policies/jxG5heSY/rules"
      }
    }
  },
  {
    "id":"otZgRHS2",
    "name":"Developers",
    "_links":{
      "self":{
        "href":"/policies/otZgRHS2"
      },
      "rules":{
        "href":"/policies/otZgRHS2/rules"
      }
    }
  }
]
```
</section>

<section id="policies-show" class="doc-section row-fluid">
## Retrieve an policy

```
GET /policies/:id
```

### Request

```bash
$ curl {{ site.api_url }}/policies/jxG5heSY \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id":"jxG5heSY",
  "name":"Operations",
  "_links":{
    "self":{
      "href":"/policies/jxG5heSY"
    },
    "rules":{
      "href":"/policies/jxG5heSY/rules"
    }
  }
}
```
</section>

<section id="policies-create" class="doc-section row-fluid">
## Create a policy

```
POST /policies
```

### Parameters

* **name** _required_
* **escalation_loop_limit** _required_
* **acknowledge_timeout** _optional, default: 30_
* **auto_resolve_timeout** _optional, default: 240_

### Request

```bash
$ curl {{ site.api_url }}/services/KHMFftSu/policies \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"' \
    -d 'name=Operations' \
    -d 'escalation_loop_limit=3' \
    -d 'acknowledge_timeout=30'
    -d 'auto_resolve_timeout=60'
```

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id":"jxG5heSY",
  "name":"Operations",
  "_links":{
    "self":{
      "href":"/policies/jxG5heSY"
    },
    "rules":{
      "href":"/policies/jxG5heSY/rules"
    }
  }
}
```
</section>

<section id="policies-acknowledge" class="doc-section row-fluid">
## Acknowledge an policy

```
PUT /policies/:id/acknowledge
```

### Request

```bash
$ curl {{ site.api_url }}/policies/jxG5heSY \
    -X PUT \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"' \
    -d 'name=DevOps'
```

### Response

```http
HTTP/1.1 204 No Content

```
</section>

<section id="policies-delete" class="doc-section row-fluid">
## Delete an policy

```
DELETE /policies/:id
```

### Request

```bash
$ curl {{ site.api_url }}/policies/jxG5heSY \
    -X DELETE \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 204 No Content

```
</section>
