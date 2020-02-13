---
layout: page
title: HTML5 Elements for the divisions
parent: In page markup
---

# HTML5 Elements for the divisions

CCM documents should be in HTML5, or may be in an equivalent format that can be mapped to HTML5. A single file may contain pedagogically significant content that is subdivided into parts, such as a Lesson with associated Activities, Supporting Materials and Assessments. The file may also contain content that is not pedagogically significant, such as banner and navigation content that relates to the site hosting the content. HTML5 sectioning elements must be used with JSON-LD or RDFa metadata to define and identify with a URI the main pedagogical content and the significant subdivisions.

For normative definitions of the HTML5 elements discussed here see [HTML5.2 Sections](https://www.w3.org/TR/html52/sections.html#sections).

`<body>` must be used at the top-level for the content of the HTML document. It may contain information that is not part of the CCM, for example it may contain navigation relating to the collection/website of which this resource is a part or information about the provider of the resource.

One of `<main>`, `<article>`, `<chapter>` must be used to container the CCM resource. There are clear-cut cases where `<article>` and `<chapter>` are appropriate; `<main>` is general enough as a catch-all ensuring that there is an appropriate top-level element for any individual CCM resource.

Multiple `<section>` may be used for subdivisions of the CCM resource. Sections may have sections. Subdivisions that might be considered a resource worth reusing or repurposing for use in their own right should be contained within a `<section>`. For example, where a document describes a lesson that comprises several activities that may be useful in other lessons, each activity should be separate `<section>`.

`<aside>` represents a section of a page that consists of content that is tangentially related to the content of the parenting sectioning content.

`<header>` and `<footer>` are useful within any of the above elements as containers for information that relates to all the parts of that container. They are not considered to be significant resources in their own right.

`<nav>` (typically in `<header>` or `<footer>` or acting as an implicit header or footer) contains navigation links at some level.

`<div>` may be used as a container of convenience for grouping together content within a `<section>` for the purpose of describing it with RDFa/microdata.

## Example
Some OCX content is on a webpage, it comprises introductory material and a learning activity.
```
<html>
  <head><title>Example</title></head>
  <body>
    <header>
      <nav><-- links to other pages --></nav>
    </header>
    <main><-- container for the OCX content -->
      <header><-- note that any section may have a header -->
        <h1>OCX Example</h1>
        <p>Some general information about the resource</p>
      </header>
      <section>
        <h2>Introduction to example subject</h2>
        <div>content for introduction</div>
      </section>
      <section>
        <h2>My example activity</h2>
        <div>content for the learning activity</div>
      </section>
    </main>
  </body>
</html>
```

## Identifying the subdivisions and their types
Each significant subdivision must be identifiable and describable as a resource separately from the whole document. A suitable HTTP URI identifier should be provided. Absent any web based service that will resolve a URI to deliver a representation of the resource, a reasonable default is to use a fragment identifier such as #section001. Such fragment identifiers should begin with a letter [a-z|A-Z]. OCX will thus conform to the W3C [Architecture of the World Wide Web](https://www.w3.org/TR/webarch/) in its use of identifiers.

In order to aid the extraction of significant subdivisions that are thus identified, the HTML5 `id` attribute of the sectioning element that contains that subdivision should be used with a value equal to the fragment identifier. Such `id` values must begin with a letter.

The nature of the CCM or significant subdivision should be denoted with types drawn from, in order of preference, schema.org, OER Schema, and custom OCX types. Where OER Schema or OCX types are used, a broader matching schema.org type should also be used in order to provide information to systems and tools that understand schema.org but not OCX.

Metadata about a subdivision should be placed within the HTML sectioning element that contains that subdivision. This ensures that if this section is extracted from the document the metadata travels with it.

##Relevant schema.org types
Useful schema.org types can be found under [schema.org/CreativeWork](http://schema.org/CreativeWork) which provides normative definitions, and include:

* Book, Course, AudioBook, WebSite
* DigitalDocument, Chapter, WebPage
* Article & subtypes: NewsArticle Report ScholarlyArticle TechArticle
* Quotation
* HowTo, HowToStep, HowToSection, HowToDirection, HowToTip
* SoftwareApplication
* VisualArtwork, Painting, Photograph,
* Atlas, Map
* Movie
* Question, Answer (used for marking FAQs)
* MediaObject & subtypes AudioObject, DataDownload, ImageObject, MusicVideoObject, VideoObject

schema.org must be used as the main vocabulary for the document. schema.org types may be identified with cURIs with no namespace, e.g. `CreativeWork`.

## Relevant OER Schema types
* Course
* Module
* Unit
* Lesson
* Task
    * Activity
        * Project
    * Practice
* Assessment
    * Quiz
    * Submission
* SupportingMaterial
* CourseSyllabus

As defined by [OER Schema](http://oerschema.org/docs/schema.html).

OER Schema types should be identified with cURIs using the RDF namespace prefix `oer:` for the `http://oerschema.org/` namespace URI, for example oer:Lesson.

##Custom OCX types
OCX types may be added as this specification matures.

OCX types should be identified with cURIs using the RDF namespace prefix `ocx:` for the ocx namespace URI and , e.g. ocx:NewType.

##In-page relationships and inheritance
The `schema.org/hasPart` relationship may be used to indicate that a section is a part of the parent resource. For example that a Lesson has parts which are SupportingMaterial and an Activity.

Where there are hasPart relationships, many descriptive properties of the parent resource may be assumed to be inherited by the child unless another value is provided for that property in the descriptive metadata of the child. These inheritable properties are identified in this specification under the  of the descriptive properties for each oerschema type.

oerschema provides other types of relationship that are also described in this specification under the descriptive properties for each oerschema type.

## Example
The example above is identified as a lesson plan, the introductory material and activity are identified as significant subdivisions.
### 1. with RDFa metadata
```
<html>
  <head><title>Example</title></head>
  <body vocab="http://schema.org/"
        prefix="ocx: https://github.com/K12OCX/k12ocx-specs/terms/
                oer: http://oerschema.org/">
    <header>
      <nav><-- links to other pages --></nav>
    </header>
    <main id="LessonPlan"
          resource="#LessonPlan"
          typeof="CreativeWork oer:Lesson">
      <header>
        <h1>OCX Example</h1>
        <p>Some general information about the resource</p>
      </header>
      <section id="intro"
               property="haspart"
               resource="#intro"
               typeof="CreativeWork oer:SupportingMaterial">
        <h2>Introduction to example subject</h2>
        <div>content for introduction</div>
      </section>
      <section id="activity"
               property="haspart"
               resource="#activity"
               typeof="CreativeWork oer:Activity">
        <h2>My example activity</h2>
        <div>content for the learning activity</div>
      </section>
    </main>
  </body>
</html>
```

### 2. with JSON-LD metadata
```
 <html>
  <head><title>Example</title></head>
  <body>
    <header>
      <nav><-- links to other pages --></nav>
    </header>
    <main id="LessonPlan">
      <script type="application/ld+json">
        { "@context": [
            "http://schema.org",
            {"oer": "http://oerschema.org/"}
          ],
          "@id": "#LessonPlan",
          "@type": ["CreativeWork", "oer:Lesson"],
          "hasPart": [
            {"@id": "#Activity"},
            {"@id": "#Intro"}
          ]
        }
      </script>
      <header>
        <h1>OCX Example</h1>
        <p>Some general information about the resource</p>
      </header>
      <section id="Intro">
        <script type="application/ld+json">
  		    { "@context": [
              "http://schema.org",
              {"oer": "http://oerschema.org/"}
            ],
            "@id": "#Intro",
            "@type": ["CreativeWork","oer:SupportingMaterial"]
          }
        </script>
        <h2>Introduction to example subject</h2>
        <div>content for introduction</div>
      </section>
      <section id="Activity">
        <script type="application/ld+json">
          { "@context": [
              "http://schema.org",
              {"oer": "http://oerschema.org/"}
            ],
            "@id": "#Activity",
            "@type": ["CreativeWork","oer:Activity"]
          }
        </script>
        <h2>My example activity</h2>
        <div>content for the learning activity</div>
      </section>
    </main>
  </body>
</html>
```
