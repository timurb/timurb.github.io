---
title: "Kubernetes"
date: 2021-08-03T15:05:22+03:00
tags:
- оркестраторы
- cloud native
---

[[Kubernetes]] -- это runtime для для написания распределенных инфраструктурных приложений с использованием [[Operator pattern]], плюс оркестратор контейнеров.

Ключевые составляющие:
- Хранилище описаний объектов
- Модель нотификаций об изменениях как описаний, так и самих объектов
- Готовые простые инструменты для работы с хранилищем и событиями
- Мутноватый, но в целом неплохой stdlib для того, чтобы это было применимо к реальным вещам (запуск контейнеров, модель прав доступа и ограничений ресурсов и т.д.)
- Встроенный оркестратор контейнеров, за счет которого появляется возможность через эти механизмы достраивать самого себя

Иными словами, это state-machine интегрированная с оркестратором. За счет этого у него появляются свойства, которые по-отдельности отсутствуют как у оркестраторов, так и у state-machine.

Из этого сразу вытекает много особенностей:
-   Этот рантайм нужно уметь запускать и поддерживать, и это не очень тривиально
-   Много внутренностей рантайма видны пользователю, хотя никогда не будут использованы (повышенная когнитивная нагрузка)
-   Достаточно сложный пользовательский интерфейс -- интерфейс к рантайму/API, а не к пользовательской функциональности (повышенная когнитивная нагрузка). 
-   Средства программирования под него достаточно скудные -- наиболее распространены препроцессоры/шаблонизаторы (повышенная когнитивная нагрузка и вероятность ошибок). Высокоуровневые есть ([[Operator pattern]]), но их мало кто умеет
-   Большое число "знающих кубер" умеют лишь работать с его API и писать под него только на препроцессоре
-   Чаще всего интерфейс для команд разработки к нему останется на уровне "сложные и непонятные API, завернутые в протекающую абстракцию", либо "обратитесь к своему девопс-инженеру и он вам все сделает"

Из плюсов:
-   Сейчас много инфраструктурного софта разрабатывается с расчетом того, что будет ставиться в кубер (это минус софту, но плюс куберу)
-   Есть managed варианты (для других оркестраторов это далеко не всегда так)
-   Оркестратор мощнее, чем аналоги
-   Модульный и его можно расширять, наверное, бесконечно (если вам это нужно и вы это умеете)
-   Большое сообщество как в плане найма, так и поддержки
-   В него нативно интегрируются [[Открытые стандарты]]

Главные условия использования [[Kubernetes]]:
- Оценить в числах экономику использования (в т.ч. продуктивности использования программистами и поддержки) -- как затраты, так и преимущества 
- Спроектировать платформу, которая на нем будет строиться, или заложить точки расширения для ее строительства в будущем:
  - Инфраструктурные слои:
    - инструменты управления для каждого слоя
    - расположение кода для каждого слоя
    - способы раскатки каждого слоя
    - зоны ответственности команд за тот или иной слой
  - Доработать процессы разработки **_продуктовых_** команд под использование кубера:
    - интерфейсы к платформе для команд (деплой, отладка, мониторинг логирование). Не путать интерфейсы и инструменты.
    - процесс разворачивания песочниц для команд
    - прочие рабочие процессы команд (обновление приложения в песочнице, отладка приложения в песочнице, хотфиксы приложения в песочнице и т.д.)

Проектировать и реализовывать необходимо одновременно как продакшн, так и песочницы. И то и другое может быть как простой, так и сложной задачей в зависимости от конкретного случая.
Если не реализовать песочницы, они никогда в полной мере не будут реализованы, а разработчики будут страдать и их продуктивность работы будет снижена.

Для успешности использования [[Kubernetes]] необходим человек, который даст ответ на все эти вопросы.