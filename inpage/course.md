---
layout: page
title: Course
parent: In page markup
---

# Course

- type: [http://oerschema.org/Course](http://oerschema.org/Course) & [http://schema.org/Course](http://schema.org/Course)
- extends:
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing)  &  [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `oer:Module`
- childOf: `oer:Resource`

**Note:**
    We treat the OER Schema course to be equivalent to [schema.org/Course](https://schema.org/Course) so that properties for scheme.org/Course may be used with it. (This exploits the flexibility of schema.org/domainIncludes used in defining schema.org properties.)

This represents the entire course. A Course includes one or more modules.

The entire course could contain materials for multiple audiences (students, teachers, families).

A Course is intended to provide complete curriculum for an academic term. In K-12, the most common term is the full school year. But, this wouldn’t preclude a semester (half year) long course or trimester (⅓ of a year) long course, or courses that span several grade levels either. It does imply, however, that the course includes multiple instructional units. The schema.org definition of a course is "a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners".

Examples:

- [Grade 6 Math](https://im.openupresources.org/6/teachers/index.html) (IM)
- Algebra 1 (IM)
- [Grade 4 Mathematics](https://www.pilot.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4&e=1) (UnboundEd)
- Grade 3 ALL Block (EL)
- Grade 1 Language Arts (EL)
- Kindergarten Skills Block (EL)


## Properties
Any property from [schema.org:Course](https://schema.org/Course) or [oerschema:Course](http://oerschema.org/Course/) may be used, including those inherited from their parent types. The Creative Commons license vocabulary is used for IPR related information.

If properties with similar meaning are available from both schema.org and OER schema, then the property from schema.org should be used in preference (see non-preferred properties, below).

The table below selectively lists those properties that are most relevant to OCX.

**Note**
    Descriptions of some properties have been tweaked to make them more appropriate for describing courses.

{% include props.md schematype="course" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="course" %}

## Example

Markup for [https://pilot.unbounded.org/math/grade-4](https://pilot.unbounded.org/math/grade-4):

- JSON-LD.

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the course.

**Note**
    The URIs used for the `@id`s are based on the URLs of the page that represent the course being described and its modules with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring]({{ site.baseurl }}{% link manifest/structure.md %}). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model]({{ site.baseurl }}{% link contentmodel.md %}).

**Note**
    In the case where the content of a course is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

```json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@id": "http://pilot.unbounded.org/math/grade-4#A",
  "@type": "Course",
  "name": "Grade 4 Mathematics",
  "description": "Students explore operations and algebraic thinking, number and operations in base ten and fractions.",
  "publisher": {
    "@type": "http://schema.org/Organization",
    "name": "UnboundEd",
    "email": "supportdesk@unbounded.org",
    "url": "http://pilot.unbounded.org/about"
  },
  "url": "http://pilot.unbounded.org/math/grade-4",
  "sameAs": [
    "http://pilot.unbounded.org/resources/5150", "https://www.engageny.org/resource/grade-4-mathematics"
  ],
  "courseCode": ["5150", "math/grade-4"],
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "Unbounded resource identifier",
    "value": "5150"
  },
  "timeRequired": "PT200H",
  "educationalAlignment": {
    "@type": "AlignmentObject",
    "alignmentType": "educationalLevel",
    "educationalFramework":"US Grade Levels",
    "targetName": "grade 4"
  },
  "hasPart": [
    {
      "@type": ["oer:Module","Course"],
      "@id": "http://pilot.unbounded.org/math/grade-4/module-1#A",
      "name": "Place Value, Rounding, and Algorithms for Addition and Subtraction"
    }, {
      "@type": ["oer:Module","Course"],
      "@id": "http://pilot.unbounded.org/math/grade-4/module-2#A",
      "name": "Unit Conversions and Problem Solving with Metric Measurement"
    }, {
      "@type": ["oer:Module","Course"],
      "@id": "http://pilot.unbounded.org/math/grade-4/module-3#A",
      "name": "Multi-Digit Multiplication And Division"
    }, {
      "@type": ["oer:Module","Course"],
      "@id": "http://pilot.unbounded.org/math/grade-4/module-4#A",
      "name": "Fraction Equivalence, Ordering, and Operations"
    }
  ],
  "oer:forTopic": {
    "@type": ["oer:Topic","Intangible"],
    "@id": "http://pilot.unbounded.org/math",
    "name": "Mathematics"
  },
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "Copyright © 2015 Great Minds."
}
```
