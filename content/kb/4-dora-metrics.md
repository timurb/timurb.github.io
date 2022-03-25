---
title: "4 DORA Metrics"
date: 2021-11-02T22:26:12+03:00
draft: false
---

[DORA](https://www.devops-research.com/) в своем исследовании [State Of Devops](https://cloud.google.com/devops/state-of-devops) вывели метрики, которые показывают производительность организации:
 - Lead Time
 - Deployment Frequency
 - MTTR
 - Change Failure Rate

В двух словах, это важнейшие метрики из Lean, примененные к разработке софта, и они означают эффективность производственного процесса в компании.
В упомянутом отчете показывается, что у тех компаний, кто показывает наилучшие бизнес-результаты эти метрики также высоки.
Подробнее об этом говорится в вышеупомянутом отчете [State Of Devops](https://cloud.google.com/devops/state-of-devops), а еще подробнее в книге [Accelerate](https://itrevolution.com/accelerate-book/).

Считается, что непрерывное отслеживание этих метрик может помочь построить непрерывное улучшение производственного процесса, однако это не совсем так.
Если сократить время ожидания релиза, воспроизводимость тестов и скорость восстановления после сбоя то и производственный процесс станет более эффективным и бизнес-показатели слегка улучшатся -- это выводится несложными расчетами.

Наиболее незаслуженно незамеченное наблюдение исследования DORA заключается в следующем: для низкоэффективного производственного процесса частота релизов в пересчете на одного разработчика падает с размером компании - что вполне ожидаемо ввиду растущей связности программного продукта. Для высокоэффективного производственного процесса же частота релизов в пересчете на одного разработчика _растет_ с размером компании. В компании размером в 1000 разработчиков _каждый_ из них релизится вдвое (в десять раз?) чаще, чем в компании размером 150 разработчиков.

![Чем больше размер организации чем чаще начинает деплоить каждый разработчик](/images/accelerate-deploys-per-day.jpg)

Это важнейший момент в исследовании, и он означает только одно: эффективность производственного процесса невозможно улучшить выше некоторого уровня чисто за счет технических вещей. Они улучшаются только за счет организационных изменений.

Иными словами основная ценность этих метрик заключается не столько в отслеживании эффективности производственного процесса, сколько при использовании их в качестве fitness function для социотехнической архитектуры.

Архитектура эта будет включать в себя самые разные аспекты -- как относящиеся к области DevOps, так и не относящиеся.
Так, наиболее доступной базой для этой социотехничесеой архитектуры будут как конвейер CI/CD или архитектура мониторинга и логирования, так и _осознание их важности наравне с другими составляющими_ -- с соответствующим явным проектированием и развитием этих направлений. Более высокоуровневыми аспектами, которые будут влиять на частоту релизов будут практики организации доменов знаний и команд вокруг них, построение нескольких вложенных каденсов идеации и разработки, и даже изменение модели финансирования продуктовых инициатив. Для успешной реализации этих составляющих необходимо рассматривать инфраструктурные компоненты как полноценные составляющие приложения и применять к ним те же практики разработки, которые применяются для "обычной функциональности".

Отдельным пунктом стоит отметить то, что сама по себе частота развертывания имеет ценность только пока она не превышает частоту запрашиваемую бизнесом. Это еще раз говорит о том, что повышение частоты развертывания достигается исключительно улучшением инфраструктуры.

Вопрос о том, _нужна ли_ высокая частота развертывания точно также упирается в потребности бизнеса и уже его архитектуру - право на жизнь имеют как курьеры на самокатах, доставляющие поставки каждые 15 минут, так и контейнеровозы, перевозящие полмиллиона тонн груза через весь мир за несколько месяцев.