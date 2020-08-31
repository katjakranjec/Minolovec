%rebase('base.tpl', title='Vislice')

<h2> Statistika preteklih iger </h2>

<table>
<tr>
    <td>
       Število dosedanjih iger:
    </td>
    <td>
        {{slovar_statistik["stevilo_iger"]}}
    </td>
</tr>
<tr>
    <td>
        Odstotek nedokončanih iger:
    </td>
    <td>
        {{slovar_statistik["odstotek_nedokoncanih_iger"]}}
    </td>
</tr>
<tr>
    <td>
        Odstotek zmag:
    </td>
    <td>
        {{slovar_statistik["odstotek_zmag"]}}
    </td>
</tr>
<tr>
    <td>
        Odstotek porazov:
    </td>
    <td>
        {{slovar_statistik["odstotek_porazov"]}}
    </td>
</tr>
</table>

<form action="/izbira_tezavnosti/" method="post">
    <button type="submit">Nova igra</button>
  </form>