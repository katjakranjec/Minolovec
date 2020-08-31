% rebase('base.tpl')

    <form action="/nova_igra/" method="post">
    <label for="tezavnost">Izberi težavnost:</label>
            <p>
            <select id="tezavnost" name="tezavnost">
                <option value="l">Lahka</option>
                <option value="s">Srednja</option>
                <option value="t">Težka</option>
            </select>
            </p>
            <input type="submit" value="Izberi">
    </form>