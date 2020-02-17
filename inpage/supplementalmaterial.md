---
layout: page
title: SupplementalMaterial
parent: In page markup
---

# SupplementalMaterial

- type: https://github.com/K12OCX/k12ocx-specs/SupportingMaterial & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - ocx:AssociatedMaterial
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)

Material associated with an instructional component that provides additional information about that component. While they are an integral part of many curricula, such materials are not required for the instructional content to be meaningful.

The ocx:material property is used to link an instructional component to SupplementalMaterial

Examples:

- Curriculum guides
- Family course guides
- Student study guides

## Properties

{% include props.md schematype="supplementalmaterial" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="supplementalmaterial" %}

## Examples

- JSON-LD

```json
{  
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "ocx": "https://github.com/K12OCX/k12ocx-specs/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@type": ["ocx:SupplementalMaterial","CreativeWork"],
  "description": "to do"
}
```
