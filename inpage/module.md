---
layout: page
title: Module
parent: In page markup
---

# Module

- type: [http://oerschema.org/Module/](http://oerschema.org/Module/) & [http://schema.org/Course](http://schema.org/Course)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource/](http://oerschema.org/Resource/)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) & [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `oer:Unit`, `oer:Lesson`
- childOf: `oer:Course`

An instructional Module is a grouping of units and/or lessons on a similar topic (e.g., “Area and Surface Area”).

Typically, a Module represents two to six weeks of instructional content.

oer:Module meets the definition of schema.org/Course, i.e. it is "a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners". This means that resources that are modules should be typed as oer:Module and schema.org/Course. The schema.org learningResourceType property with a value of "Module" should be used to indicate the type of course to systems that understand schema.org but not the OER Schema terms used by OCX.

Examples:

- [Area and Surface Area](https://im.openupresources.org/6/teachers/1.html) (IM)
- [Place Value, Rounding, And Algorithms For Addition And Subtraction](https://pilot.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4/module-1&e=1) (UnboundEd)
- Module 1 (EL)

## Properties
Any property from [schema.org/Course](https://schema.org/Course) or [oerschema:Module](http://oerschema.org/Module/) may be used, including those inherited from their parent types. The Creative Commons license vocabulary is used for IPR related information.

If properties with similar meaning are available from both schema.org and OER schema, then the property from schema.org should be used in preference (see non-preferred properties, below).

The table below selectively lists those properties that are most relevant to OCX.

**Note**
     Descriptions of some properties have been tweaked to make them more appropriate for describing modules.

{% include props.md schematype="module" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="module" %}

## Example

Markup for [https://pilot.unbounded.org/math/grade-4/module-1](https://pilot.unbounded.org/math/grade-4/module-1):

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the module.

**Note**
     The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring]({{ site.baseurl }}{% link manifest/structure.md %}). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model]({{ site.baseurl }}{% link contentmodel.md %}).

**Note**
    In the case where the content of a module is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.


```json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@id": "http://pilot.unbounded.org/math/grade-4/module-1#A",
  "@type": ["oer:Module", "Course"],
  "learningResourceType": "Module",
  "name": "Place Value, Rounding, and Algorithms for Addition and Subtraction",
  "description": "Students progress toward adding and subtracting multi-digit whole numbers using the standard algorithm.",
  "schema:keywords": "number & operations in base 10,operations & algebraic thinking",
  "sameAs": [
    "http://pilot.unbounded.org/resources/934", "https://www.engageny.org/resource/grade-4-mathematics-module-1"
  ],
  "url": "http://pilot.unbounded.org/math/grade-4/module-1",
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "934"
  },
  "dateCreated": "2015-10-23T01:11:29.326Z",
  "dateModified": "2017-08-25T11:29:22.859Z",
  "timeRequired": "PT4H",
  "publisher": {
    "@type": "http://schema.org/Organization",
    "name": "UnboundEd",
    "email": "supportdesk@unbounded.org",
    "url": "http://pilot.unbounded.org/about"
  },
  "schema:inLanguage": "en-US",
  "schema:educationalAlignment": [{
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "ccss.math.content.4.nbt.a.1",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "ccss.math.content.4.nbt.a.2",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "ccss.math.content.4.nbt.a.3",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "ccss.math.content.4.nbt.b.4",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "ccss.math.content.4.oa.a.3",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetName": "math-4-cg",
    "educationFramework": "UnboundedStandard"
  }],
  "hasPart": [{
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-a#A",
    "name": "Place Value of Multi-digit Whole Numbers"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-b#A",
    "name": "Comparing Multi-Digit Whole Numbers"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-c#A",
    "name": "Rounding Multi-Digit Whole Numbers"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/documents/94",
    "name": "Unit 1 Mid-Unit Assessment Task: Topics A-C"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-d#A",
    "name": "Multi-Digit Whole Number Addition"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-e#A",
    "name": "Multi-Digit Whole Number Subtraction"
  }, {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-f#A",
    "name": "Addition and Subtraction Word Problems"
  }, {
    "@type": "oer:Assessment",
    "@id": "http://pilot.unbounded.org/documents/95#A",
    "name": "Unit 1 End-of-Unit Assessment Task: Topics A-F"
  }],
  "isPartOf": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/math/grade-4#A",
    "name": "Grade 4 Mathematics"
  },
  "oer:forTopic": {
    "@type": ["oer:Topic","Intangible"],
    "@id": "http://pilot.unbounded.org/math",
    "name": "Mathematics"
  }
}
```
