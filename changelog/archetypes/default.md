---
title: "{{ now.Format "January" }} {{ now.Format "2" }}{{ if in (slice 1 21 31) now.Day}}st{{ else if in (slice 2 22) now.Day}}nd{{ else if in (slice 3 23) now.Day}}rd{{ else }}th{{ end }}, {{ now.Format "2006" }}"
subtitle:
date: {{ .Date }}
weight:
version:
draft: false
---

<!-- Available tags are: added, changed, deprecated, removed, fixed, performance, security -->
- {{< tag added >}}
    - New features
- {{< tag fixed >}}
    - Bug fixes
- {{< tag performance >}}
    - Improvements
