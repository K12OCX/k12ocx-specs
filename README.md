# K12 Open Content Exchange - Specification

[K-12 OCX is a specification](https://k12ocx.github.io/k12ocx-specs/) for publishing OER (Open Educational Resources) on the web and packaging that OER for exchange with other parties. Typically the OER will be aggregated into collections of curriculum, content and material (compare with a book or collection of courseware).

This specification comprises the following features:

A [content model](https://k12ocx.github.io/k12ocx-specs/contentmodel/) which is the conceptual model used by K12 OCX to define what is being transferred, and the realization of this model in one more file containing content and metadata.

A [manifest](https://k12ocx.github.io/k12ocx-specs/manifest/) with metadata that describe the structure of an aggregate resource, that is specify what are the components that are collected together and their logical and pedagogical ordering into hierachies and sequences. It is an important feature of OER reuse and repurposing that this structure is dynamic, i.e. it may be changed by the person using the aggregated resources.

[In-page markup](https://k12ocx.github.io/k12ocx-specs/inpage/) to provide descriptive metadata that aid the discovery and use of OER by providing information about their educationally-relevant charcteristics. Such metadata may be provided for any reasonable level of granularity, from the aggregate resource package as a whole down to individual assets.

The following are also part of the project:

Base implementation (or tool) for packaging and exporting OCX metadata with the OER resources, using Common Cartridge.

An additional set of styling guides for allowing resources to keep visual integrity, or to change themes accordingly to different consumers.

### Contributing
Please contribute ideas, suggestions, error reports etc. as [issues](https://github.com/K12OCX/k12ocx-specs/issues).

This project uses [mkdocs](http://www.mkdocs.org/) to build the specs using markdown files. If you clone this repository you can test any branch by running the following from the repository directory

```
pip install mkdocs
pip install mkdocs-material

mkdocs serve
```
