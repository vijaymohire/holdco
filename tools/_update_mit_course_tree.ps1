# ============================================================
# HoldCo Week 2
# MIT OLL Course Tree Update
# ============================================================
#
# Purpose:
# Update the existing MIT Courses + QAI Enterprise Library tree
# so that the original MIT OLL course hierarchy is preserved.
#
# Design principle:
#
# MIT Course
#   -> Subunit
#       -> Lecture / Problem Set
#           -> Questions
#               -> Solved Questions
#                   -> Extraction
#                       -> Pattern
#                           -> Primitive Candidate
#                               -> QAI Enterprise Library
#
# IMPORTANT:
# - Does NOT delete existing files.
# - Does NOT overwrite populated files.
# - Creates missing folders/files only.
# - Does NOT invent unknown MIT course content.
# - Known 8.370.1x SU1 structure is created from supplied evidence.
#
# ============================================================

$Root = "E:\Bhadale IT\github\holdco\implementation_discovery\github"

$MitRoot = Join-Path $Root "mit_courses"

# ------------------------------------------------------------
# Helper Functions
# ------------------------------------------------------------

function Ensure-Folder {
    param(
        [string]$Path
    )

    if (-not (Test-Path $Path)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
        Write-Host "[Created] $Path"
    }
    else {
        Write-Host "[Exists ] $Path"
    }
}

function Ensure-File {
    param(
        [string]$Path,
        [string]$Content
    )

    if (-not (Test-Path $Path)) {
        Set-Content -Path $Path -Value $Content -Encoding UTF8
        Write-Host "[Created] $Path"
    }
    else {
        Write-Host "[Exists ] $Path"
    }
}

function Ensure-RelativeFile {
    param(
        [string]$Base,
        [string]$RelativePath,
        [string]$Content
    )

    $FullPath = Join-Path $Base $RelativePath
    $Parent = Split-Path $FullPath -Parent

    Ensure-Folder $Parent
    Ensure-File $FullPath $Content
}

# ------------------------------------------------------------
# Verify MIT root
# ------------------------------------------------------------

Ensure-Folder $MitRoot

# ============================================================
# Standard course-level files
# ============================================================

$CourseIDs = @(
    "mit_6_036",
    "mit_8_370_1x",
    "mit_8_370_2x",
    "mit_8_370_3x",
    "mit_8_371_1x",
    "mit_8_371_2x",
    "mit_8_371_3x"
)

foreach ($CourseID in $CourseIDs) {

    $CourseRoot = Join-Path $MitRoot "courses\$CourseID"

    Write-Host ""
    Write-Host "============================================================"
    Write-Host "Updating $CourseID"
    Write-Host "============================================================"

    Ensure-Folder $CourseRoot

    # --------------------------------------------------------
    # Course map
    # --------------------------------------------------------

    $CourseMap = @"
# $CourseID Course Map

Purpose:
Preserve the original MIT Open Learning Library course hierarchy.

Structure:

Course
  ->
Subunit
  ->
Lecture / Problem Set / Assessment
  ->
Questions
  ->
Solved Questions
  ->
Extraction

Important:
Populate this file from the actual MIT OLL course structure.
Do not infer missing subunits, lectures or problem sets.
"@

    Ensure-File `
        (Join-Path $CourseRoot "course_map.md") `
        $CourseMap

    # --------------------------------------------------------
    # Standard source/evidence folders
    # --------------------------------------------------------

    $Folders = @(
        "modules",
        "modules\source_structure",
        "problem_sets",
        "problem_sets\source_files",
        "problem_sets\solved_questions",
        "problem_sets\extracted",
        "notebooks",
        "notebooks\raw",
        "notebooks\solved",
        "notebooks\reference",
        "notebooks\extracted",
        "experiments",
        "source_material",
        "source_material\lectures",
        "source_material\readings",
        "source_material\slides",
        "extracted_patterns",
        "primitive_candidates"
    )

    foreach ($Folder in $Folders) {
        Ensure-Folder (Join-Path $CourseRoot $Folder)
    }

    # --------------------------------------------------------
    # Course hierarchy README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "modules\README.md" `
        -Content @'
# Course Modules

This directory mirrors the actual MIT Open Learning Library course
hierarchy.

Recommended structure:

Subunit
  ->
Lecture / Problem Set
  ->
Questions
  ->
Solved Questions
  ->
Extraction

Do not replace MIT terminology with QAI terminology at this layer.
QAI interpretation belongs in the extraction and mapping layers.
'@

    # --------------------------------------------------------
    # Problem set README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "problem_sets\README.md" `
        -Content @'
# Problem Sets

Problem sets are first-class course evidence.

Each problem set should preserve:

- original problem statement;
- individual questions;
- solved questions;
- source files;
- notebooks;
- extracted reasoning;
- reusable patterns;
- primitive candidates.

Recommended structure:

problem_set/
  problem_statement.md
  questions.md
  solved_questions.md
  source_files/
  notebooks/
  extracted_patterns.md
  primitive_candidates.md
'@

    # --------------------------------------------------------
    # Solved question README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "problem_sets\solved_questions\README.md" `
        -Content @'
# Solved Questions

Purpose:
Capture solved questions separately from the original problem statements.

Solved questions are important evidence because they expose:

- reasoning;
- mathematical method;
- algorithm;
- assumptions;
- intermediate steps;
- computational procedure;
- implementation clues.

Evidence chain:

Problem
  ->
Solved Question
  ->
Reasoning
  ->
Algorithm
  ->
Pattern
  ->
Primitive Candidate
'@

    # --------------------------------------------------------
    # Notebook README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "notebooks\README.md" `
        -Content @'
# Course Notebooks

Notebooks are implementation evidence.

Preserve original notebooks where possible.

Recommended structure:

raw/
solved/
reference/
extracted/

For each notebook capture:

Problem
Topic
Language
Framework
Dependencies
Execution Environment
Algorithm
Result
Reusable Pattern
Primitive Candidate
QAI Relationship
'@

    # --------------------------------------------------------
    # Pattern README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "extracted_patterns\README.md" `
        -Content @'
# Extracted Patterns

Patterns extracted from:

- lectures;
- problem sets;
- solved questions;
- notebooks;
- experiments.

A pattern should not automatically become a primitive.

Evidence should be evaluated across multiple problems and, where possible,
across multiple MIT courses.
'@

    # --------------------------------------------------------
    # Primitive candidate README
    # --------------------------------------------------------

    Ensure-RelativeFile `
        -Base $CourseRoot `
        -RelativePath "primitive_candidates\README.md" `
        -Content @'
# Primitive Candidates

Track reusable computational or mathematical capabilities that may become
QAI primitives.

Lifecycle:

Candidate
  ->
Pattern
  ->
Primitive Specification
  ->
Reference Implementation
  ->
Validation
  ->
Reusable Primitive
'@
}

# ============================================================
# Known MIT 8.370.1x structure supplied by user
# ============================================================

$CourseRoot = Join-Path $MitRoot "courses\mit_8_370_1x"

Write-Host ""
Write-Host "============================================================"
Write-Host "Applying verified MIT 8.370.1x SU1 structure"
Write-Host "============================================================"

$SU1Root = Join-Path `
    $CourseRoot `
    "modules\su1_quantum_classical_computing_fundamentals"

Ensure-Folder $SU1Root

Ensure-File `
    (Join-Path $SU1Root "README.md") `
@'
# SU1 - Quantum and Classical Computing Fundamentals

Source:
MITx 8.370.1x

This structure reflects the MIT OLL course hierarchy supplied for
discovery.

Items currently captured:

1. Lectures U1.1
2. Lectures U1.2
3. PS#1 - Reversible Circuits

Question counts are preserved from the MIT course structure.
'@

# ------------------------------------------------------------
# U1.1
# ------------------------------------------------------------

$U11Root = Join-Path `
    $SU1Root `
    "lectures\u1_1_history_and_development_of_quantum_computation"

Ensure-Folder $U11Root

Ensure-File `
    (Join-Path $U11Root "README.md") `
@'
# U1.1 - History and Development of Quantum Computation

Type:
Lecture / Concept

MIT OLL:
Lectures U1.1

Questions:
3

Status:
Structure captured from MIT OLL course evidence.

Extraction:
Pending
'@

Ensure-File `
    (Join-Path $U11Root "questions.md") `
@'
# U1.1 Questions

Questions: 3

Capture each question separately.

| Question | Problem | Solution Available | Pattern | Primitive Candidate | Status |
|---|---|---|---|---|---|
| Q1 | | | | | Pending |
| Q2 | | | | | Pending |
| Q3 | | | | | Pending |
'@

Ensure-File `
    (Join-Path $U11Root "lecture_notes.md") `
@'
# U1.1 Lecture Notes

Capture source-supported concepts from:

History and development of quantum computation.

Preserve MIT terminology.

Do not add QAI interpretation here unless clearly marked as extraction.
'@

Ensure-File `
    (Join-Path $U11Root "extracted_patterns.md") `
@'
# U1.1 Extracted Patterns

No patterns extracted yet.

Use:

Lecture
  ->
Question
  ->
Concept
  ->
Pattern
'@

# ------------------------------------------------------------
# U1.2
# ------------------------------------------------------------

$U12Root = Join-Path `
    $SU1Root `
    "lectures\u1_2_classical_computation_and_reversibility"

Ensure-Folder $U12Root

Ensure-File `
    (Join-Path $U12Root "README.md") `
@'
# U1.2 - Classical Computation and Reversibility

Type:
Lecture / Concept

MIT OLL:
Lectures U1.2

Questions:
4

Status:
Structure captured from MIT OLL course evidence.

Extraction:
Pending
'@

Ensure-File `
    (Join-Path $U12Root "questions.md") `
@'
# U1.2 Questions

Questions: 4

| Question | Problem | Solution Available | Pattern | Primitive Candidate | Status |
|---|---|---|---|---|---|
| Q1 | | | | | Pending |
| Q2 | | | | | Pending |
| Q3 | | | | | Pending |
| Q4 | | | | | Pending |
'@

Ensure-File `
    (Join-Path $U12Root "lecture_notes.md") `
@'
# U1.2 Lecture Notes

Topic:
Classical computation and reversibility.

Preserve source terminology and structure.

QAI extraction should be performed separately.
'@

Ensure-File `
    (Join-Path $U12Root "extracted_patterns.md") `
@'
# U1.2 Extracted Patterns

No patterns extracted yet.
'@

# ------------------------------------------------------------
# PS#1 - Reversible Circuits
# ------------------------------------------------------------

$PS1Root = Join-Path `
    $SU1Root `
    "problem_sets\ps01_reversible_circuits"

Ensure-Folder $PS1Root
Ensure-Folder (Join-Path $PS1Root "source_files")
Ensure-Folder (Join-Path $PS1Root "notebooks")
Ensure-Folder (Join-Path $PS1Root "extracted")

Ensure-File `
    (Join-Path $PS1Root "README.md") `
@'
# PS#1 - Reversible Circuits

Course:
MITx 8.370.1x

Subunit:
SU1 - Quantum and classical computing fundamentals

Questions:
3

Preserve:

- problem statement;
- individual questions;
- solved questions;
- supporting files;
- notebooks;
- extracted reasoning;
- patterns;
- primitive candidates.
'@

Ensure-File `
    (Join-Path $PS1Root "problem_statement.md") `
@'
# PS#1 - Reversible Circuits

Capture the original MIT problem-set description here.

Source:
MIT Open Learning Library

Do not paraphrase until source evidence has been captured.
'@

Ensure-File `
    (Join-Path $PS1Root "questions.md") `
@'
# PS#1 Questions

Questions: 3

| Question | Problem Available | Solution Available | Notebook | Pattern | Primitive Candidate | Status |
|---|---|---|---|---|---|---|
| Q1 | | | | | | Pending |
| Q2 | | | | | | Pending |
| Q3 | | | | | | Pending |
'@

Ensure-File `
    (Join-Path $PS1Root "solved_questions.md") `
@'
# PS#1 Solved Questions

Capture solved questions separately from the problem statement.

For each question:

## Q1

### Problem

### Solution

### Mathematical Reasoning

### Algorithm / Procedure

### Key Insight

### Assumptions

### Complexity

### Implementation Evidence

### Reusable Pattern

### Primitive Candidate

### QAI Relationship

---

## Q2

### Problem

### Solution

### Mathematical Reasoning

### Algorithm / Procedure

### Key Insight

### Assumptions

### Complexity

### Implementation Evidence

### Reusable Pattern

### Primitive Candidate

### QAI Relationship

---

## Q3

### Problem

### Solution

### Mathematical Reasoning

### Algorithm / Procedure

### Key Insight

### Assumptions

### Complexity

### Implementation Evidence

### Reusable Pattern

### Primitive Candidate

### QAI Relationship
'@

Ensure-File `
    (Join-Path $PS1Root "extracted_patterns.md") `
@'
# PS#1 Extracted Patterns

Extract recurring computational patterns from the solved questions.

Source:
PS#1 - Reversible Circuits

Status:
Pending
'@

Ensure-File `
    (Join-Path $PS1Root "primitive_candidates.md") `
@'
# PS#1 Primitive Candidates

Identify reusable capabilities only after reviewing the actual problems
and solutions.

Status:
Pending
'@

# ============================================================
# Course-level inventory update
# ============================================================

$MatrixPath = Join-Path `
    $MitRoot `
    "course_to_problem_solution_matrix.md"

Ensure-File `
    $MatrixPath `
@'
# Course to Problem / Solution Matrix

Purpose:
Track the availability of original problems, solved questions, notebooks
and extracted implementation evidence.

| Course | Subunit | Item | Type | Questions | Problem | Solution | Notebook | Pattern | Primitive | Status |
|---|---|---|---|---:|---|---|---|---|---|---|
| 8.370.1x | SU1 | U1.1 | Lecture | 3 | | | | | | Pending |
| 8.370.1x | SU1 | U1.2 | Lecture | 4 | | | | | | Pending |
| 8.370.1x | SU1 | PS#1 | Problem Set | 3 | | | | | | Pending |
'@

# ============================================================
# Global MIT evidence hierarchy
# ============================================================

Ensure-File `
    (Join-Path $MitRoot "evidence_hierarchy.md") `
@'
# MIT Evidence Hierarchy

The MIT course material should be preserved in two complementary views.

## View 1 - Course Fidelity

Course
  ->
Subunit
  ->
Lecture / Problem Set
  ->
Question
  ->
Solved Question

## View 2 - QAI Extraction

Course Evidence
  ->
Concept
  ->
Algorithm
  ->
Reasoning
  ->
Pattern
  ->
Primitive Candidate
  ->
Validation
  ->
QAI Enterprise Library

Do not destroy the original MIT hierarchy when performing QAI extraction.
'@

# ============================================================
# Final report
# ============================================================

Write-Host ""
Write-Host "============================================================"
Write-Host "MIT Course Tree Update Complete"
Write-Host "============================================================"
Write-Host ""

Write-Host "Updated courses:"
foreach ($CourseID in $CourseIDs) {
    Write-Host "  - $CourseID"
}

Write-Host ""
Write-Host "Verified MIT structure added:"
Write-Host "  8.370.1x"
Write-Host "    SU1 - Quantum and classical computing fundamentals"
Write-Host "      U1.1 - History and development of quantum computation (3 Questions)"
Write-Host "      U1.2 - Classical computation and reversibility (4 Questions)"
Write-Host "      PS#1 - Reversible Circuits (3 Questions)"
Write-Host ""

Write-Host "New evidence layers:"
Write-Host "  modules"
Write-Host "  problem_sets"
Write-Host "  solved_questions"
Write-Host "  notebooks"
Write-Host "  extracted_patterns"
Write-Host "  primitive_candidates"
Write-Host ""

Write-Host "Important:"
Write-Host "  Existing files were preserved."
Write-Host "  Unknown MIT course structure was NOT invented."
Write-Host ""

Write-Host "Next recommended activity:"
Write-Host "  Continue supplying the actual MIT OLL hierarchy for each course."
Write-Host "  We can then populate SU/module/lecture/problem-set folders exactly."
Write-Host ""

Write-Host "Principle:"
Write-Host "  Preserve course fidelity; perform QAI extraction as a separate layer."
Write-Host ""
