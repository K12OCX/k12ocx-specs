# Auxiliary Type

Below we provide a quick reference, for some auxiliary type properties used on the OER Classes above.

## LearningComponent

  same as `Lesson` | `Topic/Module` | `Activity` | `Unit` | `SupportingMaterial`

## ClassStanding

  same as `Thing`, i.e.:

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
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

## Format

  same as `Thing`

## Enumeration

  same as `Thing`

## GradeFormat

  same as `Thing`

## CourseSection

  see [http://oerschema.org/CourseSection](http://oerschema.org/CourseSection)

## CourseSyllabus

  see [http://oerschema.org/CourseSyllabus](http://oerschema.org/CourseSyllabus)

## Topic

  The context of a LearningComponent

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:Topic**| -------------------- | -------------------- |
| material | SupportingMaterial | The supporting material assiociated with a resource. |
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

## LearningObjective

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:LearningObjective**| -------------------- | -------------------- |
| prerequisite | Course \| LearningComponent \| LearningObjective | A requirement to be completed before this resource can be performed. |
| forComponent | LearningComponent | Which LearningComponent the resource supports (inverse of hasComponent) |
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

## Person

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
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
| **schema:Person** | -------------------- | _(below we show a few relevant Person properties. For the full properties table see [http://schema.org/Person](http://schema.org/Person) )_ |
| schema:address | schema:PostalAddress \| Text | Physical address of the item. |
| schema:birthDate | schema:Date | Date of birth. |
| email | Text | Email address |
| gender | schema:GenderType \| Text | Gender of the person. While http://schema.org/Male and http://schema.org/Female may be used, text strings are also acceptable for people who do not identify as a binary gender.|
| schema:jobTitle | Text | The job title of the person (for example, Financial Manager). |
| schema:memberOf | schema:Organization | An Organization to which this Person or Organization belongs. Inverse property: member. |
| schema:telephone | Text | The telephone number. |
| schema:worksFor | schema:Organization | Organizations that the person works for. |

## Organization

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
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
| **schema:Organization** | -------------------- | _(below we show a few relevant Organization properties. For the full properties table see [http://schema.org/Organization](http://schema.org/Organization) )_ |
| schema:address | schema:PostalAddress \| Text | Physical address of the item. |
| schema:contactPoint | schema:ContactPoint | A contact point for a person or organization. |
| schema:department | schema:Organization | A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). |
| schema:email | Text | Email address |
| schema:location | schema:Location \| Text | The location of for example where the event is happening, an organization is located, or where an action takes place. |
| schema:logo | schema:ImageObject \| URL | An associated logo. |
| schema:member | schema:Organization \| schema:Person | sub-member Person or Organizations to this Organization. Inverse property: memberOf. |
| schema:memberOf | schema:Organization | An Organization to which this  Organization belongs. Inverse property: member. |
| schema:telephone | Text | The telephone number. |

