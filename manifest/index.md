---
layout: page
title: Aggregated Content
has_children: true
nav_order: 3
---

# Aggregated Content

This proposal aims to provide a technical strategy for organizations to share and find OER content through the web. Typically the OER will be aggregated into collections of curriculum content and material (compare with a book or collection of courseware).

For discovering and consuming content from others, we use a **manifest** specification to index these resources' metadata and relationships. This manifest specifies the location of the content to be aggregated and the structure of the aggregation (i.e. a hierarchical and sequential ordering in which the content may be presented).

Our approach is to use well known and established formats to share information about the location and structuring of content. Primarily this involves using a variant of a web standard called **sitemaps** alongside **schema.org** metadata markup with some added vocabulary from **OER Schema** to enable easy content discovery and hierarchy mapping.

* Information about the [location]({{ site.baseurl }}{% link manifest/locate.md %}) of resources and their metadata is provided by an extended sitemap.

* Information about the [structuring]({{ site.baseurl }}{% link manifest/structure.md %}) and sequencing of aggregrations of resources is provided by an encoded "table of contents" (ToC) structure.

For clarity and ease of use, we propose Sitemap extended vocabulary that points to content and does not describe it. The descriptions are embeded as [metadata]({{ site.baseurl }}{% link inpage/index.md %}) in the resources.

A similar approach has already been adopted by Google via Sitemap extensions for [Video](https://support.google.com/webmasters/answer/80471), [Images](https://support.google.com/webmasters/answer/178636?hl=en) and [News](https://www.google.co.uk/schemas/sitemap-news/0.9/). In addition, Google [recommends](https://developers.google.com/webmasters/videosearch/schema) using the schema.org compliant on-page markup, just as we do.

!!! Note "open issue"
    Where does the manifest go? How can it be discovered. Is it one file or two? [See github issue](https://github.com/K12OCX/k12ocx-specs/issues/33)
