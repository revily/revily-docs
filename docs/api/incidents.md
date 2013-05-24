---
layout: default
title: API - Incidents
permalink: /docs/api/incidents/
---

<div id="#incidents-index">


### List incidents

{% action GET /incidents %}
{% action GET /services/:service_id/incidents %}

<div class="row-fluid">
  {% params %}
    {% param message string required "The content of the notification sent to the current user on-call" "load average alert on app1.example.com" %}
    {% param key string "A unique identifier for use with your monitoring service" "app1.example.com/load_average" %}
  {% endparams %}

  <article class="span6 dark data-block">
    <header>
      <h2>Response</h2>
    </header>
    <section>
{% highlight json %}
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
{% endhighlight %}
    </section>
  </article>
</div>
</div>

<section id="incidents-show">
### Get a single incident

    GET /incidents/:id

#### Response

```json
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
### Create an incident

    POST /services/:service_id/incidents

#### Request

* **message** (_Required_, **String**)
* **key** (_Optional_, **String**) A unique identifier for use with your monitoring service
* **description** (_Optional_, **String**) A long-form message about the incident

```json
{
  "message": "load average alert on host.example.com",
  "key": "host.example.com/load_average",
  "description": "The load average on host.example.com is over 9000!"
}
```

#### Response

```json
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

</div>
  </div>


