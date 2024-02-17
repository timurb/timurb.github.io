---
title: "Методология, дисциплины, практики"
date: 2022-12-28T17:21:15+03:00
---

Существует мнение, что тяжеловесные подходы проектирования (ITIL, TOGAF, ГОСТ34 и т.д.) несовместимы с быстрыми частыми релизами и изменениями. А следовательно, зачем их изучать? Это верно только отчасти.  

Во-первых вспомним всем известную методологическую максиму, которая упрощенно звучит как: *"практика = дисциплина + технология"*. И далее эта самая *практика* адаптируется под вполне конкретный контекст организации.

*Дисциплина* описывает мотивацию, взаимоотношения с окружающим миром, онтологию и принципы. К примеру, CI/CD предназначено для ускорения поставки разрабатываемого софта в продакшн, состоит из последовательной цепочки преобразований, которую проходит описание фичи до продакшна (в процессе превращаясь в код, затем в некий набор артефактов), подразумевает активное участие команды в  процессах этой цепочки, и наконец можно говорить о принципах Shift Left и Fail Fast как примере более частных описаний.
  
*Технология* описывает конкретные инструменты — например, Gitlab CI или Jenkins.  

И наконец, *практика* `"CI/CD на базе Gitlab"` будет описывать типовые паттерны применения данной технологии для реализации задач, которые задаются дисциплиной. Некоторые авторы *практику* не делают специфичной по отношению к инструменту, что на мой взгляд неверно — если ты умеешь делать отличные пайплайны на Gitlab-CI не факт, что ты вообще что-то вразумительное сможешь сделать под Jenkins. Или другой пример для *дисциплины* `"программирование"`: если ты будучи программистом отлично умеешь писать код на Python далеко не факт, что ты будешь успешно исполнять *практику* `"программирование на Java"`.

Таким образом, *практика* — это **конкретный** вид деятельности, который осуществляется для реализации *дисциплины* с использованием *технологии*.

Что здесь еще важно рассмотреть? 
Рассмотреть как практика будет вписываться в реальную организацию — в частности, есть ли у человека ее исполняющего необходимые компетенции, да даже есть ли у него необходимые средства для этого. Если человеку нужно писать многокилобайтные YAML для Kubernetes, а ему отдел ИБ не разрешает поставить редактор с поддержкой YAML, то *практика* `"развертывание приложений в кластере Kubernetes"` будет в этой компании работать со скрипом.

И наконец мы подходим к самому важному, что обычно обсуждается в контексте Devops, различных трансформаций и подобных темах — к интеграции наших *практик* в нашу организацию, с тем чтобы достичь целей описываемых *дисциплиной*. Если разрабатываемое приложение -- сильносвязанный монолит с высокой интенсивностью разработки и низкой частотой релизов (т.е. не соответствует ни мотивации, ни принципам *дисциплины* CI/CD), то польза от *практики* `"CI/CD на базе Gitlab"`, конечно будет, но ее будет очень немого. Подобная же история будет если разработчики, тестировщики и эксплуатация сидят по разным функциональным колодцам и не спешат из них вылезать. Иными словами, чтобы реализовать всего одну конкретную *практику* DevOps требуется полная перестройка приложения, либо полная перестройка организации, а часто и то и другое одновременно. Именно над этим в контексте DevOps бьются светлейшие умы всего мира.

Здесь у нас встает важный вопрос: почему эта организация такая? Или: почему приложение такое? Наверняка именно такой дизайн преследовал целью некоторые вполне конкретную мотивацию? К примеру, разделение людей по функциональным колодцам это неплохой способ снижения затрат при относительно низком количестве и низкой сложности поставляемых изменений.

И сопутствующий вопрос -- изменилась ли с тех пор мотивация? Что нам важнее сейчас — поставлять изменения быстро, или же сократить затраты? В достаточно большом спектре решений это цели противоположные, и возможно только поставлять изменения быстро и как-то *контролировать затраты*, либо же сократить затраты и как-то *контролировать скорость* поставки изменений. Какой должна быть компания, чтобы следовать этим целям и каким должно быть приложение?

Мне кажется, в таких примерах в какой-то момент истории их развития незаметно изменилась мотивация, а в след за ней должна была измениться архитектура организации и приложения. А архитектуру сложно изменить по самому определению архитектуры:  
>  Архитектура — это принципиальные инженерные решения, изменение хотя бы одного их которых приводит к существенному изменению всей конструкции.

Вариантов определений множество но суть у всех примерно такая.

При этом по причине того, что в прошлом такое архитектурное проектирование велось с применением подходов предлагаемых, например, ITIL или ГОСТ34 публика такую неудачу автоматически приписывают им.

(я знаю, что ни то ни другое не является методом архитектурного проектирования в строгом смысле этого понятия, но для целей статьи это различие не играет значимой роли)

Но давайте вспомним взаимоотношения организации, применяемых в ней *практик*, *дисциплин* и *технологий*, про которые мы говорили в начале статьи, и попробуем разобраться что из этого является неотъемлемой частью этих подходов проектирования, а что — особенностью реализации.  

Конкретные практики, которые применяются в организации (например, `"Управление изменениями через собрание CAB"`) раскладывается на *дисциплину* `"Управление изменениями"` и *технологию* `"Собрание CAB"`.

При этом, в настоящее время чаще применяется совсем другая *практика*, а именно, `"Управление изменениями через планирование спринта и Pull Request"`. Но изменилась ли при этом сама *дисциплина* `"Управление изменениями"` (т.е. в первую очередь, изменились ли мотивация и принципы) от того, что мы одну *технологию* `"Собрание CAB"` заменили на другую *технологию* `"Pull-request в Github"`? Изменилась ли *дисциплина* `"Управление инцидентами"` от того, что в современном мире маленьких кросс-функциональных команд *практика* `"Триаж инцидентов сервисдеском"` чаще всего не очень нужна и алерты когда они происходят обычно считаются критическими? Изменилась ли мотивация этой *дисциплины*, взаимоотношения с внешним миром, содержание ключевых понятий, и выводимые в ней принципы? Что-то наверняка изменилось, но вспомним что у многих стандартов, методик и фреймворков регулярно выходят обновления в которых это может быть учтено на уровне самих *дисциплин*. *Технологии* же и *практики* применения этих *дисциплин* наверняка меняются намного чаще, чем сами *дисциплины*.

Из дополнительных обстоятельств — наверняка разные версии *дисциплин* будут по-разному совместимы с разными архитектурами приложения и разными архитектурами организации.  
Старые версии подходов проектирования конечно же могут быть несовместимы с современными архитектурами, но я не могу считать, что разработчики этих подходов живут в вакууме и не пытаются в новых релизах их адаптировать к новым реалиям.  
 
Итого собирается следующая картина:  
- Применимость тех или иных подходов проектирования к каждому конкретному случаю определяется мотивацией содержащейся в этом подходе ("для чего он предназначен"), и эта мотивация достаточно легко верифицируется (хоть и далеко не всегда легко выявляется).  

- Любой подход проектирования требует адаптации к архитектуре конкретной организации и конкретного приложения. Важно использовать самую современную версию *дисциплины* изложенной в конкретных подходах проектирования и проверять современность предлагаемых *практик* в условиях окружающей действительности. Более того — при необходимости заменять их на более современные (при этом оставаться в рамках *дисциплины*).  

При этом, если мы на секунду забудем обо всем, что мы только что обсуждали и посмотрим на относительно легковесные и простые практики DevOps или SRE — их адаптация к реалиям конкретных организаций часто тоже является очень болезненным процессом. При этом достаточно часто проблемы адаптации состоят в том, что напрочь игнорируется мотивационная часть (["— Для чего нам Kubernetes? — Потому что сейчас все его используют"](https://youtu.be/LeVULLqWwcg)), а нередко при применении DevOps игнорируют и его фундаментальные понятия и принципы с закономерно плачевным результатом.  

При осмысления всего вышесказанного у меня возникают вопросы:  
- Действительно ли вместе с переизобретением *практик* на базе новых *технологий* необходимо переизобретать и *дисциплины*? Почему chatops и автоматизированное создание алертов нельзя обсуждать в контексте классического процесса `"Управление инцидентами"`, который появился еще задолго до появления компьютеров?  
- Что мешает использовать классические детально проработанные (но адаптированные под современность! это важно!) методы проектирования для построения *практик* на базе современного тулчейна и современных архитектур как организации, так и приложений?  
- И, наконец, можно ли при проектировании целевого видения процессов в организации игнорировать решения принятые много лет назад? И если нет, как их встраивать процесс проектирования?

Как на это смотрите вы?