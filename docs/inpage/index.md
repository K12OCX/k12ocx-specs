#In page markup
CCM being transferred may be contained in a single digital document or many, the format of which must be HTML5 or translatable to HTML5. These digital documents may contain content from any level of the OER Schema model from Course down to Activity, and all smaller levels comprised by it.

![ocx - model schema](https://docs.google.com/drawings/d/e/2PACX-1vRFmqDy20wkWNhS4Iat6vRFLGfuhq9oTbayuG3_mJA9V46s6OT5oz8itEVyBYrO4YQCmcBH2qljgW6e/pub?w=960&h=720)

For example a digital document might contain a Lesson with associated Activities, Supporting Materials and Assessments. Each of these may also be structured into parts. The [Open Textbook Network](http://research.cehd.umn.edu/otn/) have published a [useful vocabulary](https://canvas.umn.edu/courses/106630/pages/textbook-elements) for describing these parts that applies at any OER Schema level, which is divided into openers, closers and "integrated pedagogic devices," for each of which they provide several specific examples.

##Information to be provided
The in-page markup is required to:

- define and identify with a URI the main pedagogical content, i.e. the CCM resources, from any other content that may be in the same document or web page (for example if the resource is in a repository or on a website there may be information and navigation elements relating to the service or site as a whole).

- define and identify with a URI the divisions of the document that are pedagogically significant in terms of their nature and their educational intent, for example distinguishing an introduction that provides context from the activities designed to foster understanding and from an end of lesson assessment. When a resource is being reused, repurposed or remixed these are the divisions that may be treated as somewhat independent resources.

- describe educationally significant properties and relationships of the resource as a whole and the significant divisions. These may include:
    - what is being taught, with alignments to standards where appropriate and the educational level for which the content is suitable;
    - the educational nature and intent of the resource;
    - the educational level for which the resource is appropriate;
    - specifying directly or indirectly who each part of the resource is intended for, e.g. distinguish teachers' notes from material that is presented to students.
    - specifying relationships with other content, e.g. homework, classroom materials, teacher's guide etc. 

- specify the ordering of the parts of the document. This is necessary because technology used to transmit, store and reuse the content may disaggregate the logical parts of the document in a way that does not preserve the implicit ordering in the document.

## Outline of the general approach
The digital document which contains the CCM is divided into parts using the HTML5 semantic sectioning elements `<main>` `<chapter>` `<article>` `<section>` `<aside>` `<header>` `<footer>` `<nav>`.  Descriptive information is provided using RDFa for the document as a whole and for each section individually.

schema.org and oerschema object types, supplemented where necessary with custom ocx type are used to provide information about the nature of the document and its sections. Often the schema.org type will be vague or generic and so it can be supplemented with a more specific oerschema or ocx resource type. In such cases the schema.org/learningResourceType property should be used to provide similar information about the resource type in a form that is intelligible to systems that understand only schema.org.

schema.org properties may be used to provide information about other aspects of the document and its sections. Where no suitable schema.org property exists, OER Schema properties will be used, and if no suitable OER Schema property exists either a custom OCX term will be used.

Where appropriate, values for properties will come from (in order of preference): LRMI, OER Schema, or custom OCX vocabularies based on existing practice.

Where the top level resource (e.g. a Lesson) comprises several parts (e.g. Activities) the schema.org/hasPart property will be used to provide the structural relationship between the top level resource and the parts. Where this is the case information about the top level resource will be held to relevant to all the parts unless more specific information is provided for the part. (For example if a Lesson is about subjectX, then all Activities that are part of it can be assumed to be about subjectX unless a different subject is specified for an Activity.)
