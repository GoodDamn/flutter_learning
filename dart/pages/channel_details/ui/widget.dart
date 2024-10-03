import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/entities/channels/channel_details.dart';
import 'package:flutter_learning/entities/tag.dart';
import 'package:flutter_learning/shared/ui/width_wrapper/width_wrapper.dart';

import 'package:flutter_learning/widgets/widgets.dart';

class ChannelDetailsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const channelDetails = ChannelDetails(
        id: 3,
        name: "Петербург - 5 канал",
        description:  "Пятый канал имеет нестандартную концепцию “канала-собеседника”. Ведущие телеканала предлагают передачи в формате открытого диалога с политиками и деятелями культуры, что делает прямой эфир динамичным, интересным и завлекательным. Аудиторию 5 канала составляют мужчины и женщины старше 18 лет - это более 130 миллионов зрителей.\n\nТрансляция пятого канала содержит в себе такие популярные детективные сериалы, как “След”, “Чужой район” и “Детективы”. По вечерам есть возможность насладиться расписанием передач в котором давно всем нам знакомые фильмы-легенды отечественного кинематографа. А по утрам помогут проснуться и начать день легко передачи «Утро на 5» и «Детское утро» в онлайн трансляции.\n\nПятый канал создал уникальную программу “День ангела”, в которой воспитанники детских домов находят свои семьи. Благодаря проекту телеканала свой дом нашли уже более 250 детей.\n\nСмотрите прямую трансляцию 5 канала на нашем сайте. В многообразии детективных сериалов и дискуссионных передач поможет сориентироваться разделе“Телепрограмма”, где вы сможете узнать, что сейчас идет на канале и найти тв программу на сегодня, на завтра и на неделю.",
        imageUrl: "https://assets-iptv2022.cdnvideo.ru/static/channel/3/logo_256_1683697968.png",
        assessment:  3.5, 
        tags: [Tag(id: 1, name: "Федеральный")],
        urls: ["https://limehd.tv/channel/5kanal"]
    );
    return const Scaffold(
      body: SingleChildScrollView(
        child: WidthWrapper(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ChannelDetailsWidget(channelDetails:channelDetails)
          )
        )
      )
    );
  }
}
