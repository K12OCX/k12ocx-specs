# ReferencedMaterial

- type: https://github.com/K12OCX/k12ocx-specs/ReferencedMaterial & [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
- extends:
    - ocx:AssociatedMaterial
    - [http://oerschema.org/Resource](http://oerschema.org/Resource)
    - [http://oerschema.org/CreativeWork](http://oerschema.org/CreativeWork) => [http://schema.org/CreativeWork](http://schema.org/CreativeWork)
    - [http://oerschema.org/Thing](http://oerschema.org/Thing) => [http://schema.org/Thing](http://schema.org/Thing)
    - [https://creativecommons.org/ns#Work](https://creativecommons.org/ns#Work)

Material associated with an instructional component that is referenced by that component. While they exist independently of the curriculum, such materials are  required for the instructional content to be meaningful.

The ocx:material property is used to link an instructional component to ReferencedMaterial

Examples:

- Primary sources analysed in activities or assessments
- Material studied in Courses
- Raw material used in activities or assessments

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
|author|Organization  or Person |The author of the supporting material.|
|citation|CreativeWork  or Text |A citation or reference to another creative work, such as another publication, web page, scholarly article, etc.|
|contributor|Organization  or Person |A secondary contributor to the supporting material|
| dateCreated | Date | The date on which the resource was created. |
| dateModified | Date | The date on which the resource was updated. |
| educationalUse | Text | The purpose of the work in the context of education. Ex: "required reading" |
| encoding | MediaObject | A media object that encodes this supporting material. Use when the same digital document is available in different formats. |
|hasPart|CreativeWork|Indicates a CreativeWork that is part of this supporting material (in some sense). Inverse property: isPartOf.|
|inLanguage|Language or Text |The language of the content of the supporting material. Please use one of the language codes from the IETF BCP 47 standard.|
|isBasedOn|CreativeWork or URL|A resource from which this supporting material is derived or of which it is a modification or adaption.|
|isPartOf|CreativeWork |Indicates a CreativeWork that this supporting material is (in some sense) part of. Inverse property: hasPart.|
|keywords|Text|Keywords or tags used to describe this content. Multiple entries in a keywords list are typically delimited by commas.|
|provider|Organization|The service provider, service operator, or service performer; the goods producer. Use to identify the Organization which is responsible for providing the educational input for the supporting material, e.g. providing content, educational events, assessments, accreditation etc.|
| publisher | Organization | The organization credited with publishing the supporting material. |
| **From ocx:SupplementalMaterial**| -------------------- | -------------------- |
| oer:forCourse | oer:Course | The Course in which the resource is meant for. |
| ocx:partType | Text | The nature of this section of the material in relation to its parent resource. Examples include 'Opener', 'Overview', 'Rationale'|
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

- JSON-LD

```json
{  
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "ocx": "https://github.com/K12OCX/k12ocx-specs/",
      "cc": "http://creativecommons.org/ns#"
    }
  ],
  "@type": ["ocx:ReferencedMaterial","CreativeWork"],
  "description": "to do"
}
```
