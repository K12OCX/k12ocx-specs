# About the Manifest

This proposal aims to provide a technical strategy for organizations to share and find OER content through the web.

For discovering and consuming content from others, we use a **manifest** specification to index these resources' metadata and relationships.

Our approach is to use JSON-LD to share information about the location and sequencing of content. Primarily this involves using **schema.org** metadata markup with some added vocabulary from **OER Schema**  alongside a variant of another web standard called **sitemaps** to enable easy content discovery and hierarchy mapping.

* Information about the [location](../locate) of resources and their metadata is provided by an extended sitemap.

* Information about the [structuring](../structure) and sequencing of aggregrations of resources is provided by an encoded "table of contents" (ToC) structure.  

For clarity and ease of use, we propose Sitemap extended vocabulary that points to content and does not describe it. The descriptions are embeded as [metadata](/metadata/markup) in the resources.

A similar approach has already been adopted by Google via Sitemap extensions for [Video](https://support.google.com/webmasters/answer/80471), [Images](https://support.google.com/webmasters/answer/178636?hl=en) and [News](https://www.google.co.uk/schemas/sitemap-news/0.9/). In addition, Google [recommends](https://developers.google.com/webmasters/videosearch/schema) using the schema.org compliant on-page markup, just as we do.
