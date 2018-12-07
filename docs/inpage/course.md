# Course

- type: [http://oerschema.org/Course](http://oerschema.org/Course) & [http://schema.org/Course](http://schema.org/Course)
- extends:
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing)  &  [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `oer:Module`
- childOf: `oer:Resource`

__Note:__ We treat the OER Schema course to be equivalent to [schema.org/Course](https://schema.org/Course) so that properties for scheme.org/Course may be used with it. (This exploits the flexibility of schema.org/domainIncludes used in defining schema.org properties.)

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

__Note:__ Descriptions of some properties have been tweaked to make them more appropriate for describing courses.

| Property     | Expected Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From schema.org:Course**| -------------------- | -------------------- |
|courseCode|Text|The identifier for the Course used by the course provider (e.g. CS101 or 6.001).|
|coursePrerequisites|AlignmentObject  or Course  or Text |Requirements for taking the Course. May be completion of another Course or a textual description like "permission of instructor". Requirements may be a pre-requisite competency, referenced using AlignmentObject.|
| **From schema.org:CreativeWork** | -------------------- | -------------------- |
|about|Thing |The subject matter of the content.|
|accessibilitySummary|Text|A human-readable summary of specific accessibility features or deficiencies, consistent with the other accessibility metadata but expressing subtleties such as "short descriptions are present but long descriptions will be needed for non-visual users" or "short descriptions are present and no long descriptions are needed."|
|audience|EducationalAudience |An intended audience, i.e. a group for whom the resource being described was created. Use the educationalRole property of the EducationalAudience object to state whether the intended audience is teacher, student, parent, etc. See the [LRMI Educational Audience Role concept scheme](http://lrmi.dublincore.org/specifications/concept_schemes/#educational-audience-role) for more values. |
|author|Organization  or Person |The author of the course.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the course|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
|educationalAlignment|AlignmentObject|An alignment to an established educational framework. The alignment object can be used to provide information such as educational- (grade-) level of the course and competences being taught or assessed|
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this  Course (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the course. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this course is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this course is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|learningResourceType|Text|The predominant type or kind characterizing the course. |
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the course, e.g. providing content, educational events, assessments, accreditation etc.|
| publisher | schema:Organization | The organization credited with publishing the resource. |
|timeRequired|Duration |Approximate or typical time it takes to work with or through this course for the typical intended target audience, e.g. 'P30M', 'P1H25M'.|
|typicalAgeRange|	Text |The typical expected age in years of the learners on this course. For OCX the suggestion is to use a list to indicate a closed range of ages, e.g. ["9","10","11"], and values like "18-" for an open range.|
| **From schema.org:Thing**| -------------------- | -------------------- |
|alternateName|Text|An alias for the course.|
|description|Text|A description of the course|
|identifier|PropertyValue  or Text  or URL |The identifier property represents any kind of identifier for any kind of Thing, such as ISBNs, DOIs, UUIDs etc. |
|name|Text|The name [title] of the course|
|url|URL|URL of the course.|
| **From oer:Course**| -------------------- | -------------------- |
| oer:syllabus | oer:CourseSyllabus | The syllabus for this course |
| oer:mainContent | Text | The main content relating to the item. |
| **From oer:Resource**| -------------------- | -------------------- |
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
| courseIdentifier | courseCode (from Course) |
| duration | learningTime (from CreativeWork) |
| prerequisite | coursePrerequisites (from Course) |
| parentOf | hasPart (from CreativeWork) |
| childOf | isPartOf (from CreativeWork) |
| all properties of oer:Thing | all have equivalents in schema.org Thing |


## Example

Markup for [https://pilot.unbounded.org/math/grade-4](https://pilot.unbounded.org/math/grade-4):

- JSON-LD.

The following would be placed in a `<script  type="application/ld+json">` element in the HTML sectioning element that contained information about the course.

__Note:__ The URIs used for the `@id`s are based on the URLs of the page that represent the course being described and its modules with the addition of the #A fragment identifiers treating them as aggregate resources as described in the section on [manifest structuring](../manifest/structure.md). This conforms with the requirement that different identifiers are used for CCM entities and the web pages that represent them, as described in the [content model](../contentmodel.md).

__Note:__ In the case where the content of a course is split over many HTML files, there is no requirement for the `hasPart` array shown in this example as this information would be provided by the manifest.

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
