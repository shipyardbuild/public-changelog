---
title: "{{ now.Format "January" }} {{ now.Format "2" }}{{ if in (slice 1 21 31) now.Day}}st{{ else if in (slice 2 22) now.Day}}nd{{ else if in (slice 3 23) now.Day}}rd{{ else }}th{{ end }}, {{ now.Format "2006" }}"
subtitle: created on {{ now.Format "2006-01-02" }}
date: {{ .Date }}
removal_date: {{ now.Format "2006-01-02" }} # Set this to the target date of removal (YYYY-MM-DD)
weight:
version:
draft: false
---

#### Feature X will be removed

Description in **Markdown** format
