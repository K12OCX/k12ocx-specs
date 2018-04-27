# Activity

- type: [http://oerschema.org/Activity](http://oerschema.org/Activity)
- extends:
    - [http://oerschema.org/Task](http://oerschema.org/Task)
    - [http://oerschema.org/InstructionalPattern](http://oerschema.org/InstructionalPattern) > [http://oerschema.org/LearningComponent](http://oerschema.org/LearningComponent)
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [http://schema.org/Action](http://schema.org/Action)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)
- parentOf: `Assessment`
- childOf: `Lesson`

An Activity is a part of a Lesson. It may contain content for students, teachers, or both.

Order (within a Lesson) is important, so the structure should maintain the intended order.

Examples:

- [A Tale of Two Triangles (Part 1)](https://im.openupresources.org/6/teachers/1/7.html#activity-2) (IM)
- [Fluency Practice](https://www.unbounded.org/downloads/4502/preview?slug_id=37486) (UnboundEd)

## Properties

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:Activity**| -------------------- | -------------------- |
| assessedBy | Assessment | The assessment for this activity. |
| gradingFormat | GradeFormat \| Text | The grading format for this resource |
| **oer:Task** | -------------------- | -------------------- |
| material | SupportingMaterial | The supporting material assiociated with a resource. |
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
| **schema:Action** | -------------------- | ------------------ |
| schema:agent | schema:Organization \| schema:Person | he direct performer or driver of the action (animate or inanimate). e.g. John wrote a book. |
| schema:startTime | schema:DateTime | The start time for the action |
| schema:endTime | schema:DateTime | The end time for the action |
| schema:object | schema:Thing | The object upon which the action is carried out, whose state is kept intact or changed e.g. John read a book. |
| schema:target | schema:EntryPoint | Indicates a target EntryPoint for an Action. |
| **cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |

## Samples

Markup for [https://www.unbounded.org/downloads/4502/preview?slug_id=37486](https://www.unbounded.org/downloads/4502/preview?slug_id=37486)

- JSON-LD

```json
{"todo": true}
```
