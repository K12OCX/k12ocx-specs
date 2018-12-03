# K-12 Open Content Exchange

K-12 OCX is a specification for publishing OER (Open Educational Resources) on the web and packaging
that OER for exchange with other parties. Typically the OER will be aggregated into collections of curriculum, content and material (compare with a book or collection of courseware).

This specification comprises the following features:

1. A [content model](contentmodel.md) which is the conceptual model used by K12 OCX to define what is being transferred, and the realization of this model in one more file containing content and metadata.

2. A [manifest](manifest/about) with metadata that describe the *structure* of an aggregate resource, that is specify what are the components that are collected together and their logical and pedagogical ordering into hierachies and sequences. It is an important feature of OER reuse and repurposing that this structure is dynamic, i.e. it may be changed by the person using the aggregated resources.

3. [In-page markup](inpage/markup) to provide *descriptive* metadata that aid the discovery and use of OER by providing information about their educationally-relevant charcteristics. Such metadata may be provided for any reasonable level of granularity, from the aggregate resource package as a whole down to individual assets.

4. Base implementation (or tool) for [packaging and exporting](packaging) OCX metadata with the OER resources, using Common Cartridge.

5. An additional set of [styling guides](styling) for allowing resources to keep visual integrity, or to change themes accordingly to different consumers.
