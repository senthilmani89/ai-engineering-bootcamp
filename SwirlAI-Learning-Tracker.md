# SwirlAI learning tracker

Last updated: 25 October 2026 (UK)

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

**Weekly order:** Actual live-session sequence, explained from foundations; then cross-check Maven chapters for uncovered topics; then weekly hands-on, with supporting explanations.

**Current status:** Tuesday 20 October transcript audited end-to-end on 25 October, including Q&A (00:00:26–02:03:01). The earlier declaration that Tuesday was complete was premature. Core topics have been explained, but the audited gaps below remain.

**Next step:** Restart Tuesday coverage in source order, briefly checking established concepts and teaching missing jargon. Begin with deterministic tasks versus AI, subject matter experts, and business metrics versus technical evals; then instrumentation/monitoring and improvement levers; then evaluation examples and Q&A; finally remaining LLM/latency details.

**Already explained:** Lifecycle overview; PoC/prototype; initial historical/synthetic eval examples; failure clusters; targeted fixes/prioritisation; online/offline evals; regression testing; defining versus running evals; tokens/logits/softmax; greedy/sampling, temperature/top-k/top-p; reasoning models/effort; prefill, decoding, TTFT, inter-token/end-to-end latency and streaming. User correctly classified a replay experiment as offline, and answered token-count and top-p checks. Do not infer broad independent mastery.

**PDF boundary:** The 6-page foundations PDF covers lifecycle and LLM foundations before the user's evaluation recap request. The separate 5-page evaluation PDF records explanations given, but does not yet cover every Tuesday transcript example. Neither is a verified complete Tuesday reference.

## Tuesday transcript coverage audit — 20 October

Source:
https://maven.com/swirl-ai/end-to-end-ai-engineering/6/syllabus/modules/9e2def/5ef922f1ba620782

Audited full available Audio Transcript on 25 October. Timestamps are approximate. A transcript audit verifies recorded speech, not every visual slide or the absence of transcription errors.

| Time | Actual source topic | Our teaching / required follow-up |
|---|---|---|
| 00:00–00:09 | Weekly repo releases, student API projects/keys and course credit, GitHub invitations, weekly slides | Administrative context; not proof that the user's setup/credit works |
| 00:09–00:15 | Problem fit, deterministic tasks versus AI, simple PoC, SME review, business success measures, prototype and release | Lifecycle/PoC taught; explicitly define deterministic, SME, business metrics versus evals |
| 00:15–00:23 | Instrumentation, metadata, tracing, feedback-to-trace linkage, observability, monitoring, operational/eval alerts, diagnosis, improvement levers, flywheel | Partial; teach instrumentation/metadata/monitoring distinctions and improvement jargon |
| 00:23–00:29 | Fine-tuning outside main bootcamp, PoC/prototype Q&A, human-controlled changes and quality gates | Main human-control concept taught; define fine-tuning/context engineering/quality gate |
| 00:29–00:33 | Operational metrics, platform/ops versus AI engineer responsibilities, AI gateway, FDE example | Not systematically taught; brief role/tool terminology explanation |
| 00:33–00:39 | Runtime recovery with stack trace versus persistent context updates, prompt registry/context files, blast radius and risk routing, AI-assisted error analysis, CI/CD | Mostly missed; explain only at conceptual level and distinguish recovery from learning |
| 00:39–00:47 | Eval-driven development, nondeterminism, initial evals, synthetic key dimensions, historical/golden data, evaluation versus training, TDD analogy | Core dataset ideas taught; key dimensions, golden data, nondeterminism and TDD analogy need explicit coverage |
| 00:47–00:52 | Thumbs-down/comments, sampled trace review, silent failures, token-growth signals, failure clusters | Clustering taught; add sampling, retries, escalations, no replies and silent failure examples |
| 00:52–00:56 | Hallucinated citations, wrong tools, malformed tool/output data, missed retrieval, off-brand tone; matching evals/fixes | Major gap: citation/groundedness, tool selection correctness, schema validation, rubric and LLM-as-judge, reranking/postprocessing/style guides |
| 00:56–01:04 | Define vs run, online/offline, hot path, upstream/downstream regressions, signals vs evals, groundedness example | Main distinctions taught; hot path/upstream/downstream and signal-versus-eval worked example remain |
| 01:04–01:12 | Software/AI roles, what data online evals require, actionable checks, regression dataset reuse, holdout/judge calibration mentioned and deferred | Regression/define-run taught; add actionable checks, reference needs, holdout terminology as preview only |
| 01:12–01:16 | A/B engagement/business metrics versus evals, risk-dependent evaluation effort, free-form chat Q&A | Missed; explain engagement does not establish correctness and distinguish instructor trade-off discussion from universal rule |
| 01:16–01:24 | Vocabulary probabilities, sampling, temperature/top-p/top-k, model parameters versus inference settings | Core taught; explicit learned weights versus per-call settings comparison useful |
| 01:24–01:37 | Temperature zero still not guaranteed reproducible, numerical/hardware/batching caveats, judge/tool-call examples, per-call configuration, defaults, tune one control at a time, top-k=1 | Several gaps: reproducibility caveat, top-k=1, per-call settings, conservative tuning practice; qualify provider-dependent advice |
| 01:37–01:48 | Chain-of-thought prompting history, simplified reasoning training/RL/verifiable tasks, effort choices, evaluate none vs medium, hidden reasoning and speculative provider internals | Reasoning/effort taught; chain-of-thought label, training-vs-inference, high-level RL and empirical effort comparison remain; do not present speculation as fact |
| 01:48–01:50 | Decision / System 1 models briefly introduced, classification and structured output | Mentioned only, deferred by instructor; provide short vocabulary preview, not a full invented lesson |
| 01:50–01:56 | Prefill/forward pass, decoding, TTFT/ITL/end-to-end, latency percentiles, reasoning within decoding, corrected slide | Core latency taught; forward pass, p50/p95/p99 and throughput remain |
| 01:56–01:59 | Hosted versus self-hosted performance levers, model size/SLM/MoE | Mostly missed; brief explanations with qualifications; smaller does not universally guarantee faster |
| 01:59–02:03 | RAG/context windows scheduled for Thursday, Discord/slides, tokenisation before prefill | Keep full RAG/context-window lesson in Thursday; clarify tokenisation versus prefill |

### Technical qualifications to preserve

- Tuesday mentions RAG-related examples (citations, grounding, reranking); full RAG foundations are deferred to Thursday. Do not say RAG was never mentioned Tuesday.
- A hallucinated citation (invented/misassigned source reference) and an unsupported answer claim are related but distinct. The instructor's example groups them loosely.
- Unit tests still apply to deterministic components of an AI application; statistical evals complement them.
- Online evaluations are not inherently all LLM-based, and appropriateness depends on available evidence. Some tool-call checks can run live; do not repeat a blanket impossibility claim.
- Top-p includes the token crossing the cumulative threshold; temperature zero/top-k=1 do not guarantee identical hosted responses.
- Low temperature can favour consistency where supported; 'always best' and default values are not universal.
- Reasoning training explanation was explicitly simplified. Provider routers/multiple internal reasoning chains were speculation.
- Percentile '15th' in the transcript may be a transcription error; use correctly explained p50/p95/p99 rather than asserting what was spoken.
- Model/provider performance, available settings and pricing require official current documentation when discussed specifically.

## Verified Thursday session source — 22 October

Checked on 25 October 2026 directly in Maven's Audio Transcript panel:
https://maven.com/swirl-ai/end-to-end-ai-engineering/6/syllabus/modules/9e2def/e31694031d20cce9

The transcript is accessible and extends to approximately 02:03:40. Reviewed substantial transcript sections across the session; this is a topic map, not a claim of line-by-line review of every utterance.

| Approximate time | Instructor coverage | Learning follow-up |
|---|---|---|
| 00:06–00:09 | Live sessions provide theory, system walkthroughs and Q&A; implementation is in weekly prerecorded hands-on videos | Use hands-on videos as the practical checklist |
| 00:09–00:14 | Corrected latency recap: prefill, decoding, first visible token and reasoning tokens | Consolidate with our current latency lesson |
| 00:14–00:39 | Context limits, attention intuition, masking, FlashAttention, KV cache and prompt caching | Not yet taught systematically; deep transformer maths explicitly not required |
| 00:40–00:56 | Why RAG; private/current knowledge, context budget, retrieval sources, access control, suitability and privacy questions | Reconcile with existing RAG understanding |
| 00:57–01:09 | Naive RAG pipeline and choices: LLM, prompts, embedding model, vector DB, search, chunking and business heuristics | Foundations covered in parts; design decisions remain |
| 01:10–01:30 | Model routing, context/cost trade-offs, data preparation and updates, structured retrieval, SQL templates and tools | Teach missing concepts at foundational level |
| 01:31–01:35 | Traces, spans, parent spans, recorded inputs/outputs, versions, token usage and costs | Not yet systematically taught |
| 01:35–01:39 | Reference-based evaluation, subjective evaluation and calibration of LLM judges | Consolidate evaluation foundations |
| 01:39–02:01 | Precision@k, recall@k, F1, MRR, context relevance/recall, faithfulness, generation evaluation and framework-specific definitions | Most details remain |
| 02:02 | Code/LangSmith walkthrough deferred to the next week | Do not mark as covered in this live session |

Weekly deck located: **Cohort-6-Sprint-0**, 147 pages:
https://www.canva.com/design/DAHYdCRnCVE/KDQThdjtuDjaaKHIWHw3Ow/edit
Deck opened and title/page count verified; full slide-by-slide review remains pending.

Technical qualification backlog: transcript contains transcription errors and broad claims. When teaching, distinguish attention scores from cached K/V tensors, quadratic from exponential growth, KV caching from cross-request prefix caching, model-specific token limits/pricing from universal rules, and answer relevance from context relevance. Verify current provider claims against official documentation when relevant.

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
- Sprint 0 weekly Canva deck located and opened on 25 October; 147 pages. Full slide review pending.
- Existing revision files: SwirlAI-AI-Product-Lifecycle-Jargon-Guide.pdf; SwirlAI-Tooling-Overview-Jargon-Guide.pdf.
- This tracker records learning progress; it does not change completion state in Maven.

## Change log

- 24 October 2026: Created tracker after inconsistent switching between Maven order and session catch-up. Recorded agreed priority, coverage, gaps, and resume point. No new lesson taught during tracker creation.

- 25 October 2026: Recorded foundational learning progress and verified Thursday transcript topic map and weekly deck availability. No Maven completion checkboxes changed.

- 25 October 2026: Audited Tuesday's full available transcript, corrected premature completion status, and recorded all main sections, Q&A gaps and technical qualifications. PDFs remain explanations given, not complete source coverage.
