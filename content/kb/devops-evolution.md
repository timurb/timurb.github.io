---
title: "Эволюция DevOps"
date: 2022-03-24T19:21:56+03:00
---

15 лет назад DevOps начинался в попытке "подружить" разработку и эксплутацию -- через культуру, обмен знаниями и совместную работу.
Затем быстро развернулся в сторону ускорения поставки изменений из разработки в продакшн (активность [Lean Value Stream Mapping](https://www.atlassian.com/continuous-delivery/principles/value-stream-mapping)),
продолжился в понимание того, что программисты создают не просто код в репозитории (и даже не протестированный код в репозитории),
а работающее приложение в продакшне (практики Observability и [SRE](https://sre.google/sre-book/table-of-contents/)).
И последние несколько лет DevOps перешел к рассмотрению взаимодействие команд на масштабе (фреймворк [Team Topologies](https://teamtopologies.com/)).

Что при этом менее заметно, так это происходящая одновременно с этим эволюция корпоративной архитектуры:
- Сперва одно подразделение (Ops) предоставляло сервис пользователям при помощи инструментов, которые разрабатывает другое подразделение (Dev)
- Затем взгляд сместился на построение цепочки добавленной стоимости (Value Stream), которое включает как оба этих подразделения, так и новые роли (например Product)
- Сегодня же говорят о построении инфраструктурных платформ и выделение особых интеграционных команд (enabling teams) для создания гибкости на продуктовом ландшафте

По сути современный DevOps (и DevOps ближайшего будущего) и заключается в:
- предоставлении сервисов при помощи которых команды разработки сами могут строить свой рабочий процесс, при этом сами эти сервисы должны соответствовать стандартам качества заданным в организации (по ИБ, SLA и т.д.)
- создании на базе этих сервисов типовых решений для быстрого старта, которые каждая команда разработки может адаптировать под себя
- активностях по интеграции, обучению и передаче экспертизы для еще более быстрого старта команд разработки
- практиках SRE, которые по факту уходят от инфраструктурных команд в команды разработки

Важный вопрос, который встает в такой картине если хотя бы чуть-чуть отойти в сторону от разработки: зачем командам строить свои уникальные рабочие процессы? Зачем делать свои велосипеды? Почему не взять один стандартный процесс разработки, сделать его частично кастомизируемым и работать по нему?

Ответ на это достаточно простой: у разных продуктов и компонентов разная частота внесения изменений, разные "нефункциональные" требования (например, критичность для бизнеса, требования к доступности и нагрузке, или требования compliance), а часто и разный технологический стек (бэк, фронт, два вида мобилки). Один универсальный набор инструментов и процессов не подойдет для этих таких разных компонентов - для каких-то продуктов он может начать тормозить разработку, а для каких-то не будет обеспечивать необходимый уровень качества. С другой стороны слишком широкие возможности кастомизации затрудняют использование инструментов, и польза от точечной кастомизации "стандартного пайплайна" для маленьких низкокритичных компонентов с быстрым циклом разработки будет невелика.

Выход здесь лежит в построении типовых _сценариев_ работы команд, и их самостоятельной адаптации под конкретные потребности команд по месту. Фокус при этом должен быть на простоту и скорость интеграции такого сценария (и его обновлений!) в повседневную жизнь команды. Другой важный момент: для команд должны быть видны явные преимущества использования этого _сценария_ и предоставляемых _сервисов_ по сравнению с созданием собственных велосипедов. Это осуществимо при помощи списка составляющих перечисленных в середине статьи.

В случае старой парадигмы (ITIL/ITSM подход) это сделать невозможно, т.к. реинжениринг процессов дорог и ограничивает скорость изменений самих рабочих процессов.

Кросспост:
- https://www.facebook.com/tbatyrshin/posts/5019698084732749
- https://timurbatyrshin.medium.com/82d220c4afa1
- https://t.me/devops_architecture/5