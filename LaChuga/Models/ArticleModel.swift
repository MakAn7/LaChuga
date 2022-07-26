//
//  ArticleModel.swift
//  LaChuga
//
//  Created by Антон Макаров on 28.07.2022.
//

import Foundation
import UIKit

struct ArticleModel: Hashable, Identifiable {
    let id: UUID
    let title: String
    let description: String
    let image: UIImage

    // MARK: - Mock Data
    static func getMockArticleData() -> [ArticleModel]{
        let articles = [
            ArticleModel(
                id: UUID(),
                title: "Кровля",
                description: """
                - Односкатная крыша является наиболее удобной при строительстве и представляет собой конструкцию в следующем виде: с одной стороны – капитальная стена, на которую опирается кровельная конструкция и с другой стороны – стена, которая имеет высоту меньше, чем у противоположной стены, что создает угол наклона ската. Такой угол составляет не больше 4-6ᴼ. Применяется в основном при строительстве хозяйственных помещений: сараи, гаражи, подсобные постройки.
                - Двухскатная – это крыша с двумя уклонами, которые опираются на стены равной высоты. Установка двухскатной крыши сложнее, чем у односкатной, однако такой вид кровли считается самым популярным для частных домов. К тому же выбор материалов для такой крыши легче, чем для односкатной.
                - Вальмовая крыша привлекательна своим внешним видом за счет своей конструкции из четырех плоскостей: более широкие представляют собой трапеции, а две остальные – треугольники. Такая кровля также называется четырехскатной. Подходит для домов большой площади. Конструкция такой кровли выдерживает большие ветровые нагрузки .
                """,
                image: UIImage(named: "Roof") ?? UIImage()
            ),
            ArticleModel(
                id: UUID(),
                title: "Лестницы",
                description: """
                Типы лестниц по конструкции лестничных элементов
                Эта классификация лестниц основывается на типах несущего элемента лестничного марша,
                и выделяется четыре основных типа:
                - Лестницы на косоурах
                - Лестницы на тетивах
                - Лестницы на больцах
                - Консольные лестницы
                В практике строительства лестниц встречаются смешанные типы например: больцы + консоль,
                больцы + косоур или тетива, косоур + тетива.
                """,
                image: UIImage(named: "Stairs") ?? UIImage()
            ),
            ArticleModel(
                id: UUID(),
                title: "Потолки из гипсокартонного листа (ГКЛ)",
                description: """
                Какой бывает ГКЛ
                Гипсовые листы представляют собой плиту из гипса, заключенную в «обложку» из бумаги с двух сторон. Различные добавки в гипсовую смесь при их производстве, придают разным типам таких листов разные свойства. Чаще всего, применяются только два вида таких листов – влагостойкие и обычные.
                Однако, есть еще несколько типов этого универсального материала. Некоторые типы ГКЛ выдерживают большие температуры и называются «огнестойкими», хотя это не означает, что они могут выдерживать открытый огонь долгое время.

                Наиболее важным параметром, не считая влагостойкости, при выборе ГКЛ будет его толщина. Листы могут быть от 6 до 16 миллиметров, из которых, наиболее популярными стали детали, толщиной 6,9 и 12 миллиметров. У разных производителей эти цифры могут отличаться на полмиллиметра и тогда, значения будут больше. Длина одной детали, обычно, составляет 250 сантиметров, при ширине в 120.
                """,
                image: UIImage(named: "Soffit") ?? UIImage()
            ),
            ArticleModel(
                id: UUID(),
                title: "Беседки",
                description: """
                 - Открытые летние -
                Открытая летняя беседкаЕще одно название таких конструкций – пергола. Своим видом эти летние беседки для дачи напоминают навесы или ротонды. Это самый простой и дешевый вариант. Состоит из четырех столбов и крыши. Столбы изготавливаются из металла или дерева (сосна, ель, лиственница). Встречаются 6- и 8-угольные модели. Украшаются лианами и вьющимися растениями.

                Открытые постройки подходят для небольших дач. Конструкции не займут много места, не будут закрывать парники или грядки. Размещают на улице в тени под деревьями или рядом с домиками. Чаще прямоугольные или угловые.

                Конструкция дачной беседки-перголы не нуждается в заливке фундамента. При желании ее можно возвести своими силами даже при минимальном опыте. Недостаток – использование только летом. Плохо защищает от ветра и дождя.

                - Полуоткрытые постройки -
                Беседки из дерева для дачи Это классическая беседка. Состоит из каркаса и бортиков. Ограждения не являются сплошными, имеют окна. Для защиты от ветра используются шторы. Некоторые владельцы монтируют стеклопакеты или элементы из поликарбоната. Чаще всего такие конструкции выбираются для средних по площади участков. Беседки из дерева для дачи не занимают много места и удобны.

                Популярны красивые модели беседок с закрытой задней стенкой и двускатной крышей. Для украшения пространства используются каменные дорожки, цветочные кусты, искусственные пруды или водопады.

                К этому виду беседок для дачи относятся и павильоны со сплошной задней стеной. Передней нет или ее частично закрывают решеткой. На торцах – ограждения или сплошные стены.

                - Закрытые зимние -
                Закрытая беседка на зиму В данной категории рассмотрим беседки-гриль и летние кухни. Представляют собой полноценные домики в миниатюре, с окнами и дверями. Нередко сюда проводят освещение, устанавливают отопительные приборы, хорошую мебель. Отдых здесь возможен даже зимой.

                В таких постройках устанавливаются печи-барбекю, мангалы. Это помогает создать пространство для комфортного отдыха.

                Виды закрытых беседок на зиму разнообразны:

                Проекты с панорамными окнами в пол.
                Каменные сооружения – постройка на века.
                С мангалом, камином, печью.
                Беседка-гриль – это закрытая конструкция с очагом, мангалом-барбекю или камином. Чаще имеет форму шестиугольника, небольшие окна. Здесь можно готовить пищу. Для этого оборудуется дымоход. Еще одно название – финская.
                Закрытые беседки считаются промежуточным вариантом между дачным домиком и классической вариацией. Остекленный и утепленный тип лучше всего подходит для эксплуатации в зимнее время.
                """,
                image: UIImage(named: "Bower") ?? UIImage()
            ),
            ArticleModel(
                id: UUID(),
                title: "Гардеробные",
                description: """
                Несмотря на разнообразие конструкций, стилей, моделей, размеров, все шкафы для одежды условно можно разделить на 3 типа.

                1. Платяной шкаф – это самостоятельный предмет мебели, оснащенный стенками, днищем, верхней крышкой, дверцами. Определяющие характеристики – мобильность и распашная конструкция дверей.

                2. Шкаф-купе – усовершенствованный и более вместительный платяной шкаф. Главное отличие от «старшего брата» – раздвижные двери. Кроме того, может быть не только корпусным, но и частично встроенным, т. е. не иметь одной или нескольких стенок, днища, верхнего горизонта.

                3. Частично или полностью встроенный шкаф – это, фактически, мини-гардеробная комната. Для его оборудования используют архитектурные элементы квартиры – ниши, альковы, перегородки, которые оснащают несколькими линейными или угловыми стеллажами.

                Предлагаем рассмотреть типы гардеробных шкафов более подробно, оценить преимущества и недостатки каждого из них.
                """,
                image: UIImage(named: "Wardrobe") ?? UIImage()
            )
        ]
        return articles
    }
}

