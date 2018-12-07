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

__Note:__ Descriptions of some properties have been tweaked to make them more appropriate for describing modules.

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From schema.org:Course**| -------------------- | -------------------- |
|courseCode|Text|The identifier for the Module used by the provider (e.g. CS101 or 6.001).|
|coursePrerequisites|AlignmentObject  or Course  or Text |Requirements for taking the Module. May be completion of another Course or module or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using AlignmentObject.|
| **From schema.org:CreativeWork** | -------------------- | -------------------- |
|about|Thing |The subject matter of the content.|
|accessibilitySummary|Text|A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed."|
|audience|EducationalAudience |An intended audience, i.e. a group for whom the resource being described was created. Use the educationalRole property of the EducationalAudience object to state whether the intended audience is teacher, student, parent, etc. See the [LRMI Educational Audience Role concept scheme](http://lrmi.dublincore.org/specifications/concept_schemes/#educational-audience-role) for more values. |
|author|Organization  or Person |The author of the module.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the module|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
|educationalAlignment|AlignmentObject|An alignment to an established educational framework. The alignment object can be used to provide information such as educational- (grade-) level of the module and competences being taught or assessed|
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this  Module (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the module. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this module is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this module is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|learningResourceType|Text|The predominant type or kind characterizing the module. A value of "Module" should be used to indicate the type of course to systems that understand schema.org but not the OER Schema terms used by OCX.|
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the module, e.g. providing content, assessments, accreditation etc.|
| publisher | Organization | The organization credited with publishing the resource. |
|timeRequired|Duration |Approximate or typical time it takes to work with or through this course for the typical intended target audience, e.g. 'P30M', 'P1H25M'.|
|typicalAgeRange|	Text |The typical expected age in years of the learners on this module. For OCX the suggestion is to use a list to indicate a closed range of ages, e.g. ["9","10","11"], and values like "18-" for an open range.|
| **From schema.org:Thing**| -------------------- | -------------------- |
|alternateName|Text|An alias for the course.|
|description|Text|A description of the course|
|identifier|PropertyValue  or Text  or URL |The identifier property represents any kind of identifier for any kind of Thing, such as ISBNs, DOIs, UUIDs etc. |
|name|Text|The name [title] of the course|
|url|URL|URL of the course.|
| **From oer:LearningComponent**| -------------------- | -------------------- |
| oer:hasLearningObjective | oer:LearningObjective | A LearningObjective gained as a result of an InstructionalPattern . |
| oer:doTask | oer:Task | Which tasks are to be completed for a LearningComponent. May be used to indicate required assessments |
| oer:forTopic| oer:Topic | The Topic the resource is associated with. An oer:Topic is defined as the context of a oer:LearningComponent |
| **From cc:Work** | -------------------- | -------------------- |
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

Markup for [https://pilot.unbounded.org/math/grade-4/module-1](https://pilot.unbounded.org/math/grade-4/module-1):

- JSON-LD

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the module.

__Note:__ The URIs used for the `@id`s are based on the URLs of the page that represent the module being described and its units with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring](../manifest/structure.md). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model](../contentmodel.md).

__Note:__ In the case where the content of a module is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.


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
