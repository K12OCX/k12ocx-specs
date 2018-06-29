# Module

- type: [http://oerschema.org/Module/](http://oerschema.org/Module/)
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource/](http://oerschema.org/Resource/)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `Unit`, `Lesson`, `Assessment` and `SupportingMaterial`
- childOf: `Course`

An instructional Module is a grouping of units and/or lessons on a similar topic (e.g., “Area and Surface Area”).

Typically, a Module represents two to six weeks of instructional content.

Examples:

- [Area and Surface Area](https://im.openupresources.org/6/teachers/1.html) (IM)
- [Place Value, Rounding, And Algorithms For Addition And Subtraction](https://pilot.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4/module-1&e=1) (UnboundEd)
- Module 1 (EL)

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
| schema:potentialAction | schema:Action | Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role. |
| **schema:CreativeWork** | -------------------- | _(below we show a few relevant CreativeWork properties. For the full properties table see [http://schema.org/CreativeWork](http://schema.org/CreativeWork) )_ |
| schema:about | schema:Thing | The subject matter of the content. |
| schema:headline | Text | Headline of the article. |
| schema:dateCreated | schema:Date | The date on which the resource was created. |
| schema:dateModified | schema:Date | The date on which the resource was updated. |
| schema:author | schema:Person | The individual credited with the creation of the resource. |
| schema:publisher | schema:Organization | he organization credited with publishing the resource. |
| schema:inLanguage | schema:Language | The primary language of the resource. |
| schema:educationalAlignment | schema:AlignmentObject | An alignment to an established educational framework. |
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

Markup for [https://pilot.unbounded.org/math/grade-4/module-1](https://pilot.unbounded.org/math/grade-4/module-1):

- JSON-LD

```json
{
  "@context": ["http://oerschema.org/", {
    "oer": "http://oerschema.org/",
    "schema": "http://schema.org/",
    "cc": "http://creativecommons.org/ns#"
  }],
  "@id": "http://pilot.unbounded.org/math/grade-4/module-1",
  "@type": "http://oerschema.org/Module",
  "duration": 1140,
  "parentOf": [{
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-a",
    "name": "Place Value of Multi-digit Whole Numbers",
    "alternateName": "math/grade-4/module-1/topic-a",
    "schema:identifier": 4527
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-b",
    "name": "Comparing Multi-Digit Whole Numbers",
    "alternateName": "math/grade-4/module-1/topic-b",
    "schema:identifier": 4543
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-c",
    "name": "Rounding Multi-Digit Whole Numbers",
    "alternateName": "math/grade-4/module-1/topic-c",
    "schema:identifier": 4545
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/documents/94",
    "name": "Unit 1 Mid-Unit Assessment Task: Topics A-C",
    "alternateName": "math/grade-4/module-1/assessment-mid",
    "schema:identifier": 8707
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-d",
    "name": "Multi-Digit Whole Number Addition",
    "alternateName": "math/grade-4/module-1/topic-d",
    "schema:identifier": 4546
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-e",
    "name": "Multi-Digit Whole Number Subtraction",
    "alternateName": "math/grade-4/module-1/topic-e",
    "schema:identifier": 4547
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1/topic-f",
    "name": "Addition and Subtraction Word Problems",
    "alternateName": "math/grade-4/module-1/topic-f",
    "schema:identifier": 4548
  }, {
    "@type": "http://oerschema.org/Unit",
    "@id": "http://pilot.unbounded.org/documents/95",
    "name": "Unit 1 End-of-Unit Assessment Task: Topics A-F",
    "alternateName": "math/grade-4/module-1/assessment-end",
    "schema:identifier": 8708
  }],
  "childOf": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/math/grade-4",
    "name": "Grade 4 Mathematics",
    "alternateName": "math/grade-4",
    "schema:identifier": 5150
  },
  "forCourse": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/math/grade-4",
    "name": "Grade 4 Mathematics",
    "alternateName": "math/grade-4",
    "schema:identifier": 5150
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/math",
    "name": "Mathematics"
  },
  "name": "Place Value, Rounding, and Algorithms for Addition and Subtraction",
  "description": "Students progress toward adding and subtracting multi-digit whole numbers using the standard algorithm.",
  "sameAs": ["http://pilot.unbounded.org/resources/934", "https://www.engageny.org/resource/grade-4-mathematics-module-1"],
  "uri": "http://pilot.unbounded.org/math/grade-4/module-1",
  "schema:identifier": 934,
  "schema:url": "http://pilot.unbounded.org/math/grade-4/module-1",
  "schema:alternateName": "module 1",
  "schema:headline": "Students progress toward adding and subtracting multi-digit whole numbers using the standard algorithm.",
  "schema:dateCreated": "2015-10-23T01:11:29.326Z",
  "schema:dateModified": "2017-08-25T11:29:22.859Z",
  "schema:publisher": {
    "@type": "http://schema.org/Organization",
    "@id": "http://pilot.unbounded.org/about",
    "schema:name": "UnboundEd",
    "schema:email": "supportdesk@unbounded.org",
    "schema:url": "http://pilot.unbounded.org/about",
    "schema:description": "We are a team of former classroom teachers, curriculum writers, school leaders and education experts who have worked in the public, private and nonprofit sectors. We are dedicated to empowering teachers by providing free, high-quality standards-aligned resources for the classroom, the opportunity for immersive training through our Institute, and the option of support through our website."
  },
  "schema:inLanguage": "en-US",
  "schema:educationalAlignment": [{
    "@type": "http://schema.org/AlignmentObject",
    "name": "ccss.math.content.4.nbt.a.1",
    "alternateName": ["4.nbt.1", "4.nbt.a.1", "math.4.nbt.a.1", "4nbt1", "4nbta1", "math4nbta1"],
    "targetName": "ccss.math.content.4.nbt.a.1",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "http://schema.org/AlignmentObject",
    "name": "ccss.math.content.4.nbt.a.2",
    "alternateName": ["4.nbt.2", "4.nbt.a.2", "math.4.nbt.a.2", "4nbt2", "4nbta2", "math4nbta2"],
    "targetName": "ccss.math.content.4.nbt.a.2",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "http://schema.org/AlignmentObject",
    "name": "ccss.math.content.4.nbt.a.3",
    "alternateName": ["4.nbt.3", "4.nbt.a.3", "math.4.nbt.a.3", "4nbt3", "4nbta3", "math4nbta3"],
    "targetName": "ccss.math.content.4.nbt.a.3",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "http://schema.org/AlignmentObject",
    "name": "ccss.math.content.4.nbt.b.4",
    "alternateName": ["4.nbt.4", "4.nbt.b.4", "math.4.nbt.b.4", "4nbt4", "4nbtb4", "math4nbtb4"],
    "targetName": "ccss.math.content.4.nbt.b.4",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "http://schema.org/AlignmentObject",
    "name": "ccss.math.content.4.oa.a.3",
    "alternateName": ["4.oa.3", "4.oa.a.3", "math.4.oa.a.3", "4oa3", "4oaa3", "math4oaa3"],
    "targetName": "ccss.math.content.4.oa.a.3",
    "educationFramework": "CommonCoreStandard"
  }, {
    "@type": "http://schema.org/AlignmentObject",
    "name": "math-4-cg",
    "alternateName": [],
    "targetName": "math-4-cg",
    "educationFramework": "UnboundedStandard"
  }],
  "schema:keywords": "number & operations in base 10,operations & algebraic thinking",
  "schema:position": 2000501000001
}
```
