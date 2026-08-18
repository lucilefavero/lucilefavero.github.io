---
layout: default
title: Research
permalink: /research/
description: >-
  The problem, the position, MAIKE as the system, an ethics-approved classroom
  study as the evidence, and where the work goes next: empirical research on
  how AI affects cognition, learning, and agency.
banner_title: Research
banner_sub: >-
  The problem, the position, the system, the evidence, and where it goes next.
---

## The problem

Students increasingly work with AI tools that hand them answers. That invites passive
consumption instead of active thinking, and it carries real risks: cognitive offloading,
weakened reasoning, reduced autonomy and self-confidence, and pressure on academic
integrity. If we aim to cultivate critical thinkers, we must critically evaluate the tools
we use, and how we use them.

## The position: scaffold, do not substitute

My co-authors and I argue that AI in education should be judged by whether it develops
human reasoning rather than replaces it. In a position paper at the **ACM AI Leadership
Summit 2026**, *From Substitution to Scaffolding: Breaking the Self-Reinforcing Harm Cycle
of AI in Education (and Beyond)*, we propose this as a guiding principle for human-centered
AI. Two companion papers develop the argument: [*Do AI Tutors Empower or Enslave
Learners?*](https://arxiv.org/abs/2507.06878) (opening talk of the GenAIHEd workshop, AIED
2025) and [*AI in Education Beyond Learning Outcomes: Cognition, Agency, Emotion, and
Ethics*](https://arxiv.org/abs/2602.04598), which proposes a four-dimensional framework for
evaluating educational AI beyond test scores.

## MAIKE: the system

[MAIKE](https://ellisalicante.org/maike) is an open-source Socratic tutoring system I
created and lead. Instead of answering, it analyzes a student's argumentative essay through
argument mining and responds with adaptive critical questions, prompting the learner to
reflect, articulate, and revise their reasoning through meaningful conversation. It is
designed to support, not supplant, student thinking.

The concept was first presented at the CAIHu Bridge at AAAI 2024; the full system at the
[Tools for Thought workshop at ACM CHI 2026](https://ai-tools-for-thought.github.io/workshop/documents/chi26/Favero_et_al_Maike_Educational_Chatbot_TfT_CHI26.pdf).
MAIKE runs on small open-source language models, which keeps it inexpensive, transparent,
and deployable in real schools. [Source code](https://github.com/ellisalicante/chatbot_maike/tree/master)
is public.

## The evidence: a classroom study

I design and run empirical studies with human participants, not simulations. In the most
recent one, secondary-school students revised argumentative essays with either MAIKE or a
conventional answer-giving chatbot:

<ul class="study-facts">
  <li><strong>Ethics-approved</strong> classroom study</li>
  <li><strong>~60</strong> secondary-school students</li>
  <li><strong>Between-subjects</strong> design: MAIKE vs. conventional chatbot</li>
  <li><strong>Pre/post</strong> argumentative essays</li>
  <li><strong>Full dialogue logs</strong> for interaction analysis</li>
</ul>

The study measures whether Socratic interaction improves the quality of students' written
argumentation and critical thinking relative to a conventional chatbot, and the collected
essays and dialogues ground the analysis papers below.

## The NLP underpinnings

Evaluating reasoning at scale requires machinery for reading arguments. I build it with
small open-source LLMs:

- **Argument mining**: identifying, classifying, and assessing argument components in
  student essays ([CMNA 2025](https://ceur-ws.org/Vol-4166/paper2.pdf),
  [AI4ED @ AAAI 2025](https://ellisalicante.org/assets/publications/Favero2025Argument.pdf)).
- **Critical-question generation**: the [system](https://aclanthology.org/2025.argmining-1.31/)
  that ranked 1st of 13 international teams in the CQs-Gen shared task at ACL 2025, with a
  two-stage pipeline combining creativity, analysis, and critical evaluation.
- **Essay scoring**: trait-level, ordinal scoring of argumentative essays rather than
  holistic averages ([arXiv:2602.04604](https://arxiv.org/abs/2602.04604)), plus a
  [critical scoping review](https://www.researchsquare.com/article/rs-8632843/v1) of LLM-based
  essay assessment.

## Where this goes

After the PhD, my program is empirical: studying how AI systems affect human cognition,
learning, and agency, with the study-design, measurement, and NLP machinery above, and
with real participants. The four-dimensional evaluation framework (cognition, agency,
emotion, ethics) is the agenda; classroom-scale experiments are the method.

The bridge is already built: from March to September 2026 I am a visiting doctoral
researcher at the **ML4ED lab, EPFL** (Prof. Tanja Käser), funded by a competitive ELIAS
mobility grant. There I presented the classroom-study design and continued the
collaboration that runs through all my PhD work.

## Supervision, service, and funding

**Student supervision.**
{% assign sup = site.data.service.supervision %}
{% for s in sup %}{{ s.name }}: {{ s.detail }}{% if s.link %} ([{{ s.link_label | default: "Link" }}]({{ s.link }})){% endif %}{% unless forloop.last %}; {% endunless %}{% endfor %}.

**Organization.** {% for o in site.data.service.organization %}{{ o }}{% unless forloop.last %}; {% endunless %}{% endfor %}.

**Peer review.** {% for r in site.data.service.reviewing %}*{{ r }}*{% unless forloop.last %} &middot; {% endunless %}{% endfor %}.

**Competitive mobility funding.** {% for f in site.data.service.funding %}{{ f }}{% unless forloop.last %}; {% endunless %}{% endfor %}.
