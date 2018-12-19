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

Order (within a Lesson) is important, so when activities are represented within a document for a lesson the structure should maintain the intended order. Otherwise see section on ordered aggregation in [structuring aggregations](../manifest/structure.md).

The closest schema.org type to oer:Lesson is CreativeWork, of which it is a subtype, and so oer:Lesson inherits all properties of schema.org CreativeWork and may be used wherever the range of a property includes CreativeWork.

Examples:

- [A Tale of Two Triangles (Part 1)](https://im.openupresources.org/6/teachers/1/7.html#activity-2) (IM)
- [Fluency Practice](https://www.pilot.unbounded.org/downloads/4502/preview?slug_id=37486) (UnboundEd)

## Properties

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From schema.org Thing** | -------------------- | -------------------- |
| identifier | Text \|  URL \| PropertyValue | Any kind of identifier (uuid, url, etc). |
| url | URL | URL of the item. |
| name | Text | The name of the item. |
| alternateName | Text | An alias for the item. |
| description | Text | A description of the item. |
| **From schema.org CreativeWork** | -------------------- | _(below we show a few relevant CreativeWork properties. For the full properties table see [http://schema.org/CreativeWork](http://schema.org/CreativeWork) )_ |
|about|Thing |The subject matter of the content.|
|accessibilitySummary|Text|A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed."|
|audience|EducationalAudience |An intended audience, i.e. a group for whom the resource being described was created. Use the educationalRole property of the EducationalAudience object to state whether the intended audience is teacher, student, parent, etc. See the [LRMI Educational Audience Role concept scheme](http://lrmi.dublincore.org/specifications/concept_schemes/#educational-audience-role) for more values. |
|author|Organization  or Person |The author of the activity.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the activity|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
|educationalAlignment|AlignmentObject|An alignment to an established educational framework. The alignment object can be used to provide information such as educational- (grade-) level of the activity and competences being taught or assessed|
| educationalUse | Text | The purpose of the work in the context of education. Ex: "assignment", "group work" |
| encoding | MediaObject | A media object that encodes this activity. Use when the same activity is available as digital documents in different formats. |
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this activity (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the activity. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this activity is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this activity is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|learningResourceType|Text|The predominant type or kind characterizing the activity. |
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the activity, e.g. providing content, educational events, assessments, accreditation etc.|
| publisher | Organization | The organization credited with publishing the activity. |
|timeRequired|Duration |Approximate or typical time it takes to work with or through this activity for the typical intended target audience, e.g. 'P30M', 'PT1H25M'.|
|typicalAgeRange|	Text |The typical expected age in years of the learners on this activity. For OCX the suggestion is to use a list to indicate a closed range of ages, e.g. ["9","10","11"], and values like "18-" for an open range.|
| **From oer:Activity**| -------------------- | -------------------- |
| oer:assessedBy | oer:Assessment | The assessment for this activity. |
| gradingFormat | oer:GradeFormat \| Text | The grading format for this activity |
| **From ocx** | -------------------- | -------------------- |
| ocx:material | ocx:AssociatedMaterial | Material assiociated with a resource which is SupplementalMaterial, ReferencedMaterial or SupportingMaterial |
| **From oer:LearningComponent**| -------------------- | -------------------- |
| oer:forCourse | oer:Course | The Course in which the resource is meant for. |
| doTask | Task | Which tasks are to be completed for a LearningComponent |
| hasLearningObjective | LearningObjective | A LearningObjective gained as a result of an InstructionalPattern . |
| **From oer:Resource** | -------------------- | -------------------- |
| forTopic| Topic | The Topic the resource is associated with. |
| From **cc:Work** | -------------------- | -------------------- |
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
| forComponent | isPartOf (from CreativeWork) |
| prerequisite | coursePrerequisites (from Course) |
| parentOf | hasPart (from CreativeWork) |
| childOf | isPartOf (from CreativeWork) |
| all properties of oer:Thing | all have equivalents in schema.org Thing |

## Examples
See also examples for Assessment.

From https://pilot.unbounded.org/math/grade-4/module-1/topic-a/lesson-1

__Editor's note:__ DRAFT EXAMPLE, needs checking & validating.

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
