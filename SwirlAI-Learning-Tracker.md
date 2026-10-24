# SwirlAI learning tracker

Last updated: 24 October 2026 (UK)

## Teaching agreement

- Follow the instructor's teaching sequence. Use the live-session transcript and weekly slides to establish what was taught, and map those topics to the Maven chapters.
- Immediate priority: finish the gaps in the first Sprint Review before resuming the unfinished RAG chapter. Do not switch tracks silently.
- Before teaching a Maven chapter, read its actual contents. Before declaring completion, compare coverage with the source.
- Explain one concept at a time in plain language. Keep using our fictional shop returns-policy assistant; this is our teaching example, not the instructor's project.
- Label extra background clearly. Avoid introducing adjacent topics simply because they are related.
- Distinguish explained concepts from independently demonstrated understanding and practical implementation.
- At each checkpoint, record the current source, what was covered, unresolved questions, and the exact next step. Update this same tracker rather than creating duplicate trackers.
- Read this tracker when resuming. Update it after a substantive learning segment or change of direction; preserve the existing history.

## Maven source tracking agreement

- Maven Cohort 6 is the primary course source: https://maven.com/swirl-ai/end-to-end-ai-engineering/6/home
- At the start of future study sessions, independently check Maven for newly available chapters, recordings, transcripts, slides, hands-on instructions, announcements, and deadlines. Do not rely on the user to report what the instructor covered.
- Read available source content before describing session coverage. A session title, date, or recording link alone does not establish what was taught. Mark unavailable or unread transcripts explicitly.
- Maintain separate evidence for instructor coverage, topics explained together, demonstrated understanding, and practical implementation.
- Keep this tracker updated with verified source links, gaps, and the next lesson. Do not infer learning completion from Maven checkboxes or code completion from commit titles.
- Verified on 24 October: the 19 October Bootcamp Prep is a separate one-hour event. Sprint 0 contains six core readings, two optional readings, the 20 October Review, 22 October Build Lab, and capstone due 25 October. The separate Sprint 0 hands-on section contains 12 items.
- Background monitoring has not been configured. Browser sign-in may require renewal; disclose access blockers without claiming sources were checked.

## Exact resume point

**Track:** First live Sprint Review: Project framing, tooling overview and RAG foundations.

**Current section:** Evaluation-driven development, approximately 00:47-00:56 in the transcript.

**Last explanation:** Production signals such as thumbs-down feedback lead us to inspect traces, group similar failures into failure-mode clusters, and define evaluations for those patterns. Our examples were unsupported refund promises and confusing instructions.

**Next step:** Briefly check understanding of failure-mode clusters; explain how a diagnosed failure informs a targeted fix and prioritisation. Then continue to online versus offline evaluations, beginning around 00:57. Build on the user's existing understanding of guardrails, groundedness, and monitoring instead of repeating everything.

**Paused:** Maven chapter "What is RAG?". Do not move to the next chapter until this session catch-up is complete and the remaining RAG chapter gaps have been covered.

## Instructor session sequence and progress

| Order | Section | Status |
|---|---|---|
| 1 | AI product lifecycle: pre-production, ship, observe, diagnose, improve | Covered and recapped using instructor's structure |
| 2 | Initial evaluation datasets: historical human examples and synthetic examples | Explained; do not assume practical completion |
| 3 | Production signals, trace review, failure-mode clusters, new evals | Explained most recently; checkpoint pending |
| 4 | Targeted improvements and prioritising fixes | Needs explicit coverage in session sequence |
| 5 | Online versus offline evals; defining versus running evals; regression datasets | Discussed earlier in parts; consolidate against transcript |
| 6 | LLM token generation, vocabulary, scores/probabilities, sampling | Not yet systematically taught |
| 7 | Temperature, top-p, top-k | Not yet systematically taught; distinguish sampling top-k from retrieval top-k |
| 8 | Reasoning models and reasoning effort | Not yet systematically taught |
| 9 | Prefill, decoding, streaming, TTFT, inter-token and end-to-end latency | Basic latency terms explained; full session section remains |
| 10 | Return to RAG and its evaluation | Resume after catch-up; transcript deferred detailed RAG to the next live session |

## Maven chapter map

| Chapter | Status | Notes |
|---|---|---|
| Understanding the AI product lifecycle | Main concepts covered | Read from Maven; supporting jargon PDF created |
| Tooling overview (LangGraph, vector DBs, LLM APIs, etc.) | Named tools covered at introductory level | Read from Maven; supporting jargon PDF created |
| What is RAG? | In progress, paused | Full chapter read; substantial gaps remain despite broad foundational discussion |
| Embedding models & vector DB integration | Not started as a chapter | Some prerequisite concepts taught early; this does not mean chapter completion |
| Implementing basic observability foundations | Not started as a chapter | General concepts discussed |
| Evaluating basic end-to-end retrieval and generation | Not started as a chapter | General concepts discussed |
| Optional AI Project Canvas / success metrics and evaluation frameworks | Not systematically covered | No completion claim |
| Sprint 0 hands-on section / capstone | Not verified | Do not infer completion from conceptual discussion or Maven checkboxes |

## RAG coverage already established

- Retrieval, augmentation, generation; RAG is an approach, not a single tool.
- Separate preparation/indexing and per-question answering pipelines.
- Extract and clean text, chunk it, embed it, and store original text with vectors and metadata.
- Embed a new question at query time; unchanged document chunks are not re-embedded for each question.
- Embedding versus generative model roles; compatible query/document embeddings; basic dimensions and similarity.
- Similarity scores are not calibrated probabilities of policy applicability.
- Top-k retrieval; missing exceptions; chunk overlap; parent-child retrieval introduced briefly.
- RAG does not always need a vector database; keyword, SQL, and hybrid retrieval discussed at introductory level.
- Metadata versus user-facing citations; source text supports claims, citation labels alone do not.
- Groundedness versus correctness and answer relevance; retrieval relevance versus recall.
- Groundedness is not automatically scored on every answer. A configured evaluator measures it; an inline guardrail can act on the result before delivery.
- Source/index freshness and replacing outdated information.
- Retrieval abstraction; choosing chunk granularity through representative tests.
- Representation alignment and query reformulation before retrieval or on retry.
- Dynamic context injection.

## RAG chapter gaps to finish after session catch-up

Use the actual Maven chapter order and re-check the source as needed. Some items were introduced but not explored adequately.

- Sliding versus tumbling windows; parent-child retrieval checkpoint.
- Domain-appropriate and context-sensitive embeddings; embedding fine-tuning as an alignment technique at a conceptual level.
- Vector database selection, hosting trade-offs, metadata pre/post-filtering, indexing speed/accuracy trade-offs.
- Cosine similarity, dot product, Euclidean distance; ANN terminology; metadata-first versus ANN-first search.
- Retrieval heuristics: freshness, diversity, authoritative sources.
- Generative model selection and RAG prompt design, including security considerations.
- Feedback loops for improving components.
- Architecture: modular composition, parametric versus external memory, adaptive context shaping, reranking, compression, fusion, iterative retrieval.
- When RAG is appropriate versus unnecessary; labelled data versus raw documents.
- Trade-offs: latency, limited context, lost-in-the-middle, multi-hop complexity, semantic versus exact matching, hallucination despite retrieval.

## Demonstrated understanding and clarifications

- User correctly distinguished retrieval failure from generation failure when correct evidence was supplied.
- User understands that groundedness checks compare an answer with retrieved source text, not the citation itself.
- User understands only the new question is embedded at query time and changing the answering LLM alone does not require rebuilding embeddings.
- User understands eval datasets contain test cases, and fixes must be checked against other cases for regressions.
- Do not describe adding an eval case as model training or automatic learning.
- Keep generation separate from delivery: a completed answer can be checked before being shown.
- Live-session technical claims may need qualification; explain the instructor's intent without repeating inaccuracies as universal rules.

## Sources and existing references

- First Sprint Review transcript: Pasted text.txt, shared by user. Approximate timestamps are navigation aids, not exact quotations.
- Maven Cohort 6: Understanding the AI product lifecycle; Tooling overview; What is RAG? were read in this conversation.
- Uploaded introductory deck: Cohort-6-Intro to End-to-End AI Engineering Bootcamp.pdf. Do not assume this is the weekly Sprint 0 slide deck.
- Weekly slides are shared after the week's second live session, according to the transcript; do not claim receipt until actually supplied.
- Existing revision files: SwirlAI-AI-Product-Lifecycle-Jargon-Guide.pdf; SwirlAI-Tooling-Overview-Jargon-Guide.pdf.
- This tracker records learning progress; it does not change completion state in Maven.

## Change log

- 24 October 2026: Created tracker after inconsistent switching between Maven order and session catch-up. Recorded agreed priority, coverage, gaps, and resume point. No new lesson taught during tracker creation.
