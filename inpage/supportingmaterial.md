---
layout: page
title: SupportingMaterial
parent: In page markup
---

# SupportingMaterial

- type: http://oerschema.org/SupportingMaterial & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: None
- childOf: None

Material that teaches the learning objectives of the course.

Examples:

- blackline masters
- Embedded apps / interactive elements such as in the Squares and Rectangles activity of the lesson [Using Diagrams to represent addition and subtraction](https://im.openupresources.org/6/students/5/2.html#activity-2) (IM / OUR)

## Properties

{% include props.md schematype="supportingmaterial" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="supportingmaterial" %}

## Examples

- JSON-LD

```json
{  
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@type": ["oer:SupportingMaterial","MediaObject"],
  "name": "GeoGebra Applet FXEZD466",
  "url": "https://im.openupresources.org/6/students/5/2.html#geogebra-wrapper-FXEZD466-1495720696216",  
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "IM resource identifier",
    "value": "FXEZD466"
  },
  "encodingFormat":  "text/javascript",
  "learningResourceType": ["SupportingMaterial","Interactive applet"],
  "audience": {
    "@type": "EducationalAudience",
    "educationalRole": "student"
  },
  "isPartOf":  {
    "@type": ["oer:Activity","CreativeWork"],
    "@id": "https://im.openupresources.org/6/students/5/2.html#activity-2",
    "name": "Squares and Rectangles"
  }
}
```
