---
layout: page
title: Lesson
parent: In page markup
---

# Lesson

- type: [http://oerschema.org/Lesson/](http://oerschema.org/Lesson/)  & [http://schema.org/Course](http://schema.org/Course)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource/](http://oerschema.org/Resource/)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) & [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- childOf: `oer:Module` or `oer:Unit`
- parentOf: `oer:Activity`

A Lesson contains instructional content intended to be completed in a single day and/or class period. A middle or high school lesson might be intended for a 50 minute period (unless it was a designed for a block schedule). An elementary school lesson might be design for however much time the teacher generally allots to the subject (e.g., reading/writing might have more time allotted than science or art).

A lesson contains one or more Activities.

In many cases, the curriculum will describe a specific order that the Activities in a Lesson should go.

oer:Lesson meets the definition of schema.org/Course, i.e. it is "a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners". This means that resources that are lessons should be typed as oer:lesson and schema.org/Course. The schema.org learningResourceType property with a value of "lesson" should be used to indicate the type of course to systems that understand schema.org but not the OER Schema terms used by OCX.

!!! Note "Editor's Note"
    I know that lesson as a Course seems odd. If we find we don't need scheme.org's courseCode or coursePrerequisites properties we can just call a lesson a creative work.

Examples:

- [From Parallelograms to Triangles](https://im.openupresources.org/6/teachers/1/7.html) (IM)
- [Interpret A Multiplication Equation As A Comparison](https://www.pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1) (UnboundEd)

## Properties

{% include props.md schematype="lesson" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="lesson" %}

## Example

Markup for [https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8](https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8)

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the lesson.

!!! note
    The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring]({{ site.baseurl }}{% link manifest/structure.md %}). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model]({{ site.baseurl }}{% link contentmodel.md %}).

!!!note
    In the case where the content of a unit is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

!!! note "Editor's Note"
    Several parts of the original are omitted in the example in order to avoid repetition.

!!! note
    Some of the parts are documents in a choice of digital format (encoding). If the HTML page for the Lesson is the only HTML page containing information about these documents then it is necessary to provide a full description of those documents in this page and their encodings. An example of such as description is provided under [Properties of SupportingMaterial]({{ site.baseurl }}{% link inpage/supportingmaterial.md %}).

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
  "@id": "http://pilot.unbounded.org/documents/227#A",
  "@type": ["oer:Lesson","Course"],
  "learningResourceType": "Lesson",
  "name": "Mid-Unit Assessment: Structure and Theme",
  "description": "This lesson asks students to review their understanding of structure, determining unfamiliar vocabulary and theme. The second part of the lesson asks students to complete the mid-unit assessment using the final stanza of the “If” poem. The purpose of the lesson is to assess students’ mastery of structure and theme. Students will be asked a series of short constructed-response questions about figurative language and word choice. ",
  "keywords": "historical fiction,novel,poem",
  "learningTime": "PT90M",
  "sameAs": "http://pilot.unbounded.org/resources/8666",
  "url": "http://pilot.unbounded.org/documents/227",
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "8666"
  },
  "dateCreated": "2017-06-14T17:26:37.919Z",
  "dateModified": "2017-08-14T22:44:01.334Z",
  "author": {
    "@type": "Person",
    "name": "Christopher Paul Curtis"
  },
  "publisher": {
    "@type": "Organization",
    "name": "UnboundEd",
    "email": "supportdesk@unbounded.org",
    "url": "http://pilot.unbounded.org/about"
  },
  "inLanguage": "en-US",
  "educationalAlignment": [{
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetUrl": "http://www.corestandards.org/ELA-Literacy/RL/6/5",
    "targetName": "RL.6.5",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetUrl": "http://www.corestandards.org/ELA-Literacy/RL/6/7",
    "targetName": "RL.6.7",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetUrl": "http://www.corestandards.org/ELA-Literacy/RL/6/9",
    "targetName": "RL.6.9",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "AlignmentObject",
    "alignmentType": "teaches",
    "targetUrl": "http://www.corestandards.org/ELA-Literacy/L/6/5",
    "targetName": "L.6.5",
    "educationFramework": "CommonCoreStandard"
  }],
  "isPartOf": {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/ela/grade-6/module-1/unit-2#A",
    "name": "Analyzing Structure and Communicating Theme in Literature"
  },
  "oer:forTopic": {
    "@type": "oer:Topic",
    "@id": "http://pilot.unbounded.org/ela",
    "name": "ELA"
  },
  "ocx:material":[{
    "@type": ["ocx:ReferencedMaterial","DigitalDocument"],
    "@id": "http://pilot.unbounded.org/materials/653",
    "name": "Assessment Text: “If” by Rudyard Kipling",
    "alternateName": "ELA-G6-M1-U2-L8-SH-Assessment Text"
  }, {
    "@type": ["ocx:ReferencedMaterial","DigitalDocument"],
    "@id": "http://pilot.unbounded.org/materials/648",
    "name": "Model literary argument essay: “Steve Jobs’ Rules to Live By”",
    "alternateName": "ELA-G6-M1-U2-L8-SH-Model literary argument"
  }],
  "hasPart": [{
    "@type": ["oer:Assessment","DigitalDocument"],
    "@id": "http://pilot.unbounded.org/materials/652",
    "name": "Mid-Unit 2 Assessment: Analyzing Structure and Theme in Stanza 4 of “If” and Bud, Not Buddy",
    "alternateName": "ELA-G6-M1-U2-L8-Assess-Mid-Unit 2 Assessment"
  }, {
    "@type": ["oer:Assessment","DigitalDocument"],
    "name": "End of Unit 2 Assessment Prompt: How Does Bud Use His Rules—To Survive or To Thrive? Argument Essay",
    "alternateName": "ELA-G6-M1-U2-L8-SH-End of Unit 2"
  }],
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "This work is based on an original work of EL Education unless otherwise indicated, made available through licensing under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. This does not in any way imply that EL Education endorses this work."
}
```


____

Markup for [https://pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1](https://pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1)

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
  "@id": "http://pilot.unbounded.org/resources/2116",
  "@type": ["oer:Lesson","Course"],
  "learningResourceType": "Lesson",
  "name": "Grade 4 Mathematics Module 1, Topic A, Lesson 1",
  "description": "Objective:  Interpret a multiplication equation as a comparison.",
  "learningTime": "PT60M",
  "url":     "https://www.engageny.org/resource/grade-4-mathematics-module-1-topic-lesson-1" ,
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "2116"
  },
  "dateCreated": "2015-10-23T02:05:49.483Z",
  "dateModified": "2017-08-15T19:25:19.867Z",
  "publisher": {
    "@type": "Organization",
    "name": "UnboundEd",
    "email": "supportdesk@unbounded.org",
    "url": "http://pilot.unbounded.org/about",
  },
  "inLanguage": "en-US",
  "educationalAlignment": {
    "@type": "AlignmentObject",
    "targetName": "ccss.math.content.4.oa.a.1",
    "educationFramework": "CommonCoreStandard"
  },
  "isPartOf": {
    "@type": "oer:Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-a#A",
    "name": "Place Value of Multi-digit Whole Numbers",
  },
  "forCourse": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/math/grade-4",
    "name": "Grade 4 Mathematics",
    "alternateName": "math/grade-4",
    "identifier": 5150
  },
  "forTopic": {
    "@type": "oer:Topic",
    "@id": "http://pilot.unbounded.org/math",
    "name": "Mathematics"
  },
  "encoding": [
    {
      "@type": "DigitalDocument",
      "@id": "#4503",
      "name": "Grade 4 Mathematics Module 1, Topic A, Lesson 1 (pdf)",
      "url": "https://ubpilot-uploads.s3.amazonaws.com/attachments/4503/math-g4-m1-topic-a-lesson-1.pdf",
      "fileFormat": "application/pdf",
    },
    {
      "@type": ["DigitalDocument"],
      "@id": "#4502",
      "name": "Grade 4 Mathematics Module 1, Topic A, Lesson 1 (docx)",
      "url": "https://ubpilot-uploads.s3.amazonaws.com/attachments/4502/math-g4-m1-topic-a-lesson-1.docx",
      "fileFormat": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    }
  ],
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "This work is based on an original work of Great Minds and licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. UnboundEd is not affiliated with the copyright holder of this work."
}
```
