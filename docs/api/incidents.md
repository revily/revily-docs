---
layout: default
title: API - Incidents
permalink: /docs/api/incidents/
---

## Incidents

### Attributes
<dl class="dl-horizontal">
  <dt>id</dt>
  <dd>
    <strong>string</strong> <em>or null</em>
    <p>blah blah blahblalhbl ksdfjkefj </p>
  </dd>
  <dt>message</dt>
  <dd>string</dd>
  <dt>description</dt>
  <dd>string</dd>
  <dt>details</dt>
  <dd>string</dd>
  <dt>state</dt>
  <dd>string</dd>
  <dt>key</dt>
  <dd>string</dd>

  <dt>current_user_id</dt>
  <dd>integer</dd>
  <dt>current_policy_rule_id</dt>
  <dd>integer</dd>
  <dd>integer</dd>
  <dt>service_id</dt>
  <dd>integer</dd>

  <dt>triggered_at</dt>
  <dd>timestamp</dd>
  <dt>acknowledged_at</dt>
  <dd>timestamp</dd>
  <dt>resolved_at</dt>
  <dd>timestamp</dd>
</dl>

<table class="table table-striped">
  <thead>
    <tr>
      <th>Attribute</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>id</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>message</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>description</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>details</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>state</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>key</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>current_user_id</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>current_policy_rule_id</td>
      <td><strong>integer</strong></td>
    </tr>
    <tr>
      <td>escalation_loop_count</td>
      <td><strong>integer</strong></td>
    </tr>
    <tr>
      <td>service_id</td>
      <td><strong>string</strong></td>
    </tr>
    <tr>
      <td>id</td>
      <td><strong>string</strong></td>
    </tr>
  </tbody>
</table>

##### GET /incidents

```json
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
