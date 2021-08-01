---
title: "Open Container Initiative"
date: 2021-08-01T22:18:30+03:00
---
[[Open Container Initiative]] — это рабочая группа, включающая в себя крупных вендоров, которая разрабатывает [[открытые стандарты]] для запуска контейнеров.

В стандарт входят три спецификации:
- Спецификация образов контейнеров (https://github.com/opencontainers/image-spec)
- Спецификация передачи образов (https://github.com/opencontainers/distribution-spec)
- Спецификация рантайма для контейнеров (https://github.com/opencontainers/runtime-spec)

Это позволяет разным вендорам делать собственные реализации контейнеризации оставаясь при этом совместимыми с пользовательским тулчейном -- инструментами разработки, сборки, оркестраторами и т.д.

Примеры реализации этих стандартов (список не исчерпывающий):
- https://github.com/opencontainers/image-spec/blob/main/implementations.md
- https://github.com/opencontainers/runtime-spec/blob/master/implementations.md
