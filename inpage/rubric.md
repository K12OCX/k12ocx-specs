---
layout: page
title: Rubric
parent: In page markup
---

# Rubric

Grading rubrics can be referenced in the domain model via the [ASN Rubrics specification](http://standards.asn.desire2learn.com/rubric.html). In particular, the types `asn:Rubric`, `asn:RubricCriterion`, and `asn:CriterionLevel` can be used to express a generic rubric.

## Example

```json
{
  "@context": [
    "http://schema.org/",
    {
      "oer": "http://oerschema.org/",
      "ocx": "https://github.com/K12OCX/k12ocx-specs/",
      "asn": "http://purl.org/ASN/schema/core/"
    }
  ],
  "@type": ["asn:Rubric", "Thing"],
  "@id": "10d3_Discussion Rubric",
  "name": "S1_L1_A3: Discuss the Title Part 2",
  "asn:hasCriterion": [
    {
      "@type": ["asn:RubricCriterion", "Thing"],
      "@id": "10d3_Discussion Rubric_Reading Look-For 1",
      "name": "Reading Look-For 1",
      "description": "How well does the student understand X?",
      "asn:hasLevel": [
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 1_3",
          "asn:benchmark": "Meets Criteria",
          "asn:score": 3,
          "description": "Student has successfully built the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 1_2",
          "asn:benchmark": "Continue Practice",
          "asn:score": 2,
          "description": "Student should continue building the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 1_1",
          "asn:benchmark": "Needs Support",
          "asn:score": 1,
          "description": "Student would benefit from additional instruction to build the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 1_0",
          "asn:benchmark": "Insufficient Evidence",
          "asn:score": 0,
          "description": "Student did not respond to the prompt and/or did not provide enough of a response to evaluate."
        }
      ]
    },
    {
      "@type": ["asn:RubricCriterion", "Thing"],
      "@id": "10d3_Discussion Rubric_Reading Look-For 2",
      "name": "Reading Look-For 2",
      "description": "How well does the student understand X?",
      "asn:hasLevel": [
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 2_3",
          "asn:benchmark": "Meets Criteria",
          "asn:score": 3,
          "description": "Student has successfully built the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 2_2",
          "asn:benchmark": "Continue Practice",
          "asn:score": 2,
          "description": "Student should continue building the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 2_1",
          "asn:benchmark": "Needs Support",
          "asn:score": 1,
          "description": "Student would benefit from additional instruction to build the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Reading Look-For 2_0",
          "asn:benchmark": "Insufficient Evidence",
          "asn:score": 0,
          "description": "Student did not respond to the prompt and/or did not provide enough of a response to evaluate."
        }
      ]
    },
    {
      "@type": ["asn:RubricCriterion", "Thing"],
      "@id": "10d3_Discussion Rubric_Discussion Look-For 1",
      "name": "Discussion Look-For 1",
      "description": "Students develop and clearly communicate evaluative claims that represent valid, evidence-based analysis.",
      "asn:hasLevel": [
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 1_3",
          "asn:benchmark": "Meets Criteria",
          "asn:score": 3,
          "description": "Student has successfully built the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 1_2",
          "asn:benchmark": "Continue Practice",
          "asn:score": 2,
          "description": "Student should continue building the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 1_1",
          "asn:benchmark": "Needs Support",
          "asn:score": 1,
          "description": "Student would benefit from additional instruction to build the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 1_0",
          "asn:benchmark": "Insufficient Evidence",
          "asn:score": 0,
          "description": "Student did not respond to the prompt and/or did not provide enough of a response to evaluate."
        }
      ]
    },
    {
      "@type": ["asn:RubricCriterion", "Thing"],
      "@id": "10d3_Discussion Rubric_Discussion Look-For 2",
      "name": "Discussion Look-For 2",
      "description": "Students use examples, evidence, descriptions, devices, techniques, visuals/graphics, and multimedia elements to develop arguments, analyses, explanations, narratives, and presentations.",
      "asn:hasLevel": [
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 2_3",
          "asn:benchmark": "Meets Criteria",
          "asn:score": 3,
          "description": "Student has successfully built the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 2_2",
          "asn:benchmark": "Continue Practice",
          "asn:score": 2,
          "description": "Student should continue building the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 2_1",
          "asn:benchmark": "Needs Support",
          "asn:score": 1,
          "description": "Student would benefit from additional instruction to build the knowledge, skill, or habit indicated by the look-for."
        },
        {
          "@type": ["asn:CriterionLevel", "Thing"],
          "@id": "10d3_Discussion Rubric_Discussion Look-For 2_0",
          "asn:benchmark": "Insufficient Evidence",
          "asn:score": 0,
          "description": "Student did not respond to the prompt and/or did not provide enough of a response to evaluate."
        }
      ]
    }
  ]
}
```
