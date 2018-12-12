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

__Editor's Note:__ I know that lesson as a Course seems odd. If we find we don't need scheme.org's courseCode or coursePrerequisites properties we can just call a lesson a creative work.

Examples:

- [From Parallelograms to Triangles](https://im.openupresources.org/6/teachers/1/7.html) (IM)
- [Interpret A Multiplication Equation As A Comparison](https://www.pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1) (UnboundEd)

## Properties

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From schema.org:Course**| -------------------- | -------------------- |
|courseCode|Text|The identifier for the lesson used by the course provider (e.g. CS101 or 6.001).|
|coursePrerequisites|AlignmentObject  or Course  or Text |Requirements for taking the Lesson. May be completion of another course, module, unit or lesson, or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using AlignmentObject.|
| **From schema.org:CreativeWork** | -------------------- | -------------------- |
|about|Thing |The subject matter of the content.|
|accessibilitySummary|Text|A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed."|
|audience|EducationalAudience |An intended audience, i.e. a group for whom the resource being described was created. Use the educationalRole property of the EducationalAudience object to state whether the intended audience is teacher, student, parent, etc. See the [LRMI Educational Audience Role concept scheme](http://lrmi.dublincore.org/specifications/concept_schemes/#educational-audience-role) for more values. |
|author|Organization  or Person |The author of the lesson.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the lesson|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
|educationalAlignment|AlignmentObject|An alignment to an established educational framework. The alignment object can be used to provide information such as educational- (grade-) level of the lesson and competences being taught or assessed|
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this lesson (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the lesson. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this lesson is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this lesson is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|learningResourceType|Text|The predominant type or kind characterizing the lesson. |
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the lesson, e.g. providing content, educational events, assessments, accreditation etc.|
| publisher | Organization | The organization credited with publishing the lesson. |
|timeRequired|Duration |Approximate or typical time it takes to work with or through this lesson for the typical intended target audience, e.g. 'P30M', 'P1H25M'.|
|typicalAgeRange|	Text |The typical expected age in years of the learners on this lesson. For OCX the suggestion is to use a list to indicate a closed range of ages, e.g. ["9","10","11"], and values like "18-" for an open range.|
| **From schema.org:Thing**| -------------------- | -------------------- |
|alternateName|Text|An alias for the lesson.|
|description|Text|A description of the lesson.|
|identifier|PropertyValue  or Text  or URL |The identifier property represents any kind of identifier for any kind of Thing, such as ISBNs, DOIs, UUIDs etc. |
|name|Text|The name [title] of the lesson.|
|url|URL|URL of the lesson.|
| **from oer:LearningComponent**| -------------------- | -------------------- |
| oer:doTask | Task | Which tasks are to be completed for a LearningComponent |
| oer:hasLearningObjective | LearningObjective | A LearningObjective gained as a result of an InstructionalPattern. |
| **from oer:Resource** | -------------------- | -------------------- |
| forTopic| Topic | The Topic the resource is associated with. |
| **cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |

## Non-preferred properties
The following OER Schema properties should not be used as there are similar properties in schema.org:

| OER Schema Property     | preferred schema.org equivalent    |
| ------------ | --------------------------- |
| duration | learningTime (from CreativeWork) |
| hasComponent | hasPart (from CreativWork) |
| prerequisite | coursePrerequisites (from Course) |
| parentOf | hasPart (from CreativeWork) |
| childOf | isPartOf (from CreativeWork) |
| all properties of oer:Thing | all have equivalents in schema.org Thing |

## Example

Markup for [https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8](https://pilot.unbounded.org/ela/grade-6/module-1/unit-2/lesson-8)

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the lesson.

__Note:__ The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring](../manifest/structure.md). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model](../contentmodel.md).

__Note:__ In the case where the content of a unit is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

__Editor's Note:__ Several parts of the original are omitted in the example in order to avoid repetition.

__Note:__ Some of the parts are documents in a choice of digital format (encoding). If the HTML page for the Lesson is the only HTML page containing information about these documents then it is necessary to provide a full description of those documents in this page and their encodings. An example of such as description is provided under [Properties of SupportingMaterial](supportingmaterial.md).

```json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
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
  "hasPart":[{
    "@type": ["oer:SupportingMaterial","DigitalDocument"],
    "@id": "http://pilot.unbounded.org/materials/653",
    "name": "Assessment Text: “If” by Rudyard Kipling",
    "alternateName": "ELA-G6-M1-U2-L8-SH-Assessment Text"
  }, {
    "@type": ["oer:SupportingMaterial","DigitalDocument"],
    "@id": "http://pilot.unbounded.org/materials/648",
    "name": "Model literary argument essay: “Steve Jobs’ Rules to Live By”",
    "alternateName": "ELA-G6-M1-U2-L8-SH-Model literary argument"
  },  {
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
  "@id": "http://pilot.unbounded.org/documents/25#A",
  "@type": ["oer:Lesson","Course"],
  "learningResourceType": "Lesson",
  "name": "Bundle ones, tens, and hundreds as well as model three-digit numbers using units of hundreds, tens, and/or ones.",
  "description": "SWBAT bundle ones, tens, and hundreds as well as model three-digit numbers using units of hundreds, tens, and/or ones.",
  "learningTime": "PT60M",
  "sameAs": [
    "http://pilot.unbounded.org/resources/2116",
    "https://www.engageny.org/resource/grade-4-mathematics-module-1-topic-lesson-1"
  ],
  "url": "http://pilot.unbounded.org/documents/25",
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
  "hasPart": [
    {
      "@type": ["oer:SupportingMaterial", "DigitalDocument"],
      "@id": "#supportingmaterial4503",
      "name": "Grade 4 Mathematics Module 1, Topic A, Lesson 1",
      "url": "https://ubpilot-uploads.s3.amazonaws.com/attachments/4503/math-g4-m1-topic-a-lesson-1.pdf",
      "fileFormat": "application/pdf",
    },
    {
      "@type": ["oer:SupportingMaterial", "DigitalDocument"],
      "@id": "#supportingmaterial4502",
      "name": "Grade 4 Mathematics Module 1, Topic A, Lesson 1",
      "url": "https://ubpilot-uploads.s3.amazonaws.com/attachments/4502/math-g4-m1-topic-a-lesson-1.docx",
      "fileFormat": "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
    },
    {
      "@type": ["oer:SupportingMaterial", "DigitalDocument"],
      "@id": "#supportingmaterial12",
      "url": "http://pilot.unbounded.org/materials/12",
    }
  ],
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "This work is based on an original work of Great Minds and licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. UnboundEd is not affiliated with the copyright holder of this work."
}
```
