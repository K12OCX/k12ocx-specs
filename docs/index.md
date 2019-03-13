# K-12 Open Content Exchange

K-12 OCX is a specification for publishing OER (Open Educational Resources) on the web and packaging
that OER for exchange with other parties. Typically the OER will be aggregated into collections of curriculum, content and material (compare with a book or collection of courseware).

This specification comprises the following features:

1. A [content model](contentmodel.md) which is the conceptual model used by K12 OCX to define what is being transferred, and the realization of this model in one more file containing content and metadata.

2. A [manifest](manifest/) with metadata that describe the *structure* of an aggregate resource, that is specify what are the components that are collected together and their logical and pedagogical ordering into hierachies and sequences. It is an important feature of OER reuse and repurposing that this structure is dynamic, i.e. it may be changed by the person using the aggregated resources.

3. [In-page markup](inpage/) to provide *descriptive* metadata that aid the discovery and use of OER by providing information about their educationally-relevant charcteristics. Such metadata may be provided for any reasonable level of granularity, from the aggregate resource package as a whole down to individual assets.

4. Base implementation (or tool) for [packaging and exporting](packaging) OCX metadata with the OER resources, using Common Cartridge.

5. An additional set of [styling guides](styling) for allowing resources to keep visual integrity, or to change themes accordingly to different consumers.

## Examples

Examples for emitting or consuming the data using different programming languages can be found [here](emit-consume-example.md)

## IPR & License
All materials are contributed under the [Apache 2](https://www.apache.org/licenses/LICENSE-2.0) license. Materials will be contributed per copyright title to The Bill and Melinda Gates Foundation, and all such contributions will be licensed openly per previous sentence.

Copyright 2019 Bill and Melinda Gates Foundation.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software and documentation distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
