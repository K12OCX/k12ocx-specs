---
layout: page
title: Assessment
parent: In page markup
---

# Assessment

- type: [http://oerschema.org/Assessment](http://oerschema.org/Assessment) & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) > [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [http://schema.org/Action](http://schema.org/Action)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: none
- childOf: `Activity`

An assessment of a student's activity.

The closest schema.org type to oer:Assessment is CreativeWork, of which it is a subtype, and so oer:Assessment inherits all properties of schema.org CreativeWork and may be used wherever the range of a property includes CreativeWork.

## Properties

{% include props.md schematype="assessment" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="assessment" %}

## Examples

Taken from [https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8](https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8)
``` json
{  
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@type": ["oer:Assessment","CreativeWork"],
  "@id": "http://pilot.unbounded.org/materials/652#A",
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "652"
  },
  "name": "Mid-Unit 2 Assessment: Analyzing Structure and Theme in Stanza 4 of “If” and Bud, Not Buddy",
  "educationalUse": "Interim assessment",
  "audience": {
    "@type": "EducationalAudience",
    "educationalRole": "student"
  },
  "encoding": [{
    "@type": "MediaObject",
    "url": "https://drive.google.com/open?id=1VPFJFcgMMdMhc_hHmxRCVJN4BKZnWfEussOo9fFUl_4",
    "encodingFormat":  "application/vnd.google-apps.document"      
  }, {
    "@type": "MediaObject",
    "url": "https://ubpilot-uploads.s3.amazonaws.com/documents/227/ELA-G6-M1-U2-L8-Assess-Mid-Unit%202%20Assessment_v791992.pdf",
    "encodingFormat":  "application/pdf"
  }],
  "material" : [{
    "@type": ["oer:SupportingMaterial","CreativeWork"],
    "@id": "http://pilot.unbounded.org/materials/653#A",
    "name": "Assessment Text: “If” by Rudyard Kipling"
  }],
  "isPartOf": {
    "@type": "http://oerschema.org/SupportingMaterial",
    "@id": "http://pilot.unbounded.org/documents/227#A"
    }
}
```
