<?php

function sg($x) {
	if ($x == 0) {
		return 0;
	} else {
		return 1;
	}
}

function cosg($x) {
	return !sg($x);
}

function lt($x,$y) {
	return sg(monus($y,$x));
}

function gt($x,$y) {
	return sg(monus($x,$y));
}

function eq($x,$y) {
	return cosg(monus($x,$y)+monus($y,$x));
}

function ne($x,$y) {
	return cosg(eq($x,$y));
}

function monus($x,$y) {
	if ($x>$y) {
		return $x-$y;
	} else {
		return 0;
	}
}

function succ($n) {
	return $n+1;
}

function fac($n) {
	return $n*pred($n); 
}

function pred($n) {
	if ($n == 0) return 0;
	return $n-1;
}

function half($n) {
	
}

if (isset($_POST) && sizeof($_POST)>0) {
	switch($_POST['aufgabe']) {
		// Übungsaufgabe 1 (Blatt 3)
		/**

		
		**/
		case "ua_eins_blatt_drei":
			$m = $_POST['m'];
			$x = $_POST['x'];
			$y = $_POST['y'];
			echo "Ergebnis: ";
			echo sg($m)*($x+$m)+cosg($m)*(cosg(monus($x,$y))*$y+sg(monus($x,$y))*5);
		break;
		// Aufgabe 4 (Blatt 2)
		/**
	
		half(n) = (n/2 [falls n gerade])
		half(n) = ([n-1/2] sonst)

		**/
		case "a_vier_blatt_zwei":
			$n = $_POST['n'];

		break;
	}

}

?>
<h1>Übungsaufgabe 1 - Blatt 3</h1>
<form id="uebungsaufgabe_eins" method="post" action="pr.php">
	<input type="hidden" name="aufgabe" value="ua_eins_blatt_drei" />
	<input type="text" name="m" placeholder="m" />
	<input type="text" name="x" placeholder="x" />
	<input type="text" name="y" placeholder="y" />
	<input type="submit" value="Berechnen" />
</form>

<h1>Aufgabe 4 - Blatt 2 ( half </h1>
<form id="" method="post" action="pr.php">
	<input type="hidden" name="aufgabe" value="a_vier_blatt_zwei" />
	<input type="text" name="n" placeholder="n" />
	<input type="submit" value="Berechnen" />
</form>


<h1>Erläuterungen</h1>
<table cellpadding="5" cellspacing="5">
	<tr>
		<td>sign</td>
		<td>sg(x)</td>
		<td>sg(0) = 0</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>sg(y+1) = 1</td>
	</tr>
	<tr>
		<td>sign-Komplement</td>
		<td>cosg(x)</td>
		<td>cosg(0) = 1</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>cosg(y+1) = 0</td>
	</tr>
	<tr>
		<td>Kleiner als</td>
		<td>lt(x,y)</td>
		<td>sg(y - monus - x)</td>
	</tr>
	<tr>
		<td>Größer als</td>
		<td>gt(x,y)</td>
		<td>sg(x - monus - y)</td>
	</tr>		
	<tr>
		<td>Gleich</td>
		<td>eq(x,y)</td>
		<td>cosg((x - monus - y) + (y - monus - x))</td>
	</tr>
	<tr>
		<td>Ungleich</td>
		<td>ne(x,y)</td>
		<td>cosg(eq(x,y))</td>
	</tr>
	<tr>
		<td>Monus</td>
		<td>monus(n,m) = n - monus - m</td>
		<td>(n-m [falls n > m] ODER 0 sonst)</td>
	</tr>	
</table>	