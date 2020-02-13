---
layout: page
title: Unit
parent: In page markup
---

# Unit

- type: [http://oerschema.org/Unit/](http://oerschema.org/Unit/) & [http://schema.org/Course](http://schema.org/Course)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource/](http://oerschema.org/Resource/)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) & [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `oer:Lesson`
- childOf: `oer:Course`, `oer:Module`

A Unit is a grouping of lessons. Units typically include a smaller collection of Lessons than a Module would.

oer:Unit meets the definition of schema.org/Course, i.e. it is "a sequence of one or more educational events and/or creative works which aims to build knowledge, competence or ability of learners". This means that resources that are units should be typed as oer:Unit and schema.org/Course. The schema.org learningResourceType property with a value of "Unit" should be used to indicate the type of course to systems that understand schema.org but not the OER Schema terms used by OCX.

Examples:

- [Triangles](https://im.openupresources.org/6/teachers/1.html) (IM)
- [Place Value Of Multi-Digit Whole Numbers](https://pilot.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4/module-1/topic-a&e=1) (UnboundEd)
- Unit 1 (EL)

## Properties

{% include props.md schematype="unit" %}

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

{% include non_pref_props.md schematype="unit" %}

## Example

Markup for [https://pilot.unbounded.org/ela/grade-2/module-1/unit-6](https://pilot.unbounded.org/ela/grade-2/module-1/unit-6):

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the unit.

!!! note
     The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring]({{ site.baseurl }}{% link manifest/structure.md %}). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model]({{ site.baseurl }}{% link contentmodel.md %}).

!!! note
    In the case where the content of a unit is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

!!! note "Editor's Note"
    Several parts of the original are omitted in the example in order to avoid repetition.

!!! note
    Some of the parts are pdf documents (one is included in the example). If the HTML page for the Unit is the only HTML page containing information about these documents then it is necessary to provide a full description of those documents in this page. An example of such as description is provided under [Properties of SupportingMaterial]({{ site.baseurl }}{% link inpage/supportingmaterial.md %}).

```json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@id": "http://pilot.unbounded.org/ela/grade-2/module-1/unit-6#A",
  "@type": ["oer:Unit", "Course"],
  "learningResourceType": "Unit",
  "name": "Cycles in Nature",
  "description": "This domain will introduce your students to the many natural cycles that make life on Earth possible. Your students will increase their knowledge of cycles in nature by learning more about seasonal cycles, and by beginning their study of flowering plants and trees, and animal life cycles. Students will also learn about the effect seasonal changes have on plants and animals. In addition, throughout this domain, students will gain exposure to poems by renowned authors Emily Dickinson and Robert Louis Stevenson. These informational text will serve as a model to support students’ writing of their own informational paragraph about the life cycle of either a frog or a butterfly.\r\n\r\nFlip Book Download Here you will find the Flip Book for the entire unit.\r\n\r\nImage Cards Download Here you will find the Image Cards for the entire unit.\r\n\r\nTens and Student Performance Tasks Download This document describes how to use the Tens system to capture student performance assessment data. It includes a Tens Conversion Chart to convert a raw score into a Tens score and rubric for recording observational Tens scores. Also included is a blank Tens Recording Chart.\r\n\r\nStudent Writing Portfolios Download. This document describes how to use activities marked with a writing portfolio icon to monitor and assess students’ writing during the unit.\r\n",
  "url": "http://pilot.unbounded.org/ela/grade-2/module-1/unit-6",
  "sameAs": "http://pilot.unbounded.org/resources/8991",
  "identifier": {
    "@type": "PropertyValue",
    "propertyID": "UnboundEd resource identifier",
    "value": "8991"
  },
  "courseCode": "8991",
  "dateCreated": "2017-10-23T10:13:10.118Z",
  "dateModified": "2017-10-23T12:45:12.017Z",
  "publisher": {
    "@type": "http://schema.org/Organization",
    "name": "UnboundEd",
    "email": "supportdesk@unbounded.org",
    "url": "http://pilot.unbounded.org/about"
  },
  "inLanguage": "en-US",
  "hasPart": [{
    "@type": "oer:Lesson",
    "@id": "http://pilot.unbounded.org/documents/370#A",
    "name": "The Cycle of Daytime and Nighttime"
  }, {
    "@type": "oer:Lesson",
    "@id": "http://pilot.unbounded.org/documents/371#A",
    "name": "The Reasons for Seasons"
  }, {
    "@type": "oer:Lesson",
    "@id": "http://pilot.unbounded.org/documents/372#A",
    "name": "Four Seasons in One Year"
  }, {
    "@type": "oer:Lesson",
    "@id": "http://pilot.unbounded.org/documents/373#A",
    "name": "The Life Cycle of a Plant"
  }, {
    "@type": "oer:Assessment",
    "@id": "http://pilot.unbounded.org/documents/381#A",
    "name": "Domain Assessment"
  }, {
    "@type": "oer:Lesson",
    "@id": "http://pilot.unbounded.org/documents/382#A",
    "name": "Culminating Activities"
  },
  {
    "@type":["oer:SupportingMaterial","DigitalDocument"],
    "@id": "#SupportingMaterial29809",
    "name": "Module 1, Unit 6, Image Cards",
    "url": "https://ubpilot-uploads.s3.amazonaws.com/attachments/29809/Cycles_in_Nature_Image_Cards.pdf",
    "fileFormat": "application/pdf"
  }],
  "isPartOf": {
    "@type": "oer:Module",
    "@id": "http://pilot.unbounded.org/ela/grade-2/module-1#A",
    "name": "Listening and Learning"
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/ela",
    "name": "ELA"
  },
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "This work is based on an original work of the Core Knowledge® Foundation made available through licensing under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. This does not in any way imply that the Core Knowledge Foundation endorses this work."
}
```
