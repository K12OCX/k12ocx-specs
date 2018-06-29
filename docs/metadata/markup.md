## Semantic OER Markup

For the in-page semantic markup we simply use already existing standards, mostly derived from schema.org. We recommend using the **[OER Schema](http://oerschema.org/docs/schema.html)** extended vocabulary.
But given that each content provider has their own subset of hierarchies, standards and content-specific data, we try to provide a minimum viable set of recommended data structure for sharing OCX resources across systems.


### Mapping common OER metadata

![ocx - model schema](https://docs.google.com/drawings/d/e/2PACX-1vRFmqDy20wkWNhS4Iat6vRFLGfuhq9oTbayuG3_mJA9V46s6OT5oz8itEVyBYrO4YQCmcBH2qljgW6e/pub?w=960&h=720)

Below we make a quick alignment of different OER providers with this default OER Schema suggestion.

|       | Course | Module | Unit | Lesson | Activity | Supporting Material | Assessment |
|-------|--------|--------|------|--------|----------|---------------------|------------|
|**UnboundEd**| Grade | Module | Unit / Topic | Lesson | Activity | Materials / Downloads | Assessment (it's a Unit) |
|**IM**| Grade/Course | Unit | Section | Lesson | Activity | Materials (teacher, family, course guide) | Unit-level Assessments |
|**Open Up**| Grade | Unit | ? (maybe Section?) | Lesson | Activity | Materials (teacher, family, course guide) | ? |
|**EngageNy**| Curriculum | Module / Strand | Unit / Topic / Domain | Lesson / Document | ? | Material / Download | ? |

### OER Schema Properties

For the properties tables we'll use the following vocabularies:

| Prefix |  Vocabulary                    |
|--------|--------------------------------|
| oer    | [http://oerschema.org/](http://oerschema.org/) |
| schema | [http://schema.org/](http://schema.org/) |
| cc     | [http://creativecommons.org/ns#](http://creativecommons.org/ns#) |

OERSchema types:

- [Course](/metadata/course)
- [Module](/metadata/module)
- [Unit](/metadata/unit)
- [Lesson](/metadata/lesson)
- [Activity](/metadata/activity)
- [Assessment](/metadata/assessment)
- [SupportingMaterial](/metadata/supportingmaterial)
- [Auxiliary Types](/metadata/auxiliary-types)


