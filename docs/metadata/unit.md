# Unit

- type: [http://oerschema.org/Unit/](http://oerschema.org/Unit/)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource/](http://oerschema.org/Resource/)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `Lesson`, `Assessment` and `SupportingMaterial`
- childOf: `Course`

A Unit is a sub-group of lessons. Units typically include a smaller collection of Lessons than a Module would.

Examples:

- [Triangles](https://im.openupresources.org/6/teachers/1.html) (IM)
- [Place Value Of Multi-Digit Whole Numbers](https://www.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4/module-1/topic-a&e=1) (UnboundEd)
- Unit 1 (EL)

## Properties

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:LearningComponent**| -------------------- | -------------------- |
| forCourse | Course | The Course in which the resource is meant for. |
| forComponent | LearningComponent | Which LearningComponent the resource supports (inverse of hasComponent) |
| hasComponent | LearningComponent | Which LearningComponent the InstructionalPattern contains or is supported by (inverse of forComponent) |
| duration | Enumeration \| Number \| Text | The duration of the resource. |
| doTask | Task | Which tasks are to be completed for a LearningComponent |
| hasLearningObjective | LearningObjective | A LearningObjective gained as a result of an InstructionalPattern . |
| deliveryFormat | Format \| Text | The format used to deliver the resource. |
| **oer:Resource** | -------------------- | -------------------- |
| parentOf | Resource | A parent in relation to a child resource. |
| childOf | Resource | A child in relation to a parent resource. |
| forCourse | Course | The Course in which the resource is meant for. |
| mainContent | Text | The main content relating to the item. |
| forTopic| Topic | The Topic the resource is associated with. |
| **oer:Thing** | -------------------- | -------------------- |
| name | Text | The name of the item. |
| additionalType | URL | An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. |
| description | Text | A description of the item. |
| image | URL \| CreativeWork | An image of the item |
| mainEntityOfPage | URL \| CreativeWork | Indicates a page (or other CreativeWork) for which this thing is the main entity being described. |
| sameAs | URL | URL of a reference Web page that unambiguously indicates the item's identity. |
| uri | URL | URL of the item. |
| **schema:Thing** | -------------------- | -------------------- |
| schema:identifier | Text \|  URL \| schema:PropertyValue | Any kind of identifier (uuid, url, etc). |
| schema:url | URL | URL of the item. |
| schema:alternateName | Text | An alias for the item. |
| schema:potentialAction | schema:Acion | Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role. |
| **schema:CreativeWork** | -------------------- | _(below we show a few relevant CreativeWork properties. For the full properties table see [http://schema.org/CreativeWork](http://schema.org/CreativeWork) )_ |
| schema:about | schema:Thing | The subject matter of the content. |
| schema:headline | Text | Headline of the article. |
| schema:dateCreated | schema:Date | The date on which the resource was created. |
| schema:dateModified | schema:Date | The date on which the resource was updated. |
| schema:author | schema:Person | The individual credited with the creation of the resource. |
| schema:publisher | schema:Organization | he organization credited with publishing the resource. |
| schema:inLanguage | schema:Language | The primary language of the resource. |
| schema:educationalAlignment | schema.org/AlignmentObject | An alignment to an established educational framework. |
| schema:educationalUse | Text | The purpose of the work in the context of education. Ex: "assignment", "group work" |
| schema:typicalAgeRange | Text | The typical range of ages the content’s intended end user. Ex: "7-9", "18-" |
| schema:interactivityType | Text | The predominant mode of learning supported by the learning resource. Acceptable values are `active`, `expositive`, or `mixed`. |
| schema:learningResourceType | Text | The predominant type or kind characterizing the learning resource. Ex: "presentation", "handout" |
| schema:keywords | Text | Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas. |
| schema:position | Number | The position of an item in a series or sequence of items. |
| schema:text | Text | The textual content of this CreativeWork. |
| schema:thumbnailUrl | URL | A thumbnail image relevant to the Thing. |
| schema:video | schema:VideoObject | An embedded video object. |
| **cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |

## Samples

Markup for [https://www.unbounded.org/ela/grade-2/module-1/unit-6](https://www.unbounded.org/ela/grade-2/module-1/unit-6):

- JSON-LD

```json
{
  "@context": ["http://oerschema.org/", {
    "oer": "http://oerschema.org/",
    "schema": "http://schema.org/",
    "cc": "http://creativecommons.org/ns#"
  }],
  "@id": "http://unbounded.org/ela/grade-2/module-1/unit-6",
  "@type": "http://oerschema.org/Unit",
  "name": "Cycles in Nature",
  "description": "This domain will introduce your students to the many natural cycles that make life on Earth possible. Your students will increase their knowledge of cycles in nature by learning more about seasonal cycles, and by beginning their study of flowering plants and trees, and animal life cycles. Students will also learn about the effect seasonal changes have on plants and animals. In addition, throughout this domain, students will gain exposure to poems by renowned authors Emily Dickinson and Robert Louis Stevenson. These informational text will serve as a model to support students’ writing of their own informational paragraph about the life cycle of either a frog or a butterfly.\r\n\r\nFlip Book Download Here you will find the Flip Book for the entire unit.\r\n\r\nImage Cards Download Here you will find the Image Cards for the entire unit.\r\n\r\nTens and Student Performance Tasks Download This document describes how to use the Tens system to capture student performance assessment data. It includes a Tens Conversion Chart to convert a raw score into a Tens score and rubric for recording observational Tens scores. Also included is a blank Tens Recording Chart.\r\n\r\nStudent Writing Portfolios Download. This document describes how to use activities marked with a writing portfolio icon to monitor and assess students’ writing during the unit.\r\n",
  "sameAs": ["http://unbounded.org/resources/8991", "default"],
  "uri": "http://unbounded.org/ela/grade-2/module-1/unit-6",
  "schema:identifier": 8991,
  "schema:url": "http://unbounded.org/ela/grade-2/module-1/unit-6",
  "schema:alternateName": "unit 6",
  "schema:headline": "Students will learn about many natural cycles that make life on Earth possible.  Through these lessons, students will continue to practice their use of transition words (first, then, next, finally) as they build skills necessary to write in informational paragraph about the life cycle of a frog or butterfly.\r\n",
  "schema:dateCreated": "2017-10-23T10:13:10.118Z",
  "schema:dateModified": "2017-10-23T12:45:12.017Z",
  "schema:publisher": {
    "@type": "http://schema.org/Organization",
    "@id": "http://unbounded.org/about",
    "schema:name": "UnboundEd",
    "schema:email": "supportdesk@unbounded.org",
    "schema:url": "http://unbounded.org/about",
    "schema:description": "We are a team of former classroom teachers, curriculum writers, school leaders and education experts who have worked in the public, private and nonprofit sectors. We are dedicated to empowering teachers by providing free, high-quality standards-aligned resources for the classroom, the opportunity for immersive training through our Institute, and the option of support through our website."
  },
  "schema:inLanguage": "en-US",
  "schema:position": 1000301060001,
  "schema:text": "<p>This domain will introduce your students to the many natural cycles that make life on Earth possible. Your students will increase their knowledge of cycles in nature by learning more about seasonal cycles, and by beginning their study of flowering plants and trees, and animal life cycles. Students will also learn about the effect seasonal changes have on plants and animals. In addition, throughout this domain, students will gain exposure to poems by renowned authors Emily Dickinson and Robert Louis Stevenson. These informational text will serve as a model to support students&rsquo; writing of their own informational paragraph about the life cycle of either a frog or a butterfly.</p>\r\n\r\n<p><strong>Flip Book Download</strong> Here you will find the Flip Book for the entire unit.</p>\r\n\r\n<p><strong>Image Cards Download</strong> Here you will find the Image Cards for the entire unit.</p>\r\n\r\n<p><strong>Tens and Student Performance Tasks Download</strong> This document describes how to use the Tens system to capture student performance assessment data. It includes a Tens Conversion Chart to convert a raw score into a Tens score and rubric for recording observational Tens scores. Also included is a blank Tens Recording Chart.</p>\r\n\r\n<p><meta charset=\"utf-8\"><strong>Student Writing Portfolios Download</strong>. This document describes how to use activities marked with a writing portfolio icon to monitor and assess students&rsquo; writing during the unit.</p>\r\n",
  "parentOf": [{
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/370",
    "name": "The Cycle of Daytime and Nighttime",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-1",
    "schema:identifier": 8992
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/371",
    "name": "The Reasons for Seasons",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-2",
    "schema:identifier": 8993
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/372",
    "name": "Four Seasons in One Year",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-3",
    "schema:identifier": 8994
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/373",
    "name": "The Life Cycle of a Plant",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-4",
    "schema:identifier": 8995
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/374",
    "name": "The Life Cycle of a Tree",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-5",
    "schema:identifier": 8996
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/375",
    "name": "Pausing Point",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-6",
    "schema:identifier": 8997
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/376",
    "name": "Which Came First, the Chicken or the Egg?",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-7",
    "schema:identifier": 8998
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/377",
    "name": "The Life Cycle of a Frog",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-8",
    "schema:identifier": 8999
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/378",
    "name": "The Life Cycle of a Butterfly",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-9",
    "schema:identifier": 9000
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/379",
    "name": "Unfinished Learning: Writing an Introductory Sentence of a Paragraph",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-10",
    "schema:identifier": 9001
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/380",
    "name": "Domain Review",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-11",
    "schema:identifier": 9002
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/381",
    "name": "Domain Assessment",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-12",
    "schema:identifier": 9003
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://unbounded.org/documents/382",
    "name": "Culminating Activities",
    "alternateName": "ela/grade-2/module-1/unit-6/lesson-13",
    "schema:identifier": 9004
  }],
  "childOf": {
    "@type": "http://oerschema.org/Module",
    "@id": "http://unbounded.org/ela/grade-2/module-1",
    "name": "Listening and Learning",
    "alternateName": "ela/grade-2/module-1",
    "schema:identifier": 640
  },
  "forCourse": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://unbounded.org/ela/grade-2",
    "name": "Grade 2 English Language Arts",
    "alternateName": "ela/grade-2",
    "schema:identifier": 5389
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://unbounded.org/ela",
    "name": "ELA"
  },
  "hasComponent": [{
    "@type": "http://oerschema.org/SupportingMaterial",
    "@id": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29808/G2_M1_U6_FB_COMPLETE.pdf",
    "forComponent": {
      "@id": "http://unbounded.org/ela/grade-2/module-1/unit-6"
    },
    "additionalType": "http://schema.org/DigitalDocument",
    "name": "Module 1, Unit 6, Flip Book",
    "schema:identifier": 29808,
    "schema:dateCreated": "2017-10-23T12:45:12.020Z",
    "schema:dateModified": "2017-10-23T12:45:12.020Z",
    "schema:url": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29808/G2_M1_U6_FB_COMPLETE.pdf",
    "schema:fileFormat": "application/pdf"
  }, {
    "@type": "http://oerschema.org/SupportingMaterial",
    "@id": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29809/Cycles_in_Nature_Image_Cards.pdf",
    "forComponent": {
      "@id": "http://unbounded.org/ela/grade-2/module-1/unit-6"
    },
    "additionalType": "http://schema.org/DigitalDocument",
    "name": "Module 1, Unit 6, Image Cards",
    "schema:identifier": 29809,
    "schema:dateCreated": "2017-10-23T12:45:12.459Z",
    "schema:dateModified": "2017-10-23T12:45:12.459Z",
    "schema:url": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29809/Cycles_in_Nature_Image_Cards.pdf",
    "schema:fileFormat": "application/pdf"
  }, {
    "@type": "http://oerschema.org/SupportingMaterial",
    "@id": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29810/Tens_and_Student_Performance_Tasks.pdf",
    "forComponent": {
      "@id": "http://unbounded.org/ela/grade-2/module-1/unit-6"
    },
    "additionalType": "http://schema.org/DigitalDocument",
    "name": "Tens and Student Performance Tasks Download",
    "schema:identifier": 29810,
    "schema:dateCreated": "2017-10-23T12:45:12.609Z",
    "schema:dateModified": "2017-10-23T12:45:12.609Z",
    "schema:url": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29810/Tens_and_Student_Performance_Tasks.pdf",
    "schema:fileFormat": "application/pdf"
  }, {
    "@type": "http://oerschema.org/SupportingMaterial",
    "@id": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29811/Student_Writing_Portfolios.pdf",
    "forComponent": {
      "@id": "http://unbounded.org/ela/grade-2/module-1/unit-6"
    },
    "additionalType": "http://schema.org/DigitalDocument",
    "name": "Student Writing Portfolios Download",
    "schema:identifier": 29811,
    "schema:dateCreated": "2017-10-23T12:45:12.709Z",
    "schema:dateModified": "2017-10-23T12:45:12.709Z",
    "schema:url": "https://apierre-ub-dev.s3.amazonaws.com/attachments/29811/Student_Writing_Portfolios.pdf",
    "schema:fileFormat": "application/pdf"
  }],
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "This work is based on an original work of the Core Knowledge® Foundation made available through licensing under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. This does not in any way imply that the Core Knowledge Foundation endorses this work."
}
```

