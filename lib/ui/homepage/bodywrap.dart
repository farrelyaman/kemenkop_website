import 'package:flutter/material.dart';
import 'package:news_app/data_struc.dart';
import 'body.dart';

class BodyWrapper extends StatefulWidget{
  final int choiceIndex;

  BodyWrapper({Key key, this.choiceIndex}): super(key: key);
  _BodyWrapperState createState()=> _BodyWrapperState();
}

class _BodyWrapperState extends State<BodyWrapper>{
  //Preparing News Data
  final newsList = List<ArticleData>.generate(11, 
    (index) => ArticleData(
      'Lorem Ipsum '+(index+1).toString()+'A', '12 Desember 2020', 'images/news-content-img/'+(index+1).toString()+'a.jpg', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed leo libero. Vivamus pulvinar mauris varius ante fringilla, a sollicitudin risus placerat. Duis tempus augue tellus, eu euismod nisi vestibulum quis. Nunc interdum eget nisi sed lobortis. Ut fermentum lacus eu rutrum vulputate. Nunc eget nunc non lacus interdum vehicula. Integer aliquam orci libero, at porta tortor euismod at. Suspendisse non interdum enim, quis efficitur diam. Ut ultricies, massa et eleifend mattis, est nisl suscipit purus, id facilisis nisl orci eget mauris. Sed blandit urna vel sapien cursus accumsan. Aliquam aliquet imperdiet velit, eget sollicitudin dui. Phasellus in semper tellus. In mollis turpis in lacus facilisis egestas. Nam finibus tellus ac arcu scelerisque, eget blandit justo tincidunt. Vivamus egestas sagittis nulla, nec facilisis enim ornare id.\n'
      + '\nVestibulum varius, lacus eu pharetra feugiat, mauris massa viverra metus, a dictum ligula nulla eget nulla. Cras efficitur risus non dui aliquam, id lacinia neque mollis. Donec felis nibh, ullamcorper eget neque ut, dapibus dictum lacus. Maecenas feugiat neque vel velit suscipit, non tristique lacus facilisis. Praesent in maximus ipsum, dignissim rutrum ante. Quisque convallis in leo at pulvinar. Aliquam sagittis nisi at lacus fringilla porta ac eu ipsum. Vivamus vehicula nulla nec nunc ornare facilisis quis sit amet neque. Morbi ligula odio, venenatis sed finibus quis, vestibulum imperdiet libero. Curabitur ultricies varius egestas. Sed orci elit, iaculis a ipsum nec, pharetra posuere ipsum. Ut varius urna nibh, in lacinia purus vulputate at. Curabitur eu mattis ante.\n'
      + '\nPellentesque ac lectus ullamcorper augue faucibus sodales sed ac odio. Quisque malesuada leo nec volutpat pellentesque. Suspendisse scelerisque libero vitae elit lacinia consectetur. Cras eu diam urna. Ut rhoncus velit quis tristique imperdiet. Aliquam erat volutpat. Nunc egestas ornare est non rhoncus. Fusce nunc est, ullamcorper vitae metus sed, malesuada elementum augue. Cras finibus aliquet lectus, eget rhoncus sem. Sed dictum ex sed tortor pharetra, sed laoreet erat tempus.\n' 
    )
  );
  final announceList = List<ArticleData>.generate(11,
    (index) => ArticleData(
      'Lorem Ipsum '+(index+1).toString()+'B', '12 Desember 2020', 'images/news-content-img/'+(index+1).toString()+'b.jpg', '\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed leo libero. Vivamus pulvinar mauris varius ante fringilla, a sollicitudin risus placerat. Duis tempus augue tellus, eu euismod nisi vestibulum quis. Nunc interdum eget nisi sed lobortis. Ut fermentum lacus eu rutrum vulputate. Nunc eget nunc non lacus interdum vehicula. Integer aliquam orci libero, at porta tortor euismod at. Suspendisse non interdum enim, quis efficitur diam. Ut ultricies, massa et eleifend mattis, est nisl suscipit purus, id facilisis nisl orci eget mauris. Sed blandit urna vel sapien cursus accumsan. Aliquam aliquet imperdiet velit, eget sollicitudin dui. Phasellus in semper tellus. In mollis turpis in lacus facilisis egestas. Nam finibus tellus ac arcu scelerisque, eget blandit justo tincidunt. Vivamus egestas sagittis nulla, nec facilisis enim ornare id.\n'
      + '\nVestibulum varius, lacus eu pharetra feugiat, mauris massa viverra metus, a dictum ligula nulla eget nulla. Cras efficitur risus non dui aliquam, id lacinia neque mollis. Donec felis nibh, ullamcorper eget neque ut, dapibus dictum lacus. Maecenas feugiat neque vel velit suscipit, non tristique lacus facilisis. Praesent in maximus ipsum, dignissim rutrum ante. Quisque convallis in leo at pulvinar. Aliquam sagittis nisi at lacus fringilla porta ac eu ipsum. Vivamus vehicula nulla nec nunc ornare facilisis quis sit amet neque. Morbi ligula odio, venenatis sed finibus quis, vestibulum imperdiet libero. Curabitur ultricies varius egestas. Sed orci elit, iaculis a ipsum nec, pharetra posuere ipsum. Ut varius urna nibh, in lacinia purus vulputate at. Curabitur eu mattis ante.\n'
      + '\nPellentesque ac lectus ullamcorper augue faucibus sodales sed ac odio. Quisque malesuada leo nec volutpat pellentesque. Suspendisse scelerisque libero vitae elit lacinia consectetur. Cras eu diam urna. Ut rhoncus velit quis tristique imperdiet. Aliquam erat volutpat. Nunc egestas ornare est non rhoncus. Fusce nunc est, ullamcorper vitae metus sed, malesuada elementum augue. Cras finibus aliquet lectus, eget rhoncus sem. Sed dictum ex sed tortor pharetra, sed laoreet erat tempus.\n' 
    )
  );
  
  
  @override
  Widget build(BuildContext context) {
    setState((){
      if(widget.choiceIndex == 0){
        ArticleList.of(context).articles.collections = newsList;
      } else {
        ArticleList.of(context).articles.collections = announceList;
      }
    });

    return Container(
      color: Color(0x1A000000),
      child: HomeBody()
    );
  }
}