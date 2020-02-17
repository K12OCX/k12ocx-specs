---
layout: page
title: Auxiliary Types
parent: In page markup
---

# Auxiliary Types

Below we provide a quick reference, for some auxiliary type properties used on the OER Schema Classes above.

## oer:LearningComponent

  same as `Lesson` | `Topic/Module` | `Activity` | `Unit` | `SupportingMaterial`

## oer:CourseSyllabus

  see [http://oerschema.org/CourseSyllabus](http://oerschema.org/CourseSyllabus)

## oer:Topic

Defined as "the context of a LearningComponent". Treat as equivalent to a subclass of [schema.org/Intangible](https://schema.org/Intangible).

{% include props.md schematype="oer_topic" %}

## oer:LearningObjective

!!! note "Editor's Note"
    I am not sure if we use these, or whether we should use these. They are a little under-defined, but they do fill a hole currently in schema.org.

Treat as equivalent to a subclass of  [schema.org/Intangible](https://schema.org/Intangible).

{% include props.md schematype="oer_learningobjective" %}

## Person

{% include props.md schematype="person" %}

## Organization

{% include props.md schematype="organization" %}
