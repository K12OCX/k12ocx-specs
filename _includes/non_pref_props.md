| OER Schema Property | preferred schema.org equivalent |
| ------- | --------- |
{% for property in site.data[include.schematype].non_preferred_properties %}| {{ property.name }} | {{ property.preferred }} |
{% endfor %}