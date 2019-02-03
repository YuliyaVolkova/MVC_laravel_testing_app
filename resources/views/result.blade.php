<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'App для тестирования пользователей') }}</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/result-page.css') }}" rel="stylesheet">

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
</head>
<body>
    <div class="container">
        <h1>Результаты тестирования</h1>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>№ теста</th>
                    <th>Дата проведения</th>
                    <th>Выполнено за (мин.)</th>
                    <th>Верно</th>
                    <th>Ошибки</th>
                    <th>Ошибки в вопросах</th>
                </tr>
            </thead>
            <tbody>
                <?php $counter = 1; ?>
                @if($results->isNotEmpty())
                    @foreach($results as $item)
                        @if($item->wrong_answers === null)
                        <tr class="info">
                            <td>{{$counter++}}</td>
                             <td>{{$item->start_time}}</td>
                             <td>{{$item->duration}}</td>
                             <td>
                                <span>{{$totalQ}} из {{$totalQ}}</span>
                             </td>
                             <td>
                                 <span>----</span>
                             </td>
                             <td>
                                 <span>----</span>
                             </td>
                        </tr>
                        @else
                        <?php $arr = $item->wrong_answers;
                            asort($arr); ?>
                        <tr>
                            <td>{{$counter++}}</td>
                            <td>{{$item->start_time}}</td>
                            <td>{{$item->duration}}</td>
                            <td>
                                <span>{{$totalQ - count($item->wrong_answers)}} из {{$totalQ}}</span>
                            </td>
                            <td>
                                <span>{{count($item->wrong_answers)}} из {{$totalQ}}</span>
                            </td>
                            <td>
                                @foreach($arr as $val)
                                    <span class="err-num">{{ $val }}</span>
                                @endforeach
                            </td>
                        @endif
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
    </div>
</body>
</html>
