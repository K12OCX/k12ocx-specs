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

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From schema.org:Course**| -------------------- | -------------------- |
|courseCode|Text|The identifier for the Unit used by the course provider (e.g. CS101 or 6.001).|
|coursePrerequisites|AlignmentObject  or Course  or Text |Requirements for taking the Unit. May be completion of another course, module or unit or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using AlignmentObject.|
| **From schema.org:CreativeWork** | -------------------- | -------------------- |
|about|Thing |The subject matter of the content.|
|accessibilitySummary|Text|A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed."|
|audience|EducationalAudience |An intended audience, i.e. a group for whom the resource being described was created. Use the educationalRole property of the EducationalAudience object to state whether the intended audience is teacher, student, parent, etc. See the [LRMI Educational Audience Role concept scheme](http://lrmi.dublincore.org/specifications/concept_schemes/#educational-audience-role) for more values. |
|author|Organization  or Person |The author of the unit.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the unit|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
|educationalAlignment|AlignmentObject|An alignment to an established educational framework. The alignment object can be used to provide information such as educational- (grade-) level of the unit and competences being taught or assessed|
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this unit (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the unit. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this unit is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this unit is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|learningResourceType|Text|The predominant type or kind characterizing the unit. |
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the unit, e.g. providing content, educational events, assessments, accreditation etc.|
| publisher | Organization | The organization credited with publishing the unit. |
|timeRequired|Duration |Approximate or typical time it takes to work with or through this unit for the typical intended target audience, e.g. 'P30M', 'P1H25M'.|
|typicalAgeRange|	Text |The typical expected age in years of the learners on this course. For OCX the suggestion is to use a list to indicate a closed range of ages, e.g. ["9","10","11"], and values like "18-" for an open range.|
| **From schema.org:Thing**| -------------------- | -------------------- |
|alternateName|Text|An alias for the unit.|
|description|Text|A description of the unit.|
|identifier|PropertyValue  or Text  or URL |The identifier property represents any kind of identifier for any kind of Thing, such as ISBNs, DOIs, UUIDs etc. |
|name|Text|The name [title] of the unit.|
|url|URL|URL of the unit.|
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

Markup for [https://pilot.unbounded.org/ela/grade-2/module-1/unit-6](https://pilot.unbounded.org/ela/grade-2/module-1/unit-6):

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the unit.

__Note:__ The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring](../manifest/structure.md). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model](../contentmodel.md).

__Note:__ In the case where the content of a unit is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

__Editor's Note:__ Several parts of the original are omitted in the example in order to avoid repetition.

__Note:__ Some of the parts are pdf documents (one is included in the example). If the HTML page for the Unit is the only HTML page containing information about these documents then it is necessary to provide a full description of those documents in this page. An example of such as description is provided under [Properties of SupportingMaterial](supportingmaterial.md).

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
