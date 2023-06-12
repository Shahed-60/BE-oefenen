<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Examinator</title>
</head>

<body>
    <u> <?= $data['title']; ?></u>

    <table>
        <thead>
            <th>Naam Examinator</th>
            <th>Datum Examen</th>
            <th>Rijbewijscategorie</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag examen</th>
        </thead>
        <tbody>
            <?= $data['tableRows']; ?>
        </tbody>
    </table>
</body>

</html>