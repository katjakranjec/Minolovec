% import model
%rebase('base.tpl', title='Minolovec')



% if stanje == "ZMAGA":



<table>
    <tr>
        <th>
        </th>
        <th>
            <h2>0</h2>
        </th>
        <th>
            <h2>1</h2>
        </th>
        <th>
            <h2>2</h2>
        </th>
        <th>
            <h2>3</h2>
        </th>
        <th>
            <h2>4</h2>
        </th>
        <th>
            <h2>5</h2>
        </th>
        <th>
            <h2>6</h2>
        </th>
    </tr>
    <tr>
        <th>
            <h2>0</h2>
        </th>
        <td>
            <h2>{{igra.resitev[0][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
        <h2>1</h2>
        </th>
        <td>
            <h2>{{igra.resitev[1][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>2</h2>
        </th>
        <td>
            <h2>{{igra.resitev[2][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>3</h2>
        </th>
        <td>
            <h2>{{igra.resitev[3][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>4</h2>
        </th>
        <td>
            <h2>{{igra.resitev[4][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>5</h2>
        </th>
        <td>
            <h2>{{igra.resitev[5][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>6</h2>
        </th>
        <td>
            <h2>{{igra.resitev[6][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][6]}}</h2>
        </td>
    </tr>
    </table>

<h1>ZMAGA 😀</h1>

<form action="/izbira_tezavnosti/" method="post">
    <button type="submit">Nova igra</button>
</form>
<br>
<form action="/statistika/" method="get">
    <button type="submit">Ogled statistike preteklih iger</button>
</form>

% elif stanje == "PORAZ":



<table>
    <tr>
        <th>
        </th>
        <th>
            <h2>0</h2>
        </th>
        <th>
            <h2>1</h2>
        </th>
        <th>
            <h2>2</h2>
        </th>
        <th>
            <h2>3</h2>
        </th>
        <th>
            <h2>4</h2>
        </th>
        <th>
            <h2>5</h2>
        </th>
        <th>
            <h2>6</h2>
        </th>
    </tr>
    <tr>
        <th>
            <h2>0</h2>
        </th>
        <td>
            <h2>{{igra.resitev[0][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[0][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
        <h2>1</h2>
        </th>
        <td>
            <h2>{{igra.resitev[1][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[1][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>2</h2>
        </th>
        <td>
            <h2>{{igra.resitev[2][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[2][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>3</h2>
        </th>
        <td>
            <h2>{{igra.resitev[3][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[3][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>4</h2>
        </th>
        <td>
            <h2>{{igra.resitev[4][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[4][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>5</h2>
        </th>
        <td>
            <h2>{{igra.resitev[5][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[5][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>6</h2>
        </th>
        <td>
            <h2>{{igra.resitev[6][0]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][1]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][2]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][3]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][4]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][5]}}</h2>
        </td>
        <td>
            <h2>{{igra.resitev[6][6]}}</h2>
        </td>
    </tr>
    </table>

<h1>PORAZ 🙁</h1>

<form action="/izbira_tezavnosti/" method="post">
    <button type="submit">Nova igra</button>
</form>
<br>
<form action="/statistika/" method="get">
    <button type="submit">Ogled statistike preteklih iger</button>
</form>

% elif stanje == "NAPAKA":

<table>
    <tr>
        <th>
        </th>
        <th>
            <h2>0</h2>
        </th>
        <th>
            <h2>1</h2>
        </th>
        <th>
            <h2>2</h2>
        </th>
        <th>
            <h2>3</h2>
        </th>
        <th>
            <h2>4</h2>
        </th>
        <th>
            <h2>5</h2>
        </th>
        <th>
            <h2>6</h2>
        </th>
    </tr>
    <tr>
        <th>
            <h2>0</h2>
        </th>
        <td>
            <h2>{{polje[0][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
        <h2>1</h2>
        </th>
        <td>
            <h2>{{polje[1][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>2</h2>
        </th>
        <td>
            <h2>{{polje[2][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>3</h2>
        </th>
        <td>
            <h2>{{polje[3][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>4</h2>
        </th>
        <td>
            <h2>{{polje[4][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>5</h2>
        </th>
        <td>
            <h2>{{polje[5][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>6</h2>
        </th>
        <td>
            <h2>{{polje[6][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][6]}}</h2>
        </td>
    </tr>
    </table>
<h2>Napaka pri vnosu</h2>
<form action="/igra/" method="post">
    Poteza: <input type="text" name="poteza" autofocus>
    <button type="submit">Pošlji potezo</button>
</form>

% else:

<table>
    <tr>
        <th>
        </th>
        <th>
            <h2>0</h2>
        </th>
        <th>
            <h2>1</h2>
        </th>
        <th>
            <h2>2</h2>
        </th>
        <th>
            <h2>3</h2>
        </th>
        <th>
            <h2>4</h2>
        </th>
        <th>
            <h2>5</h2>
        </th>
        <th>
            <h2>6</h2>
        </th>
    </tr>
    <tr>
        <th>
            <h2>0</h2>
        </th>
        <td>
            <h2>{{polje[0][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[0][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
        <h2>1</h2>
        </th>
        <td>
            <h2>{{polje[1][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[1][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>2</h2>
        </th>
        <td>
            <h2>{{polje[2][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[2][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>3</h2>
        </th>
        <td>
            <h2>{{polje[3][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[3][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>4</h2>
        </th>
        <td>
            <h2>{{polje[4][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[4][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>5</h2>
        </th>
        <td>
            <h2>{{polje[5][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[5][6]}}</h2>
        </td>
    </tr>
    <tr>
        <th>
            <h2>6</h2>
        </th>
        <td>
            <h2>{{polje[6][0]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][1]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][2]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][3]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][4]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][5]}}</h2>
        </td>
        <td>
            <h2>{{polje[6][6]}}</h2>
        </td>
    </tr>
    </table>
<br>
<form action="/igra/" method="post">
    Poteza: <input type="text" name="poteza" autofocus>
    <button type="submit">Pošlji potezo</button>
</form>

%end