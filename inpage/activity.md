---
layout: page
title: Activity
parent: In page markup
---

# Activity

- type: [http://oerschema.org/Activity](http://oerschema.org/Activity) & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - [http://oerschema.org/Task](http://oerschema.org/Task)
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) > [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [http://schema.org/Action](http://schema.org/Action)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `Assessment`

An Activity is a part of a Lesson. It may contain content for students, teachers, or both.

Order (within a Lesson) is important, so when activities are represented within a document for a lesson the structure should maintain the intended order. Otherwise see section on ordered aggregation in [structuring aggregations]({{ site.baseurl }}{% link manifest/structure.md %}).

The closest schema.org type to oer:Lesson is CreativeWork, of which it is a subtype, and so oer:Lesson inherits all properties of schema.org CreativeWork and may be used wherever the range of a property includes CreativeWork.

Examples:

- [A Tale of Two Triangles (Part 1)](https://im.openupresources.org/6/teachers/1/7.html#activity-2) (IM)
- [Fluency Practice](https://www.pilot.unbounded.org/downloads/4502/preview?slug_id=37486) (UnboundEd)

## Properties

{% include props.md schematype="activity" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="activity" %}

## Examples
See also examples for Assessment.

From https://pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1

**Note:**
    DRAFT EXAMPLE, needs checking & validating.

``` json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@type": ["oer:Activity", "CreativeWork"],
  "@id": "http://pilot.unbounded.org/materials/56",
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "56"
  },
  "name": "Homework",
  "learningResourceType": ["Activity","Student Handout"],
  "educationalUse": "Homework",
  "audience": {
    "@type": "EducationalAudience",
    "educationalRole": "student"
  },
  "isPartOf": {
    "@id": "http://pilot.unbounded.org/documents/25"
  }
}

```

Markup for [https://www.pilot.unbounded.org/downloads/4502/preview?slug_id=37486](https://www.pilot.unbounded.org/downloads/4502/preview?slug_id=37486)

- JSON-LD

```json
{"todo": true}
```
