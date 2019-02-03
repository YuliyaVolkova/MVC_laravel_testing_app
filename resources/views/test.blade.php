<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'App для тестирования пользователей') }}</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('css/rs-menu-form.css') }}" rel="stylesheet">

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>
    </head>
    <body>
        <header class="rs-17">
            <div class="rs-menu-form">
                <div data-spy="affix">
                    <nav class="navbar">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#menu-form" aria-expanded="false">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse pull-left" id="menu-form">
                                @if($questions->isNotEmpty())
                                    <button class="btn btn-large btn-block btn-primary btn_start" id="butStartTest">
                                        Начать тестирование
                                    </button>
                                @else
                                    <p class="text-warning title-warn">В базе данных нет вопросов к данному тесту</p>
                                @endif
                            </div>
                            <div class="pull-right hidden-xs hidden-sm">
                                <ul class="header-right">
                                    <li><a href="{{route('result.index')}}" class="btn btn-large btn-info">Страница результатов</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="flex-center position-ref full-height" id="titleContainer">
            <div class="content">
                <div class="title btn_wrap">
                    <h2 class="muted">Приложение для тестирования пользователей</h2>
                </div>
            </div>
        </div>
        <div class="container" id="questionsContainer">
            <div class="row-fluid test-container">
                <div class="span10 offset-2">
                    <h3>Тест начался. Выберите правильные ответы (на некоторые вопросы правильных ответов может быть несколько), и нажмите кнопку "Готово".</h3>
                    @if($questions->isNotEmpty())
                        <form method="POST" id="testCreate" action="{{route('test.store')}}" aria-label="{{__('TestController') }}">
                            @csrf
                            <input type="hidden" id = "startTime" name="start_time" value="">
                            <input type="hidden" id = "finishTime" name="finish_time" value="">
                            <ul class="test_list">
                            @foreach ($questions as  $key => $item)
                                <li>
                                    <h4>{{$item->num}}. {{$item->text}}</h4>
                                    @if(count($item->answers))
                                        @foreach($item->answers as $answer)
                                            <label class="checkbox">
                                                <input type="checkbox" name="answered[]" value="{{$answer->id}}">
                                                    {{$answer->text}}
                                            </label>
                                        @endforeach
                                    @endif
                                </li>
                            @endforeach
                            </ul>
                            <div class="row test-submit-wr">
                                <button class="btn btn-large btn-block btn-primary test-submit-btn" id="butSubmitTest" type="submit">
                                    Готово
                                </button>
                            </div>
                        </form>
                    @endif

                </div>
            </div>
        </div>
        <script src="{{ asset('js/jquery-3.2.1.min.js') }}" defer></script>
        <script src="{{ asset('js/test.js') }}" defer></script>
    </body>
</html>
