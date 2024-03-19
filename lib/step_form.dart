import 'package:flutter/material.dart';

import './page_indicator.dart';

import './page_body.dart';

class StepForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }
}

class _StepFormState extends State<StepForm> {
  final _stepFormController = PageController();
  int _page = 0;

  final List _pagesList = [
    pageBody(
      'https://uploaddeimagens.com.br/images/004/757/928/original/Instagram_story_-_2_resized.png?1710807800',
      '4 Meses',
      'Ellie Athie dos Santos Magalhães',
    ),
    pageBody(
      'https://uploaddeimagens.com.br/images/004/757/929/original/Instagram_story_-_5_resized.png?1710807900',
      '6 Meses',
      'Ellie Athie dos Santos Magalhães',
    ),
    pageBody(
      'https://uploaddeimagens.com.br/images/004/757/930/original/Instagram_story_-_7_resized.png?1710807965',
      '6 Meses',
      'Ellie Athie dos Santos Magalhães',
    )
  ];

  void _changeStep(bool nextPage) {
    if (_page < 2 && nextPage) {
      setState(() {
        _page++;
      });
      _stepFormController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      _stepFormController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step App Page'),
      ),
      body: PageView.builder(
          controller: _stepFormController,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return _pagesList[index];
          }),
      bottomNavigationBar:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextButton(
          onPressed: () => _changeStep(false),
          child: Text('Anterior'),
        ),
        pageIndicator(_page == 0),
        pageIndicator(_page == 1),
        pageIndicator(_page == 2),
        TextButton(
          onPressed: () => _changeStep(true),
          child: Text('Próximo'),
        )
      ]),
    );
  }
}
