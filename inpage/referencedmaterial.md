---
layout: page
title: ReferencedMaterial
parent: In page markup
---

# ReferencedMaterial

- type: https://github.com/K12OCX/k12ocx-specs/ReferencedMaterial & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - ocx:AssociatedMaterial
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)

Material associated with an instructional component that is referenced by that component. While they exist independently of the curriculum, such materials are  required for the instructional content to be meaningful.

The ocx:material property is used to link an instructional component to ReferencedMaterial

Examples:

- Primary sources analysed in activities or assessments
- Material studied in Courses
- Raw material used in activities or assessments

## Properties

{% include props.md schematype="referencedmaterial" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="referencedmaterial" %}

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
  "@type": ["ocx:ReferencedMaterial","CreativeWork"],
  "description": "to do"
}
```
