<div id="incidents" class="doc-main">

# Incidents

<section id="incidents-index" class="doc-section row-fluid">

## Attributes

{% param message string required "The content of the notification sent to the current user on-call" "load average alert on app1.example.com" %}
{% param key string optional "A unique identifier for use with your monitoring service. If you don't provide a key, one will be generated for you. Use this key when triggering incidents via the Integration API to prevent duplicate incidents from being created (and subsequently, duplicate SMS/email/phone alerts)." "app1.example.com/load_average" %}
{% param description string "A more thorough definition of the issue, used in email notification" "The load average on host.example.com is over 9000!" %}

## List all incidents

```
GET /incidents
GET /services/:service_id/incidents
```

### Request

```bash
$ curl {{ site.api_url }}/incidents \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

```bash
$ curl {{ site.api_url }}/services/KHMFftSu/incidents \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id": "V4pe5NT2",
    "state": "triggered",
    "triggered_at": "2013-05-14T06:17:54Z",
    "acknowledged_at": null,
    "resolved_at": null,
    "message": "wat!",
    "description": null,
    "key": "94c92e22c4e1617d0db85500c1b1e386",
    "service_id": "KHMFftSu",
    "_links": {
      "self": {
        "href": "/incidents/V4pe5NT2"
      },
      "service": {
        "href": "/services/KHMFftSu"
      },
      "current_user": {
        "href": "/users/SiF6zYqI"
      },
      "current_policy_rule": {
        "href": "/policies/jxG5heSY/rules/HtUDpJHJ"
      }
    }
  }
]
```
</section>

<section id="incidents-show" class="doc-section row-fluid">
## Retrieve an incident

```
GET /incidents/:id
```

### Request

```bash
$ curl {{ site.api_url }}/incidents/V4pe5NT2 \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "V4pe5NT2",
  "state": "triggered",
  "triggered_at": "2013-05-14T06:17:54Z",
  "acknowledged_at": null,
  "resolved_at": null,
  "message": "wat!",
  "description": null,
  "key": "94c92e22c4e1617d0db85500c1b1e386",
  "service_id": "KHMFftSu",
  "_links": {
    "self": {
      "href": "/incidents/V4pe5NT2"
    },
    "service": {
      "href": "/services/KHMFftSu"
    },
    "current_user": {
      "href": "/users/SiF6zYqI"
    },
    "current_policy_rule": {
      "href": "/policies/jxG5heSY/rules/HtUDpJHJ"
    }
  }
}
```
</section>

<section id="incidents-create" class="doc-section row-fluid">
## Create an incident

```
POST /services/:service_id/incidents
```

### Parameters

* **message** _required_
* **key** _optional_
* **description** _optional_

### Request

```bash
$ curl {{ site.api_url }}/services/KHMFftSu/incidents \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"' \
    -d 'message=load average alert on host.example.com' \
    -d 'key=host.example.com/load_average' \
    -d 'description=The load average on host.example.com is over 9000!'
```

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "V4pe5NT2",
  "state": "triggered",
  "triggered_at": "2013-05-14T06:17:54Z",
  "acknowledged_at": null,
  "resolved_at": null,
  "message": "load average alert on host.example.com",
  "description": "The load average on host.example.com is over 9000!",
  "key": "host.example.com/load_average",
  "service_id": "KHMFftSu",
  "_links": {
    "self": {
      "href": "/incidents/V4pe5NT2"
    },
    "service": {
      "href": "/services/KHMFftSu"
    },
    "current_user": {
      "href": "/users/SiF6zYqI"
    },
    "current_policy_rule": {
      "href": "/policies/jxG5heSY/rules/HtUDpJHJ"
    }
  }
}
```
</section>

<section id="incidents-acknowledge" class="doc-section row-fluid">
## Acknowledge an incident

```
PUT /incidents/:id/acknowledge
```

### Request

```bash
$ curl {{ site.api_url }}/incidents/V4pe5NT2/acknowledge \
    -X PUT \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 204 No Content

```
</section>

<section id="incidents-resolve" class="doc-section row-fluid">
## Resolve an incident

```
PUT /incidents/:id/resolve
```

### Request

```bash
$ curl {{ site.api_url }}/incidents/V4pe5NT2/resolve \
    -X PUT \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 204 No Content

```
</section>

<section id="incidents-delete" class="doc-section row-fluid">
## Delete an incident

```
DELETE /incidents/:id
```

### Request

```bash
$ curl {{ site.api_url }}/incidents/V4pe5NT2 \
    -X DELETE \
    -H 'Authorization: Token token="dGpYyvbApYxXGAvPkQjt"'
```

### Response

```http
HTTP/1.1 204 No Content

```
</section>

</div>