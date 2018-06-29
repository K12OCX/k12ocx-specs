# Course

- type: [http://oerschema.org/Course](http://oerschema.org/Course)
- extends:
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing)  =>  [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `Module` and `SupportingMaterial`
- childOf: none

This represents the entire course. A Course includes one or more modules.

The entire course could contain materials for multiple audiences (students, teachers, families).

A Course is intended to provide complete curriculum for an academic term. In K-12, the most common term is the full school year. But, this wouldn’t preclude a semester (half year) long course or trimester (⅓ of a year) long course, either. It does imply, however, that the course includes multiple instructional units.

Examples:

- [Grade 6 Math](https://im.openupresources.org/6/teachers/index.html) (IM)
- Algebra 1 (IM)
- [Grade 4 Mathematics](https://www.pilot.unbounded.org/explore_curriculum?subjects=math&p=/math/grade-4&e=1) (UnboundEd)
- Grade 3 ALL Block (EL)
- Grade 1 Language Arts (EL)
- Kindergarten Skills Block (EL)


## Properties

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:Course**| -------------------- | -------------------- |
| courseIdentifier | Text | The identifier of the course, i.e. MATH-100 |
| primaryInstructor | Person |  |
| instructor | Person |  |
| duration | Enumeration \| Number \| Text | The duration of the Course. |
| prerequisite | Course \| LearningComponent | A requirement to be completed before this resource can be performed. |
| institution | Organization | |
| department | Organization | |
| program | Organization | |
| syllabus | CourseSyllabus | |
| classStanding | ClassStanding | |
| deliveryFormat | Format \| Text | The format used to deliver the resource. |
| enrollmentSize | Number | |
| section | CourseSection | A specific instance of a course offered during a specific term. |
| termOffered | Text | A term during which a course or course section is offered. |
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
| **cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |


## Samples

Markup for [https://pilot.unbounded.org/math/grade-4](https://pilot.unbounded.org/math/grade-4):

- JSON-LD. (`/html/head/script[@type="application/ld+json"]`)
```json
{
  "@context": ["http://oerschema.org/", {
    "oer": "http://oerschema.org/",
    "schema": "http://schema.org/",
    "cc": "http://creativecommons.org/ns#"
  }],
  "@id": "http://pilot.unbounded.org/math/grade-4",
  "@type": "http://oerschema.org/Course",
  "courseIdentifier": "math/grade-4",
  "duration": 9180,
  "parentOf": [{
    "@type": "http://oerschema.org/Module",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-1",
    "name": "Place Value, Rounding, and Algorithms for Addition and Subtraction",
    "alternateName": "math/grade-4/module-1",
    "schema:identifier": 934
  }, {
    "@type": "http://oerschema.org/Module",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-2",
    "name": "Unit Conversions and Problem Solving with Metric Measurement",
    "alternateName": "math/grade-4/module-2",
    "schema:identifier": 8752
  }, {
    "@type": "http://oerschema.org/Module",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-3",
    "name": "Multi-Digit Multiplication And Division",
    "alternateName": "math/grade-4/module-3",
    "schema:identifier": 8761
  }, {
    "@type": "http://oerschema.org/Module",
    "@id": "http://pilot.unbounded.org/math/grade-4/module-4",
    "name": "Fraction Equivalence, Ordering, and Operations",
    "alternateName": "math/grade-4/module-4",
    "schema:identifier": 8870
  }],
  "childOf": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/math",
    "name": "Math Curriculum Map",
    "alternateName": "math",
    "schema:identifier": 6860
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/math",
    "name": "Mathematics"
  },
  "name": "Grade 4 Mathematics",
  "description": "Students explore operations and algebraic thinking, number and operations in base ten and fractions.",
  "sameAs": ["http://pilot.unbounded.org/resources/5150", "https://www.engageny.org/resource/grade-4-mathematics"],
  "uri": "http://pilot.unbounded.org/math/grade-4",
  "schema:identifier": 5150,
  "schema:url": "http://pilot.unbounded.org/math/grade-4",
  "schema:alternateName": "grade 4",
  "cc:license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
  "cc:attributionName": "Copyright © 2015 Great Minds."
}
```
