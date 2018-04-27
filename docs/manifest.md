
This proposal aims to provide a technical strategy for organizations to share and find OER content through the web.

For discovering and consuming content from others, we use a **manifest** specification to index these resources metadata and relations.

Our approach is to use traditional well-adopted semantic HTML markup to share information about content. Primarily this involves using **OER Schema** (which adds a vocabulary of terms that expands the Google developed  **schema.org**) metadata markup alongside a variant of another web standard called **sitemaps** to enable easy content discovery and hierarchy mapping.

A similar approach has already been adopted by Google via Sitemap extensions for Video, Images and News. In addition, Google [recommends](https://developers.google.com/webmasters/videosearch/schema) using the schema.org compliant on-page markup, just as we do.

For clarity and ease of use, we propose Sitemap extended vocabulary that points to content and does not describe it.

## Technical Specification

We extend [Sitemap](https://www.sitemaps.org/protocol.html) protocol with a new namespace `xmlns:ocx` that introduces following tags:

| Tag       | Type | Required | Description                                 |
| --------- | ----- | -------- | ------------------------------------------- |
| `ocx:type` | Text \| URL | required | Indicates that the URL has OCX compatible content and giving information on specific OER type used to describe the content. Accepted values are existing *OER schema* or *schema.org* types or well-defined, publicly available, not-yet-accepted sub-types of *schema.org* types. |
| `ocx:format` | Text | optional | The expected format of content metadata. Purpose of this tag is to allow [crawlers] to further filter sitemap URLs and crawl only pages that have relevant metadata and have it in a format [crawler] is capable of processing. Accepted values: `JSON-LD`, `Microdata` and `RDFa` |
| `ocx:loc` | URL | optional | Provide the URL where metadata is located. Unless metadata is placed on a web page different from content page, this tag can be skipped.  |
| `ocx:xpath` | Text | optional | Provide where exactly the metadata is located inside document. The value should be a `HTML XPath` |
| `ocx:name` | Text | optional | Resource name or title |
| `ocx:teaser` | Text | optional | Small text describing the resource content or objective |
| `ocx:parent` | Text \| URL | optional | identifier or URL (`loc`) for the parent resource. |
| `ocx:image` | URL | optional | An image or thumbnail for the resource. |

This extended sitemap namespace might be included in a site's main `/sitemap.xml` file or it might be included in a dedicated sitemap-structured file (index) with a different name such as `/ocx.xml`.

- Each sitemap file that you provide must have no more than 50,000 URL elements. Keep in mind that if you are adding optional tags, you may hit the 50MB uncompressed limit before you hit the 50,000 entries limit.

- If you want to list more than 50,000 URLs, you must create multiple Sitemap files then list each of them in a Sitemap index file (sitemaps does not support nesting of index files).

- Make sure that your robots.txt file isn't blocking any of the items included in each sitemap entry

- Prefer using full URLs, i.e. locations for content or landing-pages that require 'hash marks' or fragment identifier are discouraged

## Examples

- Minimal example:

```xml
<?xml version="1.0" encoding="utf-8" ?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:ocx="http://sitemap.ocx.org/v/1.0">

  <url>
    <loc>http://example.com/</loc>
  </url>

  <url>
    <loc>http://example.com/articles/android-7-released</loc>
    <ocx:ocx>
      <ocx:type>http://oerschema.org/Lesson/</ocx:type>
      <ocx:format>JSON-LD</ocx:format>
      <ocx:xpath>/html/head/script[@type="application/ld+json"]</ocx:xpath>
    </ocx:ocx>
  </url>

  <url>
    <loc>http://example.com/resources/class-activities/7</loc>
    <ocx:ocx>
      <ocx:type>http://oerschema.org/Activity/</ocx:type>
      <ocx:format>RDFa</ocx:format>
      <ocx:loc>http://example.com/resources/class-activities/7</ocx:loc>
      <ocx:xpath>/html/body/main/section[@class="activity"]</ocx:xpath>
    </ocx:ocx>
  </url>
</urlset>
```

- The manifest below uses sample data from **UnboundEd**:

```xml
  <url>
    <loc>http://unbounded.org/ela</loc>
    <lastmod>2017-08-14T06:04:13.98+00:00</lastmod>
    <ocx:ocx>
        <ocx:type>http://oerschema.org/Topic</ocx:type>
        <ocx:format>JSON-LD</ocx:format>
        <ocx:xpath>//script[@type="application/ld+json"]</ocx:xpath>
        <ocx:name>ELA Curriculum Map</ocx:name>
    </ocx:ocx>
  </url>
  <url>
    <loc>http://unbounded.org/ela/grade-2</loc>
    <lastmod>2017-08-14T06:04:46.30+00:00</lastmod>
    <ocx:ocx>
        <ocx:type>http://oerschema.org/Course</ocx:type>
        <ocx:format>JSON-LD</ocx:format>
        <ocx:xpath>//script[@type="application/ld+json"]</ocx:xpath>
        <ocx:name>Grade 2 English Language Arts</ocx:name>
        <ocx:teaser></ocx:teaser>
        <ocx:parent>http://unbounded.org/ela</ocx:parent>
    </ocx:ocx>
  </url>
  <url>
    <loc>http://unbounded.org/ela/grade-2/module-1</loc>
    <lastmod>2017-08-14T06:10:23.25+00:00</lastmod>
    <ocx:ocx>
        <ocx:type>http://oerschema.org/Module</ocx:type>
        <ocx:format>JSON-LD</ocx:format>
        <ocx:xpath>//script[@type="application/ld+json"]</ocx:xpath>
        <ocx:name>Listening and Learning</ocx:name>
        <ocx:teaser></ocx:teaser>
        <ocx:parent>http://unbounded.org/ela/grade-2</ocx:parent>
    </ocx:ocx>
  </url>
  <url>
    <loc>http://unbounded.org/ela/grade-2/module-1/unit-1</loc>
    <lastmod>2017-08-15T19:27:17.97+00:00</lastmod>
    <ocx:ocx>
        <ocx:type>http://oerschema.org/Unit</ocx:type>
        <ocx:format>JSON-LD</ocx:format>
        <ocx:xpath>//script[@type="application/ld+json"]</ocx:xpath>
        <ocx:name>Fairy Tales and Tall Tales</ocx:name>
        <ocx:teaser>Students are introduced to classic fairy tales and tall tales, and the lessons they teach.</ocx:teaser>
        <ocx:parent>http://unbounded.org/ela/grade-2/module-1</ocx:parent>
    </ocx:ocx>
  </url>
  <url>
    <loc>http://unbounded.org/documents/3</loc>
    <lastmod>2018-02-05T16:06:35.17+00:00</lastmod>
    <ocx:ocx>
        <ocx:type>http://oerschema.org/Lesson</ocx:type>
        <ocx:format>JSON-LD</ocx:format>
        <ocx:xpath>//script[@type="application/ld+json"]</ocx:xpath>
        <ocx:name>The Fisherman and His Wife</ocx:name>
        <ocx:teaser>Students will review characteristics of fairy tales.</ocx:teaser>
        <ocx:parent>http://unbounded.org/ela/grade-2/module-1/unit-1</ocx:parent>
    </ocx:ocx>
  </url>
```

