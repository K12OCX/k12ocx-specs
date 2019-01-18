# Auxiliary Types

Below we provide a quick reference, for some auxiliary type properties used on the OER Schema Classes above.

## oer:LearningComponent

  same as `Lesson` | `Topic/Module` | `Activity` | `Unit` | `SupportingMaterial`

## oer:CourseSyllabus

  see [http://oerschema.org/CourseSyllabus](http://oerschema.org/CourseSyllabus)

## oer:Topic

Defined as "the context of a LearningComponent". Treat as equivalent to a subclass of [schema.org/Intangible](https://schema.org/Intangible).

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **from oer:Topic**| -------------------- | -------------------- |
| oer:material | SupportingMaterial | The supporting material assiociated with a resource. |
| **oer:Resource** | -------------------- | -------------------- |
| mainContent | Text | The main content relating to the item. |
| **From Thing** | -------------------- | -------------------- |
| identifier | Text \|  URL \| schema:PropertyValue | Any kind of identifier (uuid, url, etc). |
| name | Text | The name of the item. |
| description | Text | A description of the item. |
| url | URL | URL of the item. |
| sameAs | URL | URL of a reference Web page that unambiguously indicates the item's identity. |
| alternateName | Text | An alias for the item. |
| **From cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |

## oer:LearningObjective

!!! note "Editor's Note"
    I am not sure if we use these, or whether we should use these. They are a little under-defined, but they do fill a hole currently in schema.org.

Treat as equivalent to a subclass of  [schema.org/Intangible](https://schema.org/Intangible).

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **oer:LearningObjective**| -------------------- | -------------------- |
| prerequisite | Course \| LearningComponent \| LearningObjective | A requirement to be completed before this resource can be performed. |
| **oer:Resource** | -------------------- | -------------------- |
| parentOf | Resource | A parent in relation to a child resource. |
| childOf | Resource | A child in relation to a parent resource. |
| forCourse | Course | The Course in which the resource is meant for. |
| mainContent | Text | The main content relating to the item. |
| forTopic| Topic | The Topic the resource is associated with. |
| **Thing** | -------------------- | -------------------- |
| name | Text | The name of the item. |
| description | Text | A description of the item. |
| sameAs | URL | URL of a reference Web page that unambiguously indicates the item's identity. |
| identifier | Text \|  URL \| schema:PropertyValue | Any kind of identifier (uuid, url, etc). |
| url | URL | URL of the item. |
| alternateName | Text | An alias for the item. |
| **cc:Work** | -------------------- | -------------------- |
| cc:license | Text \| License | A Work has license a License (a subproperty of dc:license, the same as xhtml:license). |
| cc:morePermissions | Text | A related resource which describes additional permissions or alternative licenses for a Work which may be available. |
| cc:attributionName | Text | The name the creator of a Work would like used when attributing re-use. |
| cc:attributionURL | URL | The URL the creator of a Work would like used when attributing re-use. |
| cc:useGuidelines | Text | A related resource which defines non-binding use guidelines for the work. |

## Person

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From Thing** | -------------------- | -------------------- |
| name | Text | The name of the item. |
| description | Text | A description of the item. |
| sameAs | URL | URL of a reference Web page that unambiguously indicates the item's identity. |
| url | URL | URL of the item. |
| identifier | Text \|  URL \| PropertyValue | Any kind of identifier (uuid, url, etc). |
| alternateName | Text | An alias for the item. |
| **From Person** | -------------------- | _(below we show a few relevant Person properties. For the full properties table see [http://schema.org/Person](http://schema.org/Person) )_ |
| address | schema:PostalAddress \| Text | Physical address of the item. |
| email | Text | Email address |
| jobTitle | Text | The job title of the person (for example, Financial Manager). |
| memberOf | Organization | An Organization to which this Person or Organization belongs. Inverse property: member. |
| telephone | Text | The telephone number. |
| worksFor | Organization | Organizations that the person works for. |

## Organization

| Property     | Type     | Description                                         |
| ------------ | -------- | --------------------------------------------------- |
| **From Thing** | -------------------- | -------------------- |
| name | Text | The name of the item. |
| description | Text | A description of the item. |
| sameAs | URL | URL of a reference Web page that unambiguously indicates the item's identity. |
| url | URL | URL of the item. |
| identifier | Text \|  URL \| PropertyValue | Any kind of identifier (uuid, url, etc). |
| alternateName | Text | An alias for the item. |
| **From Organization** | -------------------- | _(below we show a few relevant Organization properties. For the full properties table see [http://schema.org/Organization](http://schema.org/Organization) )_ |
| address | PostalAddress \| Text | Physical address of the item. |
| contactPoint | ContactPoint | A contact point for a person or organization. |
| department | Organization | A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). |
| email | Text | Email address |
| location | Location \| Text | The location of for example where the event is happening, an organization is located, or where an action takes place. |
| logo | ImageObject \| URL | An associated logo. |
| member | Organization \| Person | sub-member Person or Organizations to this Organization. Inverse property: memberOf. |
| memberOf | Organization | An Organization to which this  Organization belongs. Inverse property: member. |
| telephone | Text | The telephone number. |
