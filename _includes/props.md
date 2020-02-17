| Property | Type | Description |
| ------- | -------- | --------- |
{% for property in site.data[include.schematype].properties %}| {{ property.name }} | {{ property.type }} | {{ property.description }} |
{% endfor %}

This description is available in [CSV format]({{ site.baseurl }}/csv/{{ include.schematype }}.csv).