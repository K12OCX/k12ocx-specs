# SupportingMaterial

- type: http://oerschema.org/SupportingMaterial
- extends:
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) => [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: None
- childOf: `Course`, `Module`, `Unit`, `Lesson`

This represents a leaf node in the content tree -- that is, it isn’t designed to be the parent of other content. It could contain content that provides information about a course band, course, unit, or even lesson. This content often takes the form of a Teacher’s Guide or other support materials.

This could also include materials aimed at other audiences, like family support materials.

Examples:

- [Teacher Course Guide](https://im.openupresources.org/6/teachers/teacher_course_guide.html) (IM)
- [Family Materials](https://im.openupresources.org/6/families/index.html) (IM)

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


- JSON-LD
```json
{
  "@type": "http://oerschema.org/SupportingMaterial",
  "@id": "http://pilot.unbounded.org/materials/2540",
  "name": "TDQ’s Chapter 9 pages 189-206",
  "alternateName": "ELA6_M3_U2_L03 TDQs Chapter 9 pages 189-206",
  "sameAs": ["https://ubpilot-uploads.s3.amazonaws.com/documents/408/ELA6_M3_U2_L03%20TDQs%20Chapter%209%20pages%20189-206_v20.pdf", "https://drive.google.com/open?id=1Do8A9MOR2JCWAKpDfAM6DOUfNQeXAltOdi35WMM_0qQ"],
  "image": ["https://ubpilot-uploads.s3.amazonaws.com/documents/408/ELA6_M3_U2_L03%20TDQs%20Chapter%209%20pages%20189-206_v20.jpg"],
  "uri": "http://pilot.unbounded.org/materials/2540",
  "forComponent": {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://pilot.unbounded.org/documents/408",
    "name": "Chapter 9 of Dragonwings and Analyzing an Author’s Point of View",
    "alternateName": "ela/grade-6/module-3/unit-2/lesson-3",
    "schema:identifier": 9034
  },
  "hasComponent": [{
    "@id": "https://ubpilot-uploads.s3.amazonaws.com/documents/408/ELA6_M3_U2_L03%20TDQs%20Chapter%209%20pages%20189-206_v20.pdf",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/pdf",
    "uri": "https://ubpilot-uploads.s3.amazonaws.com/documents/408/ELA6_M3_U2_L03%20TDQs%20Chapter%209%20pages%20189-206_v20.pdf"
  }, {
    "@id": "https://drive.google.com/open?id=1Do8A9MOR2JCWAKpDfAM6DOUfNQeXAltOdi35WMM_0qQ",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/vnd.google-apps.document",
    "uri": "https://drive.google.com/open?id=1Do8A9MOR2JCWAKpDfAM6DOUfNQeXAltOdi35WMM_0qQ"
  }],
  "forCourse": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/ela/grade-6",
    "name": "Grade 6 English Language Arts",
    "alternateName": "ela/grade-6",
    "schema:identifier": 4875
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/ela",
    "name": "ELA"
  },
  "schema:identifier": 2540,
  "schema:alternateName": "ela6_m3_u2_l03 tdqs chapter 9 pages 189-206",
  "schema:dateCreated": "2017-10-23T11:10:48.457Z",
  "schema:dateModified": "2017-10-23T11:10:48.457Z",
  "schema:educationalUse": "Material",
  "schema:learningResourceType": "Student Handout",
  "schema:keywords": ["sw-template-p", "student"],
  "schema:thumbnailUrl": "https://ubpilot-uploads.s3.amazonaws.com/documents/408/ELA6_M3_U2_L03%20TDQs%20Chapter%209%20pages%20189-206_v20.jpg"
}
```

______


```json
{
  "@type": "http://oerschema.org/SupportingMaterial",
  "@id": "http://pilot.unbounded.org/materials/697",
  "name": "Evidence-Based Claims Tool, Chapter 5",
  "alternateName": "ELA6_M2_U1_L09 Evidence-Based Claims Ch 5",
  "sameAs": ["https://ubpilot-uploads.s3.amazonaws.com/documents/141/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf", "https://drive.google.com/open?id=13v3S77kqfDafzdw9b7mx87Mp_6B6nZfEAEHcvwkPWWk", "https://ubpilot-uploads.s3.amazonaws.com/documents/142/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf", "https://drive.google.com/open?id=1962Y0XskjrEJcUeUMoZUk5zzeF_gadaZq4Z1xqQJ6rI", "https://ubpilot-uploads.s3.amazonaws.com/documents/140/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf", "https://drive.google.com/open?id=1P6ur-_omYo1zu9XS0ETRlNzIrkuadatttanQwXsn6uA"],
  "image": ["https://ubpilot-uploads.s3.amazonaws.com/documents/141/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg", "https://ubpilot-uploads.s3.amazonaws.com/documents/142/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg", "https://ubpilot-uploads.s3.amazonaws.com/documents/140/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg"],
  "uri": "http://pilot.unbounded.org/materials/697",
  "forComponent": [{
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://pilot.unbounded.org/documents/141",
    "name": "Point of View Part 2 in Chapter 5 of World Without Fish",
    "alternateName": "ela/grade-6/module-2/unit-1/lesson-10",
    "schema:identifier": 8750
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://pilot.unbounded.org/documents/142",
    "name": "Assessing Point of View, End of Unit Assessment, World Without Fish",
    "alternateName": "ela/grade-6/module-2/unit-1/lesson-11",
    "schema:identifier": 8751
  }, {
    "@type": "http://oerschema.org/Lesson",
    "@id": "http://pilot.unbounded.org/documents/140",
    "name": "Point of View in Chapter 5 of World Without Fish",
    "alternateName": "ela/grade-6/module-2/unit-1/lesson-9",
    "schema:identifier": 8749
  }],
  "hasComponent": [{
    "@id": "https://ubpilot-uploads.s3.amazonaws.com/documents/141/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/pdf",
    "uri": "https://ubpilot-uploads.s3.amazonaws.com/documents/141/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf"
  }, {
    "@id": "https://drive.google.com/open?id=13v3S77kqfDafzdw9b7mx87Mp_6B6nZfEAEHcvwkPWWk",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/vnd.google-apps.document",
    "uri": "https://drive.google.com/open?id=13v3S77kqfDafzdw9b7mx87Mp_6B6nZfEAEHcvwkPWWk"
  }, {
    "@id": "https://ubpilot-uploads.s3.amazonaws.com/documents/142/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/pdf",
    "uri": "https://ubpilot-uploads.s3.amazonaws.com/documents/142/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf"
  }, {
    "@id": "https://drive.google.com/open?id=1962Y0XskjrEJcUeUMoZUk5zzeF_gadaZq4Z1xqQJ6rI",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/vnd.google-apps.document",
    "uri": "https://drive.google.com/open?id=1962Y0XskjrEJcUeUMoZUk5zzeF_gadaZq4Z1xqQJ6rI"
  }, {
    "@id": "https://ubpilot-uploads.s3.amazonaws.com/documents/140/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/pdf",
    "uri": "https://ubpilot-uploads.s3.amazonaws.com/documents/140/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.pdf"
  }, {
    "@id": "https://drive.google.com/open?id=1P6ur-_omYo1zu9XS0ETRlNzIrkuadatttanQwXsn6uA",
    "additionalType": "http://schema.org/DigitalDocument",
    "schema:fileFormat": "application/vnd.google-apps.document",
    "uri": "https://drive.google.com/open?id=1P6ur-_omYo1zu9XS0ETRlNzIrkuadatttanQwXsn6uA"
  }],
  "forCourse": {
    "@type": "http://oerschema.org/Course",
    "@id": "http://pilot.unbounded.org/ela/grade-6",
    "name": "Grade 6 English Language Arts",
    "alternateName": "ela/grade-6",
    "schema:identifier": 4875
  },
  "forTopic": {
    "@type": "http://oerschema.org/Topic",
    "@id": "http://pilot.unbounded.org/ela",
    "name": "ELA"
  },
  "schema:identifier": 697,
  "schema:alternateName": "ela6_m2_u1_l09 evidence-based claims ch 5",
  "schema:dateCreated": "2017-08-14T22:24:31.014Z",
  "schema:dateModified": "2017-10-23T10:35:24.057Z",
  "schema:educationalUse": "Material",
  "schema:learningResourceType": "Student Handout",
  "schema:keywords": ["sw-template-p", "student"],
  "schema:thumbnailUrl": ["https://ubpilot-uploads.s3.amazonaws.com/documents/141/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg", "https://ubpilot-uploads.s3.amazonaws.com/documents/142/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg", "https://ubpilot-uploads.s3.amazonaws.com/documents/140/ELA6_M2_U1_L09%20Evidence-Based%20Claims%20Ch%205_v881820.jpg"]
}
```
