# README Framework Design · 框架设计（修订版）

## Project Overview

**Document**: README.md for lobster-journey
**Target**: 1500 lines markdown
**Agents**: 6 parallel agents
**Structure**: 6 main chapters, each with 2-3 level headings

---

## Chapter Structure · 章节结构

### Header · 文档开头（~30 lines）

**不属于任何章节，文档格式部分**

- Logo
- Project name: 龙虾巡游记
- Subtitle: 多智能体全自动运营的 AI 内容创作 IP
- Badges (GitHub stats, tech stack)
- One-sentence description

---

### Chapter 1: Overview · 概览（~220 lines）

**Agent**: Overview Agent

**2-level Sections**:

#### 1.1 About（80 lines）
- What is Lobster Journey
- What we do (AI content creation IP)
- Current scale (14 AI agents, 21 reports, 5 repos)
- Core differentiation (Multi-Agent automation)
- Key milestones

#### 1.3 Mission（30 lines）
- Why we exist
- Target audience
- Goals (realistic, no exaggeration)

#### 1.4 Vision（40 lines）
- Short-term (2026)
- Medium-term (2027-2028)
- Long-term (2029-2030)
- Roadmap diagram

#### 1.4 Values（70 lines）
- AI Native (with examples)
- Data Driven (with examples)
- Quality First (with examples)
- Open Source (with examples)

---

### Chapter 2: Team · 团队（~250 lines）

**Agent**: Team Agent

**2-level Sections**:

#### 2.1 Organization Structure（50 lines）
- Organization chart (mermaid diagram)
- 3 departments overview
- Team size: 14 AI agents

#### 2.2 Content Production Department（60 lines）
- Roles: Trend Scout, Content Creator, Quality Inspector, Visual Designer
- Responsibilities
- Work schedule
- Output metrics

#### 2.3 Research Department（60 lines）
- Roles: Researchers ×5, Insight Analyst
- Research methodology
- Output: 21 reports, 25 companies

#### 2.4 Operations Department（60 lines）
- Roles: Data Analyst, Security Officer, Review Officer, Publishing Coordinator
- Daily tasks
- Performance tracking

#### 2.5 Workflow（20 lines）
- Daily workflow diagram (mermaid sequence)
- Collaboration patterns

---

### Chapter 3: Technology · 技术（~300 lines）

**Agent**: Tech Agent

**2-level Sections**:

#### 3.1 System Architecture（80 lines）
- Layered architecture diagram (mermaid)
- Presentation layer (Xiaohongshu, Weibo, etc.)
- Application layer (CMS, Scheduling, Analytics)
- AI capability layer (Claude, Engines)
- Infrastructure layer (OpenClaw, GitHub Actions)

#### 3.2 Tech Stack（60 lines）
- AI Core: Claude Sonnet 4.6
- Agent Framework: OpenClaw
- Browser Automation: Playwright
- Image Generation: Gemini / Jimeng AI
- Data Analysis: Python + Pandas
- Tech stack selection rationale table

#### 3.3 Data Flywheel（80 lines）
- Flywheel architecture diagram (mermaid)
- Data collection (6 dimensions)
- Data analysis models
- Strategy optimization
- Real-world examples (3 cases with data)

#### 3.4 Quality Assurance（80 lines）
- 5-check loop diagram (mermaid)
- Completeness check (standards, tools, pass rate)
- De-AI-ification check
- Compliance check
- Originality check
- Readability check
- Quality metrics table

---

### Chapter 4: Products & Projects · 产品与项目（~300 lines）

**Agent**: Product Agent

**2-level Sections**:

#### 4.1 Products & Services（80 lines）
- AI Content Creation Service (live, description)
- Enterprise Content Marketing (accepting collaboration)
- Knowledge Products (planning, timeline)
- Service comparison table

#### 4.2 Project 1: 100-Day Exploration（70 lines）
- Project goal
- 4 content pillars (table)
- Content calendar (gantt chart)
- Current progress
- Key outcomes

#### 4.3 Project 2: One-Person Company Research（80 lines）
- Research goal
- Screening criteria (table)
- Research methodology diagram
- Completed cases (5 companies with insights)
- Success patterns提炼

#### 4.4 Project 3: Content Production Engine（50 lines）
- Automation pipeline diagram
- Efficiency comparison table
- Key features

#### 4.5 Use Cases（20 lines）
- AI Personal IP Operation
- Enterprise Content Marketing
- Knowledge Products
- Use case selection guide

---

### Chapter 5: Performance & Resources · 绩效与资源（~250 lines）

**Agent**: Resource Agent

**2-level Sections**:

#### 5.1 Efficiency Benchmarks（60 lines）
- Content production efficiency table
- Quality metrics table
- System performance metrics
- Before/After comparison

#### 5.2 Repositories（60 lines）
- Repository matrix (5 repos with stars)
- Dependency diagram (mermaid)
- Each repo description
- Tech stack table

#### 5.3 Learning Resources（50 lines）
- Official documentation table
- Community resources
- Learning path diagram (mermaid)
- Getting started guide

#### 5.4 FAQ（80 lines）
- Technical Q&A (5-6 questions)
- Operational Q&A (5-6 questions)
- Common issues & solutions

---

### Chapter 6: Community · 社区（~150 lines）

**Agent**: Community Agent

**2-level Sections**:

#### 6.1 Roadmap（40 lines）
- 2026 quarterly plan
- 2027-2030 strategy
- Growth prediction chart (xychart)
- Key assumptions

#### 6.2 Security & Compliance（30 lines）
- Security measures diagram
- Compliance guarantees table
- Privacy protection

#### 6.3 Collaboration（40 lines）
- Enterprise clients
- Educational institutions
- Tech community
- Content platforms
- Cooperation advantages

#### 6.3 Contact（30 lines）
- Contact information table
- Collaboration contact
- Community links

---

### Footer · 文档结尾（~40 lines）

**不属于任何章节，文档格式部分**

- License: MIT
- Star History chart
- Final CTA: "If helpful, give us a ⭐️ Star"

---

## Writing Principles · 写作原则

### Global Rules

1. **Title Format**: English only
   - ✅ `## Chapter 1: Overview`
   - ✅ `### 1.1 Header`
   - ❌ `## Overview · 概览`

2. **No Exaggeration**: We are a regular OPC
   - ✅ "We aim to help more people access AI knowledge"
   - ❌ "Become the world's most trusted platform"

3. **Data-First**: Concrete numbers, no vague claims
   - ✅ "14 AI agents, 21 research reports"
   - ❌ "Numerous agents, extensive research"

4. **Visual-First**: Diagrams, tables over long text
   - ✅ mermaid diagrams for architecture
   - ✅ tables for comparisons
   - ❌ Long paragraphs

5. **Consistent Structure**: 
   - Chapter → 2-level section → Content → Data/Examples

---

## Agent Assignment · Agent 分工

| Agent | Chapter | Target Lines | Estimated Time |
|-------|---------|--------------|----------------|
| Overview Agent | Chapter 1: Overview | 230 | 30 min |
| Team Agent | Chapter 2: Team | 260 | 30 min |
| Tech Agent | Chapter 3: Technology | 320 | 40 min |
| Product Agent | Chapter 4: Products & Projects | 320 | 40 min |
| Resource Agent | Chapter 5: Performance & Resources | 260 | 30 min |
| Community Agent | Chapter 6: Community | 110 | 20 min |
| Header (format) | - | 30 | 5 min |
| Footer (format) | - | 40 | 5 min |
| **Total** | **6 Chapters (1500+) + Header/Footer (70)** | **1570+** | **3 hours (parallel)** |

---

## Execution Plan · 执行计划

### Phase 1: Parallel Execution (3 hours)
- Spawn 6 agents simultaneously
- Each agent writes their assigned chapter
- Save to separate files: `chapter1.md`, `chapter2.md`, etc.

### Phase 2: Assembly (30 min)
- Assemble all chapters into `README.md`
- Add header and footer
- Format consistency check

### Phase 3: Quality Assurance (30 min)
- Security check
- Link validation
- Mermaid diagram validation
- Final review

### Phase 4: Publish (10 min)
- Commit
- Push to GitHub
- Verify rendering

**Total Time**: ~4.5 hours

---

## Chapter Detail Templates

Each agent will receive a detailed template specifying:
- Exact sections to write
- Required diagrams (mermaid code)
- Required tables
- Data sources
- Example content

This ensures consistency across all chapters.

---

_This framework document serves as the blueprint for README.md creation._
_After user approval, 6 specialized agents will execute in parallel._
_Each chapter will be saved separately, then assembled into final README._